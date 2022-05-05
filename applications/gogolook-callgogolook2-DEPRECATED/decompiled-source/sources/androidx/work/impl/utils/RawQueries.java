package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.sqlite.p008db.SimpleSQLiteQuery;
import androidx.sqlite.p008db.SupportSQLiteQuery;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.model.WorkTypeConverters;
import com.facebook.ads.ExtraHints;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/RawQueries.class */
public final class RawQueries {
    public static void bindings(@NonNull StringBuilder sb, int i) {
        if (i > 0) {
            sb.append("?");
            for (int i2 = 1; i2 < i; i2++) {
                sb.append(",");
                sb.append("?");
            }
        }
    }

    @NonNull
    public static SupportSQLiteQuery workQueryToRawQuery(@NonNull WorkQuery workQuery) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder("SELECT * FROM workspec");
        List<WorkInfo.State> states = workQuery.getStates();
        r11 = " AND";
        String str = " WHERE";
        if (!states.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(states.size());
            for (WorkInfo.State state : states) {
                arrayList2.add(Integer.valueOf(WorkTypeConverters.stateToInt(state)));
            }
            sb.append(" WHERE");
            sb.append(" state IN (");
            bindings(sb, arrayList2.size());
            sb.append(")");
            arrayList.addAll(arrayList2);
            str = " AND";
        }
        List<String> tags = workQuery.getTags();
        if (!tags.isEmpty()) {
            sb.append(str);
            sb.append(" id IN (SELECT work_spec_id FROM worktag WHERE tag IN (");
            bindings(sb, tags.size());
            sb.append("))");
            arrayList.addAll(tags);
        }
        List<String> uniqueWorkNames = workQuery.getUniqueWorkNames();
        if (!uniqueWorkNames.isEmpty()) {
            sb.append(str);
            sb.append(" id IN (SELECT work_spec_id FROM workname WHERE name IN (");
            bindings(sb, uniqueWorkNames.size());
            sb.append("))");
            arrayList.addAll(uniqueWorkNames);
        }
        sb.append(ExtraHints.KEYWORD_SEPARATOR);
        return new SimpleSQLiteQuery(sb.toString(), arrayList.toArray());
    }
}
