package com.j256.ormlite.stmt.query;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.p017db.DatabaseType;
import com.j256.ormlite.stmt.ArgumentHolder;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.j256.ormlite.stmt.query.In */
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/stmt/query/In.class */
public class C1821In extends BaseComparison {

    /* renamed from: in */
    private final boolean f328in;
    private Iterable<?> objects;

    public C1821In(String str, FieldType fieldType, Iterable<?> iterable, boolean z) throws SQLException {
        super(str, fieldType, null, true);
        this.objects = iterable;
        this.f328in = z;
    }

    public C1821In(String str, FieldType fieldType, Object[] objArr, boolean z) throws SQLException {
        super(str, fieldType, null, true);
        this.objects = Arrays.asList(objArr);
        this.f328in = z;
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendOperation(StringBuilder sb) {
        if (this.f328in) {
            sb.append("IN ");
        } else {
            sb.append("NOT IN ");
        }
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Clause
    public /* bridge */ /* synthetic */ void appendSql(DatabaseType databaseType, String str, StringBuilder sb, List list, Clause clause) throws SQLException {
        super.appendSql(databaseType, str, sb, list, clause);
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public void appendValue(DatabaseType databaseType, StringBuilder sb, List<ArgumentHolder> list) throws SQLException {
        boolean z;
        sb.append('(');
        boolean z2 = true;
        for (Object obj : this.objects) {
            if (obj == null) {
                throw new IllegalArgumentException("one of the IN values for '" + this.columnName + "' is null");
            }
            if (z2) {
                z = false;
            } else {
                sb.append(", ");
                z = z2;
            }
            super.appendArgOrValue(databaseType, this.fieldType, sb, list, obj);
            int length = sb.length();
            z2 = z;
            if (length > 0) {
                int i = length - 1;
                z2 = z;
                if (sb.charAt(i) == ' ') {
                    sb.setLength(i);
                    z2 = z;
                }
            }
        }
        sb.append(") ");
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison, com.j256.ormlite.stmt.query.Comparison
    public /* bridge */ /* synthetic */ String getColumnName() {
        return super.getColumnName();
    }

    @Override // com.j256.ormlite.stmt.query.BaseComparison
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
