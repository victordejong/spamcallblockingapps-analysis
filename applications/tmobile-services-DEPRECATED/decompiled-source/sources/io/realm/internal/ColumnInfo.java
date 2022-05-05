package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo.class */
public abstract class ColumnInfo {

    /* renamed from: a */
    private final Map<String, ColumnDetails> f20086a;

    /* renamed from: b */
    private final Map<String, ColumnDetails> f20087b;

    /* renamed from: c */
    private final Map<String, String> f20088c;

    /* renamed from: d */
    private final boolean f20089d;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo$ColumnDetails.class */
    public static final class ColumnDetails {

        /* renamed from: a */
        public final long f20090a;

        /* renamed from: b */
        public final RealmFieldType f20091b;

        /* renamed from: c */
        public final String f20092c;

        private ColumnDetails(long j, RealmFieldType realmFieldType, @Nullable String str) {
            this.f20090a = j;
            this.f20091b = realmFieldType;
            this.f20092c = str;
        }

        ColumnDetails(Property property) {
            this(property.m2691c(), property.m2689e(), property.m2690d());
        }

        public String toString() {
            return "ColumnDetails[" + this.f20090a + ", " + this.f20091b + ", " + this.f20092c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ColumnInfo(int i) {
        this(i, true);
    }

    private ColumnInfo(int i, boolean z) {
        this.f20086a = new HashMap(i);
        this.f20087b = new HashMap(i);
        this.f20088c = new HashMap(i);
        this.f20089d = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ColumnInfo(@Nullable ColumnInfo columnInfo, boolean z) {
        this(columnInfo == null ? 0 : columnInfo.f20086a.size(), z);
        if (columnInfo != null) {
            this.f20086a.putAll(columnInfo.f20086a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final long m2833a(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property d = osObjectSchemaInfo.m2748d(str2);
        ColumnDetails columnDetails = new ColumnDetails(d);
        this.f20086a.put(str, columnDetails);
        this.f20087b.put(str2, columnDetails);
        this.f20088c.put(str, str2);
        return d.m2691c();
    }

    /* renamed from: b */
    protected abstract void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    /* renamed from: c */
    public void mo2832c(ColumnInfo columnInfo) {
        if (!this.f20089d) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        } else if (columnInfo != null) {
            this.f20086a.clear();
            this.f20086a.putAll(columnInfo.f20086a);
            this.f20087b.clear();
            this.f20087b.putAll(columnInfo.f20087b);
            this.f20088c.clear();
            this.f20088c.putAll(columnInfo.f20088c);
            mo2536b(columnInfo, this);
        } else {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        }
    }

    @Nullable
    /* renamed from: d */
    public ColumnDetails mo2831d(String str) {
        return this.f20086a.get(str);
    }

    /* renamed from: e */
    public long mo2830e(String str) {
        ColumnDetails columnDetails = this.f20086a.get(str);
        return columnDetails == null ? -1L : columnDetails.f20090a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnInfo[");
        sb.append("mutable=" + this.f20089d);
        sb.append(",");
        boolean z = false;
        if (this.f20086a != null) {
            sb.append("JavaFieldNames=[");
            boolean z2 = false;
            for (Map.Entry<String, ColumnDetails> entry : this.f20086a.entrySet()) {
                if (z2) {
                    sb.append(",");
                }
                sb.append(entry.getKey());
                sb.append("->");
                sb.append(entry.getValue());
                z2 = true;
            }
            sb.append("]");
        }
        if (this.f20087b != null) {
            sb.append(", InternalFieldNames=[");
            for (Map.Entry<String, ColumnDetails> entry2 : this.f20087b.entrySet()) {
                if (z) {
                    sb.append(",");
                }
                sb.append(entry2.getKey());
                sb.append("->");
                sb.append(entry2.getValue());
                z = true;
            }
            sb.append("]");
        }
        sb.append("]");
        return sb.toString();
    }
}
