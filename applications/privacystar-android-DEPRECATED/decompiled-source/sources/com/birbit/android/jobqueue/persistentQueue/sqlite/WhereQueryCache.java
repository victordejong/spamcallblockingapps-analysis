package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.support.p001v4.util.LruCache;
import com.birbit.android.jobqueue.Constraint;
import com.birbit.android.jobqueue.TagConstraint;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/WhereQueryCache.class */
class WhereQueryCache {
    private static final int BOOL_SIZE = 1;
    static final int DEADLINE_COLUMN_INDEX = 1;
    private static final int EXCLUDE_RUNNING = 20;
    private static final int GROUP_COUNT = 8;
    private static final int INT_LIMIT = 64;
    private static final int INT_SIZE = 6;
    private static final int JOB_COUNT = 14;
    private static final int TAG_COUNT = 2;
    private static final int TAG_TYPE = 0;
    private static final int TIME_LIMIT = 21;
    private final LruCache<Long, Where> queryCache = new LruCache<Long, Where>(15) { // from class: com.birbit.android.jobqueue.persistentQueue.sqlite.WhereQueryCache.1
        /* JADX INFO: Access modifiers changed from: protected */
        public void entryRemoved(boolean z, Long l, Where where, Where where2) {
            where.destroy();
        }
    };
    private final String sessionId;

    public WhereQueryCache(long j) {
        this.sessionId = Long.toString(j);
    }

    private long cacheKey(Constraint constraint) {
        int ordinal = constraint.getTagConstraint() == null ? 2 : constraint.getTagConstraint().ordinal();
        int i = 0;
        int size = constraint.getTags().size();
        int size2 = constraint.getExcludeGroups().size();
        int size3 = constraint.getExcludeJobIds().size();
        boolean excludeRunning = constraint.excludeRunning();
        if (constraint.getTimeLimit() == null) {
            i = 1;
        }
        return (i << 21) | (ordinal << 0) | (size << 2) | (size2 << 8) | (size3 << 14) | ((excludeRunning ? 1 : 0) << 20);
    }

    private Where createWhere(long j, Constraint constraint, StringBuilder sb) {
        int i;
        sb.setLength(0);
        sb.append("( (");
        sb.append(DbOpenHelper.DEADLINE_COLUMN.columnName);
        sb.append(" != ");
        sb.append(Where.FOREVER);
        sb.append(" AND ");
        sb.append(DbOpenHelper.DEADLINE_COLUMN.columnName);
        sb.append(" <= ?) OR ");
        sb.append(DbOpenHelper.REQUIRED_NETWORK_TYPE_COLUMN.columnName);
        sb.append(" <= ?)");
        sb.append(" AND (");
        sb.append(DbOpenHelper.CANCELLED_COLUMN.columnName);
        sb.append(" IS NULL OR ");
        sb.append(DbOpenHelper.CANCELLED_COLUMN.columnName);
        sb.append(" != 1)");
        if (constraint.getTimeLimit() != null) {
            sb.append(" AND ");
            sb.append(DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnName);
            sb.append(" <= ?");
            i = 3;
        } else {
            i = 2;
        }
        int i2 = i;
        if (constraint.getTagConstraint() != null) {
            if (constraint.getTags().isEmpty()) {
                sb.append(" AND 0 ");
                i2 = i;
            } else {
                sb.append(" AND ");
                sb.append(DbOpenHelper.ID_COLUMN.columnName);
                sb.append(" IN ( SELECT ");
                sb.append(DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName);
                sb.append(" FROM ");
                sb.append("job_holder_tags");
                sb.append(" WHERE ");
                sb.append(DbOpenHelper.TAGS_NAME_COLUMN.columnName);
                sb.append(" IN (");
                SqlHelper.addPlaceholdersInto(sb, constraint.getTags().size());
                sb.append(")");
                if (constraint.getTagConstraint() == TagConstraint.ANY) {
                    sb.append(")");
                } else if (constraint.getTagConstraint() == TagConstraint.ALL) {
                    sb.append(" GROUP BY (`");
                    sb.append(DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName);
                    sb.append("`)");
                    sb.append(" HAVING count(*) = ");
                    sb.append(constraint.getTags().size());
                    sb.append(")");
                } else {
                    throw new IllegalArgumentException("unknown constraint " + constraint);
                }
                i2 = i + constraint.getTags().size();
            }
        }
        int i3 = i2;
        if (!constraint.getExcludeGroups().isEmpty()) {
            sb.append(" AND (");
            sb.append(DbOpenHelper.GROUP_ID_COLUMN.columnName);
            sb.append(" IS NULL OR ");
            sb.append(DbOpenHelper.GROUP_ID_COLUMN.columnName);
            sb.append(" NOT IN(");
            SqlHelper.addPlaceholdersInto(sb, constraint.getExcludeGroups().size());
            sb.append("))");
            i3 = i2 + constraint.getExcludeGroups().size();
        }
        int i4 = i3;
        if (!constraint.getExcludeJobIds().isEmpty()) {
            sb.append(" AND ");
            sb.append(DbOpenHelper.ID_COLUMN.columnName);
            sb.append(" NOT IN(");
            SqlHelper.addPlaceholdersInto(sb, constraint.getExcludeJobIds().size());
            sb.append(")");
            i4 = i3 + constraint.getExcludeJobIds().size();
        }
        int i5 = i4;
        if (constraint.excludeRunning()) {
            sb.append(" AND ");
            sb.append(DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnName);
            sb.append(" != ?");
            i5 = i4 + 1;
        }
        return new Where(j, sb.toString(), new String[i5]);
    }

    private void fillWhere(Constraint constraint, Where where) {
        where.args[0] = Long.toString(constraint.getNowInNs());
        where.args[1] = Integer.toString(constraint.getMaxNetworkType());
        int i = 2;
        if (constraint.getTimeLimit() != null) {
            where.args[2] = Long.toString(constraint.getTimeLimit().longValue());
            i = 3;
        }
        int i2 = i;
        if (constraint.getTagConstraint() != null) {
            Iterator<String> it = constraint.getTags().iterator();
            while (true) {
                i2 = i;
                if (!it.hasNext()) {
                    break;
                }
                where.args[i] = it.next();
                i++;
            }
        }
        for (String str : constraint.getExcludeGroups()) {
            where.args[i2] = str;
            i2++;
        }
        for (String str2 : constraint.getExcludeJobIds()) {
            where.args[i2] = str2;
            i2++;
        }
        if (constraint.excludeRunning()) {
            i2++;
            where.args[i2] = this.sessionId;
        }
        if (i2 != where.args.length) {
            throw new IllegalStateException("something is wrong with where query cache for " + where.query);
        }
    }

    private boolean isCacheable(Constraint constraint) {
        return constraint.getTags().size() < 64 && constraint.getExcludeGroups().size() < 64 && constraint.getExcludeJobIds().size() < 64;
    }

    public Where build(Constraint constraint, StringBuilder sb) {
        boolean isCacheable = isCacheable(constraint);
        long cacheKey = cacheKey(constraint);
        Where where = isCacheable ? this.queryCache.get(Long.valueOf(cacheKey)) : null;
        Where where2 = where;
        if (where == null) {
            Where createWhere = createWhere(cacheKey, constraint, sb);
            where2 = createWhere;
            if (isCacheable) {
                this.queryCache.put(Long.valueOf(cacheKey), createWhere);
                where2 = createWhere;
            }
        }
        fillWhere(constraint, where2);
        return where2;
    }
}
