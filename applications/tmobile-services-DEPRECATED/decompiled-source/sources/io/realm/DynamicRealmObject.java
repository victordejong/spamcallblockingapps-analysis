package io.realm;

import io.realm.internal.CheckedRow;
import io.realm.internal.OsList;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.android.JsonUtils;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealmObject.class */
public class DynamicRealmObject extends RealmObject implements RealmObjectProxy {
    static final String MSG_LINK_QUERY_NOT_SUPPORTED = "Queries across relationships are not supported";
    private final ProxyState<DynamicRealmObject> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.DynamicRealmObject$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealmObject$1.class */
    public static /* synthetic */ class C21371 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19830a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            f19830a = iArr;
            try {
                iArr[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19830a[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19830a[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19830a[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19830a[RealmFieldType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19830a[RealmFieldType.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19830a[RealmFieldType.DATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19830a[RealmFieldType.OBJECT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19830a[RealmFieldType.LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19830a[RealmFieldType.LINKING_OBJECTS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f19830a[RealmFieldType.INTEGER_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f19830a[RealmFieldType.BOOLEAN_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f19830a[RealmFieldType.STRING_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f19830a[RealmFieldType.BINARY_LIST.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f19830a[RealmFieldType.DATE_LIST.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f19830a[RealmFieldType.FLOAT_LIST.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f19830a[RealmFieldType.DOUBLE_LIST.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DynamicRealmObject(BaseRealm baseRealm, Row row) {
        ProxyState<DynamicRealmObject> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        proxyState.m3073p(baseRealm);
        this.proxyState.m3072q(row);
        this.proxyState.m3075n();
    }

    public DynamicRealmObject(RealmModel realmModel) {
        this.proxyState = new ProxyState<>(this);
        if (realmModel == null) {
            throw new IllegalArgumentException("A non-null object must be provided.");
        } else if (realmModel instanceof DynamicRealmObject) {
            throw new IllegalArgumentException("The object is already a DynamicRealmObject: " + realmModel);
        } else if (!RealmObject.isManaged(realmModel)) {
            throw new IllegalArgumentException("An object managed by Realm must be provided. This is an unmanaged object.");
        } else if (RealmObject.isValid(realmModel)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel;
            Row e = realmObjectProxy.realmGet$proxyState().m3084e();
            this.proxyState.m3073p(realmObjectProxy.realmGet$proxyState().m3085d());
            this.proxyState.m3072q(((UncheckedRow) e).m2602a());
            this.proxyState.m3075n();
        } else {
            throw new IllegalArgumentException("A valid object managed by Realm must be provided. This object was deleted.");
        }
    }

    private void checkFieldType(String str, long j, RealmFieldType realmFieldType) {
        RealmFieldType columnType = this.proxyState.m3084e().getColumnType(j);
        if (columnType != realmFieldType) {
            String str2 = (realmFieldType == RealmFieldType.INTEGER || realmFieldType == RealmFieldType.OBJECT) ? "n" : "";
            String str3 = "n";
            if (columnType != RealmFieldType.INTEGER) {
                str3 = columnType == RealmFieldType.OBJECT ? "n" : "";
            }
            throw new IllegalArgumentException(String.format(Locale.US, "'%s' is not a%s '%s', but a%s '%s'.", str, str2, realmFieldType, str3, columnType));
        }
    }

    private void checkIsPrimaryKey(String str) {
        RealmObjectSchema j = this.proxyState.m3085d().mo3059L().m2851j(getType());
        if (j.m2926m() && j.m2930i().equals(str)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Primary key field '%s' cannot be changed after object was created.", str));
        }
    }

    private <E> RealmFieldType classToRealmType(Class<E> cls) {
        if (cls.equals(Integer.class) || cls.equals(Long.class) || cls.equals(Short.class) || cls.equals(Byte.class)) {
            return RealmFieldType.INTEGER_LIST;
        }
        if (cls.equals(Boolean.class)) {
            return RealmFieldType.BOOLEAN_LIST;
        }
        if (cls.equals(String.class)) {
            return RealmFieldType.STRING_LIST;
        }
        if (cls.equals(byte[].class)) {
            return RealmFieldType.BINARY_LIST;
        }
        if (cls.equals(Date.class)) {
            return RealmFieldType.DATE_LIST;
        }
        if (cls.equals(Float.class)) {
            return RealmFieldType.FLOAT_LIST;
        }
        if (cls.equals(Double.class)) {
            return RealmFieldType.DOUBLE_LIST;
        }
        throw new IllegalArgumentException("Unsupported element type. Only primitive types supported. Yours was: " + cls);
    }

    private <E> ManagedListOperator<E> getOperator(BaseRealm baseRealm, OsList osList, RealmFieldType realmFieldType, Class<E> cls) {
        if (realmFieldType == RealmFieldType.STRING_LIST) {
            return new StringListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.INTEGER_LIST) {
            return new LongListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.BOOLEAN_LIST) {
            return new BooleanListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.BINARY_LIST) {
            return new BinaryListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.DOUBLE_LIST) {
            return new DoubleListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.FLOAT_LIST) {
            return new FloatListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.DATE_LIST) {
            return new DateListOperator(baseRealm, osList, cls);
        }
        throw new IllegalArgumentException("Unexpected list type: " + realmFieldType.name());
    }

    private void setModelList(String str, RealmList<DynamicRealmObject> realmList) {
        boolean z;
        OsList modelList = this.proxyState.m3084e().getModelList(this.proxyState.m3084e().getColumnKey(str));
        Table n = modelList.m2767n();
        String l = n.m2641l();
        if (realmList.f19934g == null && realmList.f19933f == null) {
            z = false;
        } else {
            String str2 = realmList.f19934g;
            if (str2 == null) {
                str2 = this.proxyState.m3085d().mo3059L().m2850k(realmList.f19933f).m2641l();
            }
            if (l.equals(str2)) {
                z = true;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "The elements in the list are not the proper type. Was %s expected %s.", str2, l));
            }
        }
        int size = realmList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            DynamicRealmObject dynamicRealmObject = realmList.get(i);
            if (dynamicRealmObject.realmGet$proxyState().m3085d() != this.proxyState.m3085d()) {
                throw new IllegalArgumentException("Each element in 'list' must belong to the same Realm instance.");
            } else if (z || n.m2628y(dynamicRealmObject.realmGet$proxyState().m3084e().getTable())) {
                jArr[i] = dynamicRealmObject.realmGet$proxyState().m3084e().getObjectKey();
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Element at index %d is not the proper type. Was '%s' expected '%s'.", Integer.valueOf(i), dynamicRealmObject.realmGet$proxyState().m3084e().getTable().m2641l(), l));
            }
        }
        modelList.m2793C();
        for (int i2 = 0; i2 < size; i2++) {
            modelList.m2771j(jArr[i2]);
        }
    }

    private void setValue(String str, Object obj) {
        Class<?> cls = obj.getClass();
        if (cls == Boolean.class) {
            setBoolean(str, ((Boolean) obj).booleanValue());
        } else if (cls == Short.class) {
            setShort(str, ((Short) obj).shortValue());
        } else if (cls == Integer.class) {
            setInt(str, ((Integer) obj).intValue());
        } else if (cls == Long.class) {
            setLong(str, ((Long) obj).longValue());
        } else if (cls == Byte.class) {
            setByte(str, ((Byte) obj).byteValue());
        } else if (cls == Float.class) {
            setFloat(str, ((Float) obj).floatValue());
        } else if (cls == Double.class) {
            setDouble(str, ((Double) obj).doubleValue());
        } else if (cls == String.class) {
            setString(str, (String) obj);
        } else if (obj instanceof Date) {
            setDate(str, (Date) obj);
        } else if (obj instanceof byte[]) {
            setBlob(str, (byte[]) obj);
        } else if (cls == DynamicRealmObject.class) {
            setObject(str, (DynamicRealmObject) obj);
        } else if (cls == RealmList.class) {
            setList(str, (RealmList) obj);
        } else {
            throw new IllegalArgumentException("Value is of an type not supported: " + obj.getClass());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E> void setValueList(String str, RealmList<E> realmList, RealmFieldType realmFieldType) {
        Object obj;
        OsList valueList = this.proxyState.m3084e().getValueList(this.proxyState.m3084e().getColumnKey(str), realmFieldType);
        switch (C21371.f19830a[realmFieldType.ordinal()]) {
            case 11:
                obj = Long.class;
                break;
            case 12:
                obj = Boolean.class;
                break;
            case 13:
                obj = String.class;
                break;
            case 14:
                obj = byte[].class;
                break;
            case 15:
                obj = Date.class;
                break;
            case 16:
                obj = Float.class;
                break;
            case 17:
                obj = Double.class;
                break;
            default:
                throw new IllegalArgumentException("Unsupported type: " + realmFieldType);
        }
        ManagedListOperator operator = getOperator(this.proxyState.m3085d(), valueList, realmFieldType, obj);
        if (!realmList.m2946y() || valueList.m2781O() != realmList.size()) {
            valueList.m2793C();
            Iterator<E> it = realmList.iterator();
            while (it.hasNext()) {
                operator.m3122a(it.next());
            }
            return;
        }
        int size = realmList.size();
        Iterator<E> it2 = realmList.iterator();
        for (int i = 0; i < size; i++) {
            operator.m3114o(i, it2.next());
        }
    }

    public boolean equals(Object obj) {
        this.proxyState.m3085d().m3151h();
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DynamicRealmObject.class != obj.getClass()) {
            return false;
        }
        DynamicRealmObject dynamicRealmObject = (DynamicRealmObject) obj;
        String K = this.proxyState.m3085d().m3163K();
        String K2 = dynamicRealmObject.proxyState.m3085d().m3163K();
        if (K != null) {
            if (!K.equals(K2)) {
                return false;
            }
        } else if (K2 != null) {
            return false;
        }
        String t = this.proxyState.m3084e().getTable().m2633t();
        String t2 = dynamicRealmObject.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        if (this.proxyState.m3084e().getObjectKey() != dynamicRealmObject.proxyState.m3084e().getObjectKey()) {
            z = false;
        }
        return z;
    }

    public <E> E get(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        if (this.proxyState.m3084e().isNull(columnKey)) {
            return null;
        }
        RealmFieldType columnType = this.proxyState.m3084e().getColumnType(columnKey);
        switch (C21371.f19830a[columnType.ordinal()]) {
            case 1:
                return (E) Boolean.valueOf(this.proxyState.m3084e().getBoolean(columnKey));
            case 2:
                return (E) Long.valueOf(this.proxyState.m3084e().getLong(columnKey));
            case 3:
                return (E) Float.valueOf(this.proxyState.m3084e().getFloat(columnKey));
            case 4:
                return (E) Double.valueOf(this.proxyState.m3084e().getDouble(columnKey));
            case 5:
                return (E) this.proxyState.m3084e().getString(columnKey);
            case 6:
                return (E) this.proxyState.m3084e().getBinaryByteArray(columnKey);
            case 7:
                return (E) this.proxyState.m3084e().getDate(columnKey);
            case 8:
                return (E) getObject(str);
            case 9:
                return (E) getList(str);
            default:
                throw new IllegalStateException("Field type not supported: " + columnType);
        }
    }

    public byte[] getBlob(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getBinaryByteArray(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.BINARY);
            throw e;
        }
    }

    public boolean getBoolean(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getBoolean(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.BOOLEAN);
            throw e;
        }
    }

    public byte getByte(String str) {
        return (byte) getLong(str);
    }

    public Date getDate(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.DATE);
        if (this.proxyState.m3084e().isNull(columnKey)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(columnKey);
    }

    public double getDouble(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getDouble(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.DOUBLE);
            throw e;
        }
    }

    public DynamicRealm getDynamicRealm() {
        BaseRealm d = realmGet$proxyState().m3085d();
        d.m3151h();
        if (isValid()) {
            return (DynamicRealm) d;
        }
        throw new IllegalStateException("the object is already deleted.");
    }

    public String[] getFieldNames() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getColumnNames();
    }

    public RealmFieldType getFieldType(String str) {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getColumnType(this.proxyState.m3084e().getColumnKey(str));
    }

    public float getFloat(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getFloat(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.FLOAT);
            throw e;
        }
    }

    public int getInt(String str) {
        return (int) getLong(str);
    }

    public RealmList<DynamicRealmObject> getList(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            OsList modelList = this.proxyState.m3084e().getModelList(columnKey);
            return new RealmList<>(modelList.m2767n().m2641l(), modelList, this.proxyState.m3085d());
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.LIST);
            throw e;
        }
    }

    public <E> RealmList<E> getList(String str, Class<E> cls) {
        this.proxyState.m3085d().m3151h();
        if (cls != null) {
            long columnKey = this.proxyState.m3084e().getColumnKey(str);
            RealmFieldType classToRealmType = classToRealmType(cls);
            try {
                return new RealmList<>(cls, this.proxyState.m3084e().getValueList(columnKey, classToRealmType), this.proxyState.m3085d());
            } catch (IllegalArgumentException e) {
                checkFieldType(str, columnKey, classToRealmType);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Non-null 'primitiveType' required.");
        }
    }

    public long getLong(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getLong(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.INTEGER);
            throw e;
        }
    }

    @Nullable
    public DynamicRealmObject getObject(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.OBJECT);
        if (this.proxyState.m3084e().isNullLink(columnKey)) {
            return null;
        }
        return new DynamicRealmObject(this.proxyState.m3085d(), this.proxyState.m3084e().getTable().m2634s(columnKey).m2642k(this.proxyState.m3084e().getLink(columnKey)));
    }

    public short getShort(String str) {
        return (short) getLong(str);
    }

    public String getString(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        try {
            return this.proxyState.m3084e().getString(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.STRING);
            throw e;
        }
    }

    public String getType() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getTable().m2641l();
    }

    public boolean hasField(String str) {
        this.proxyState.m3085d().m3151h();
        if (str == null || str.isEmpty()) {
            return false;
        }
        return this.proxyState.m3084e().hasColumn(str);
    }

    public int hashCode() {
        this.proxyState.m3085d().m3151h();
        String K = this.proxyState.m3085d().m3163K();
        String t = this.proxyState.m3084e().getTable().m2633t();
        long objectKey = this.proxyState.m3084e().getObjectKey();
        int i = 0;
        int hashCode = K != null ? K.hashCode() : 0;
        if (t != null) {
            i = t.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    public boolean isNull(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        switch (C21371.f19830a[this.proxyState.m3084e().getColumnType(columnKey).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return this.proxyState.m3084e().isNull(columnKey);
            case 8:
                return this.proxyState.m3084e().isNullLink(columnKey);
            default:
                return false;
        }
    }

    public RealmResults<DynamicRealmObject> linkingObjects(String str, String str2) {
        DynamicRealm dynamicRealm = (DynamicRealm) this.proxyState.m3085d();
        dynamicRealm.m3151h();
        this.proxyState.m3084e().checkIfAttached();
        RealmObjectSchema e = dynamicRealm.mo3059L().mo2856e(str);
        if (e == null) {
            throw new IllegalArgumentException("Class not found: " + str);
        } else if (str2 == null) {
            throw new IllegalArgumentException("Non-null 'srcFieldName' required.");
        } else if (!str2.contains(".")) {
            RealmFieldType h = e.m2931h(str2);
            if (h == RealmFieldType.OBJECT || h == RealmFieldType.LIST) {
                return RealmResults.m2862y(dynamicRealm, (CheckedRow) this.proxyState.m3084e(), e.m2928k(), str2);
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s.", h.name(), RealmFieldType.class.getSimpleName(), RealmFieldType.OBJECT.name(), RealmFieldType.LIST.name()));
        } else {
            throw new IllegalArgumentException(MSG_LINK_QUERY_NOT_SUPPORTED);
        }
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState realmGet$proxyState() {
        return this.proxyState;
    }

    public void set(String str, Object obj) {
        this.proxyState.m3085d().m3151h();
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        RealmFieldType columnType = this.proxyState.m3084e().getColumnType(this.proxyState.m3084e().getColumnKey(str));
        Object obj2 = obj;
        if (z) {
            obj2 = obj;
            if (columnType != RealmFieldType.STRING) {
                int i = C21371.f19830a[columnType.ordinal()];
                if (i == 1) {
                    obj2 = Boolean.valueOf(Boolean.parseBoolean(str2));
                } else if (i == 2) {
                    obj2 = Long.valueOf(Long.parseLong(str2));
                } else if (i == 3) {
                    obj2 = Float.valueOf(Float.parseFloat(str2));
                } else if (i == 4) {
                    obj2 = Double.valueOf(Double.parseDouble(str2));
                } else if (i == 7) {
                    obj2 = JsonUtils.m2586a(str2);
                } else {
                    throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", str, obj));
                }
            }
        }
        if (obj2 == null) {
            setNull(str);
        } else {
            setValue(str, obj2);
        }
    }

    public void setBlob(String str, @Nullable byte[] bArr) {
        this.proxyState.m3085d().m3151h();
        this.proxyState.m3084e().setBinaryByteArray(this.proxyState.m3084e().getColumnKey(str), bArr);
    }

    public void setBoolean(String str, boolean z) {
        this.proxyState.m3085d().m3151h();
        this.proxyState.m3084e().setBoolean(this.proxyState.m3084e().getColumnKey(str), z);
    }

    public void setByte(String str, byte b) {
        this.proxyState.m3085d().m3151h();
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setLong(this.proxyState.m3084e().getColumnKey(str), b);
    }

    public void setDate(String str, @Nullable Date date) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        if (date == null) {
            this.proxyState.m3084e().setNull(columnKey);
        } else {
            this.proxyState.m3084e().setDate(columnKey, date);
        }
    }

    public void setDouble(String str, double d) {
        this.proxyState.m3085d().m3151h();
        this.proxyState.m3084e().setDouble(this.proxyState.m3084e().getColumnKey(str), d);
    }

    public void setFloat(String str, float f) {
        this.proxyState.m3085d().m3151h();
        this.proxyState.m3084e().setFloat(this.proxyState.m3084e().getColumnKey(str), f);
    }

    public void setInt(String str, int i) {
        this.proxyState.m3085d().m3151h();
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setLong(this.proxyState.m3084e().getColumnKey(str), i);
    }

    public <E> void setList(String str, RealmList<E> realmList) {
        this.proxyState.m3085d().m3151h();
        if (realmList != null) {
            RealmFieldType columnType = this.proxyState.m3084e().getColumnType(this.proxyState.m3084e().getColumnKey(str));
            switch (C21371.f19830a[columnType.ordinal()]) {
                case 9:
                    if (!realmList.isEmpty()) {
                        E r = realmList.m2953r();
                        if (!(r instanceof DynamicRealmObject) && RealmModel.class.isAssignableFrom(r.getClass())) {
                            throw new IllegalArgumentException("RealmList must contain `DynamicRealmObject's, not Java model classes.");
                        }
                    }
                    setModelList(str, realmList);
                    return;
                case 10:
                default:
                    throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", str, columnType));
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                    setValueList(str, realmList, columnType);
                    return;
            }
        } else {
            throw new IllegalArgumentException("Non-null 'list' required");
        }
    }

    public void setLong(String str, long j) {
        this.proxyState.m3085d().m3151h();
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setLong(this.proxyState.m3084e().getColumnKey(str), j);
    }

    public void setNull(String str) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        if (this.proxyState.m3084e().getColumnType(columnKey) == RealmFieldType.OBJECT) {
            this.proxyState.m3084e().nullifyLink(columnKey);
            return;
        }
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setNull(columnKey);
    }

    public void setObject(String str, @Nullable DynamicRealmObject dynamicRealmObject) {
        this.proxyState.m3085d().m3151h();
        long columnKey = this.proxyState.m3084e().getColumnKey(str);
        if (dynamicRealmObject == null) {
            this.proxyState.m3084e().nullifyLink(columnKey);
        } else if (dynamicRealmObject.proxyState.m3085d() == null || dynamicRealmObject.proxyState.m3084e() == null) {
            throw new IllegalArgumentException("Cannot link to objects that are not part of the Realm.");
        } else if (this.proxyState.m3085d() == dynamicRealmObject.proxyState.m3085d()) {
            Table s = this.proxyState.m3084e().getTable().m2634s(columnKey);
            Table table = dynamicRealmObject.proxyState.m3084e().getTable();
            if (s.m2628y(table)) {
                this.proxyState.m3084e().setLink(columnKey, dynamicRealmObject.proxyState.m3084e().getObjectKey());
                return;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was %s, expected %s", table.m2633t(), s.m2633t()));
        } else {
            throw new IllegalArgumentException("Cannot add an object from another Realm instance.");
        }
    }

    public void setShort(String str, short s) {
        this.proxyState.m3085d().m3151h();
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setLong(this.proxyState.m3084e().getColumnKey(str), s);
    }

    public void setString(String str, @Nullable String str2) {
        this.proxyState.m3085d().m3151h();
        checkIsPrimaryKey(str);
        this.proxyState.m3084e().setString(this.proxyState.m3084e().getColumnKey(str), str2);
    }

    public String toString() {
        String[] fieldNames;
        this.proxyState.m3085d().m3151h();
        if (!this.proxyState.m3084e().isValid()) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder(this.proxyState.m3084e().getTable().m2641l() + " = dynamic[");
        for (String str : getFieldNames()) {
            long columnKey = this.proxyState.m3084e().getColumnKey(str);
            RealmFieldType columnType = this.proxyState.m3084e().getColumnType(columnKey);
            sb.append("{");
            sb.append(str);
            sb.append(":");
            Object obj = "null";
            switch (C21371.f19830a[columnType.ordinal()]) {
                case 1:
                    Object obj2 = obj;
                    if (!this.proxyState.m3084e().isNull(columnKey)) {
                        obj2 = Boolean.valueOf(this.proxyState.m3084e().getBoolean(columnKey));
                    }
                    sb.append(obj2);
                    break;
                case 2:
                    Object obj3 = obj;
                    if (!this.proxyState.m3084e().isNull(columnKey)) {
                        obj3 = Long.valueOf(this.proxyState.m3084e().getLong(columnKey));
                    }
                    sb.append(obj3);
                    break;
                case 3:
                    Object obj4 = obj;
                    if (!this.proxyState.m3084e().isNull(columnKey)) {
                        obj4 = Float.valueOf(this.proxyState.m3084e().getFloat(columnKey));
                    }
                    sb.append(obj4);
                    break;
                case 4:
                    Object obj5 = obj;
                    if (!this.proxyState.m3084e().isNull(columnKey)) {
                        obj5 = Double.valueOf(this.proxyState.m3084e().getDouble(columnKey));
                    }
                    sb.append(obj5);
                    break;
                case 5:
                    sb.append(this.proxyState.m3084e().getString(columnKey));
                    break;
                case 6:
                    sb.append(Arrays.toString(this.proxyState.m3084e().getBinaryByteArray(columnKey)));
                    break;
                case 7:
                    Date date = obj;
                    if (!this.proxyState.m3084e().isNull(columnKey)) {
                        date = this.proxyState.m3084e().getDate(columnKey);
                    }
                    sb.append((Object) date);
                    break;
                case 8:
                    String str2 = obj;
                    if (!this.proxyState.m3084e().isNullLink(columnKey)) {
                        str2 = this.proxyState.m3084e().getTable().m2634s(columnKey).m2641l();
                    }
                    sb.append(str2);
                    break;
                case 9:
                    sb.append(String.format(Locale.US, "RealmList<%s>[%s]", this.proxyState.m3084e().getTable().m2634s(columnKey).m2641l(), Long.valueOf(this.proxyState.m3084e().getModelList(columnKey).m2781O())));
                    break;
                case 10:
                default:
                    sb.append("?");
                    break;
                case 11:
                    sb.append(String.format(Locale.US, "RealmList<Long>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 12:
                    sb.append(String.format(Locale.US, "RealmList<Boolean>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 13:
                    sb.append(String.format(Locale.US, "RealmList<String>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 14:
                    sb.append(String.format(Locale.US, "RealmList<byte[]>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 15:
                    sb.append(String.format(Locale.US, "RealmList<Date>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 16:
                    sb.append(String.format(Locale.US, "RealmList<Float>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
                case 17:
                    sb.append(String.format(Locale.US, "RealmList<Double>[%s]", Long.valueOf(this.proxyState.m3084e().getValueList(columnKey, columnType).m2781O())));
                    break;
            }
            sb.append("},");
        }
        sb.replace(sb.length() - 1, sb.length(), "");
        sb.append("]");
        return sb.toString();
    }
}
