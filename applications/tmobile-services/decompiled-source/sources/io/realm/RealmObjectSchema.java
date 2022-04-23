package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectStore;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmObjectSchema.class */
public abstract class RealmObjectSchema {

    /* renamed from: e */
    static final Map<Class<?>, FieldMetaData> f19944e;

    /* renamed from: f */
    static final Map<Class<?>, FieldMetaData> f19945f;

    /* renamed from: a */
    final RealmSchema f19946a;

    /* renamed from: b */
    final BaseRealm f19947b;

    /* renamed from: c */
    final Table f19948c;

    /* renamed from: d */
    private final ColumnInfo f19949d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmObjectSchema$DynamicColumnIndices.class */
    public static final class DynamicColumnIndices extends ColumnInfo {

        /* renamed from: e */
        private final Table f19950e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public DynamicColumnIndices(Table table) {
            super((ColumnInfo) null, false);
            this.f19950e = table;
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot copy");
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: c */
        public void mo2832c(ColumnInfo columnInfo) {
            throw new UnsupportedOperationException("DynamicColumnIndices cannot be copied");
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: d */
        public ColumnInfo.ColumnDetails mo2831d(String str) {
            throw new UnsupportedOperationException("DynamicColumnIndices do not support 'getColumnDetails'");
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: e */
        public long mo2830e(String str) {
            return this.f19950e.m2638o(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmObjectSchema$FieldMetaData.class */
    static final class FieldMetaData {

        /* renamed from: a */
        final RealmFieldType f19951a;

        /* renamed from: b */
        final boolean f19952b;

        FieldMetaData(RealmFieldType realmFieldType, @Nullable RealmFieldType realmFieldType2, boolean z) {
            this.f19951a = realmFieldType;
            this.f19952b = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmObjectSchema$Function.class */
    public interface Function {
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(String.class, new FieldMetaData(RealmFieldType.STRING, RealmFieldType.STRING_LIST, true));
        hashMap.put(Short.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Short.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Integer.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Integer.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Long.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Long.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(Float.TYPE, new FieldMetaData(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, false));
        hashMap.put(Float.class, new FieldMetaData(RealmFieldType.FLOAT, RealmFieldType.FLOAT_LIST, true));
        hashMap.put(Double.TYPE, new FieldMetaData(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, false));
        hashMap.put(Double.class, new FieldMetaData(RealmFieldType.DOUBLE, RealmFieldType.DOUBLE_LIST, true));
        hashMap.put(Boolean.TYPE, new FieldMetaData(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, false));
        hashMap.put(Boolean.class, new FieldMetaData(RealmFieldType.BOOLEAN, RealmFieldType.BOOLEAN_LIST, true));
        hashMap.put(Byte.TYPE, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, false));
        hashMap.put(Byte.class, new FieldMetaData(RealmFieldType.INTEGER, RealmFieldType.INTEGER_LIST, true));
        hashMap.put(byte[].class, new FieldMetaData(RealmFieldType.BINARY, RealmFieldType.BINARY_LIST, true));
        hashMap.put(Date.class, new FieldMetaData(RealmFieldType.DATE, RealmFieldType.DATE_LIST, true));
        f19944e = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(RealmObject.class, new FieldMetaData(RealmFieldType.OBJECT, null, false));
        hashMap2.put(RealmList.class, new FieldMetaData(RealmFieldType.LIST, null, false));
        f19945f = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table, ColumnInfo columnInfo) {
        this.f19946a = realmSchema;
        this.f19947b = baseRealm;
        this.f19948c = table;
        this.f19949d = columnInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m2936c(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Field name can not be null or empty");
        } else if (str.contains(".")) {
            throw new IllegalArgumentException("Field name can not contain '.'");
        } else if (str.length() > 63) {
            throw new IllegalArgumentException("Field name is currently limited to max 63 characters.");
        }
    }

    /* renamed from: a */
    public abstract RealmObjectSchema mo2938a(String str, Class<?> cls, FieldAttribute... fieldAttributeArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m2937b(String str) {
        if (this.f19948c.m2638o(str) == -1) {
            throw new IllegalArgumentException("Field name doesn't exist on object '" + m2934e() + "': " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public long m2935d(String str) {
        long e = this.f19949d.mo2830e(str);
        if (e >= 0) {
            return e;
        }
        throw new IllegalArgumentException("Field does not exist: " + str);
    }

    /* renamed from: e */
    public String m2934e() {
        return this.f19948c.m2641l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public long m2933f(String str) {
        long o = this.f19948c.m2638o(str);
        if (o != -1) {
            return o;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field name '%s' does not exist on schema for '%s'", str, m2934e()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public abstract FieldDescriptor mo2932g(String str, RealmFieldType... realmFieldTypeArr);

    /* renamed from: h */
    public RealmFieldType m2931h(String str) {
        return this.f19948c.m2635r(m2933f(str));
    }

    /* renamed from: i */
    public String m2930i() {
        String b = OsObjectStore.m2744b(this.f19947b.f19809j, m2934e());
        if (b != null) {
            return b;
        }
        throw new IllegalStateException(m2934e() + " doesn't have a primary key.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public final SchemaConnector m2929j() {
        return new SchemaConnector(this.f19946a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Table m2928k() {
        return this.f19948c;
    }

    /* renamed from: l */
    public boolean m2927l(String str) {
        return this.f19948c.m2638o(str) != -1;
    }

    /* renamed from: m */
    public boolean m2926m() {
        return OsObjectStore.m2744b(this.f19947b.f19809j, m2934e()) != null;
    }

    /* renamed from: n */
    public boolean m2925n(String str) {
        return !this.f19948c.m2669A(m2933f(str));
    }

    /* renamed from: o */
    public abstract RealmObjectSchema mo2924o(String str);

    /* renamed from: p */
    public abstract RealmObjectSchema mo2923p(String str, boolean z);
}
