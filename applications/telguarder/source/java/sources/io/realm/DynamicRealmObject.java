package io.realm;

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
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealmObject.class */
public class DynamicRealmObject extends RealmObject implements RealmObjectProxy {
    static final String MSG_LINK_QUERY_NOT_SUPPORTED = "Queries across relationships are not supported";
    private final ProxyState<DynamicRealmObject> proxyState;

    /* renamed from: io.realm.DynamicRealmObject$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealmObject$1.class */
    public static /* synthetic */ class C23771 {
        static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0101 -> B:100:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0105 -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0109 -> B:70:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x010d -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0111 -> B:80:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0115 -> B:94:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0119 -> B:90:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x011d -> B:104:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0121 -> B:98:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0125 -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0129 -> B:68:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x012d -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0131 -> B:78:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0135 -> B:92:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0139 -> B:88:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x013d -> B:102:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0141 -> B:96:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0145 -> B:72:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0149 -> B:66:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x014d -> B:82:0x00f4). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            $SwitchMap$io$realm$RealmFieldType = iArr;
            try {
                iArr[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BINARY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DECIMAL128.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT_ID.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LINKING_OBJECTS.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN_LIST.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.STRING_LIST.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BINARY_LIST.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE_LIST.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT_LIST.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE_LIST.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DECIMAL128_LIST.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT_ID_LIST.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
        }
    }

    public DynamicRealmObject(BaseRealm baseRealm, Row row) {
        ProxyState<DynamicRealmObject> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        proxyState.setRealm$realm(baseRealm);
        proxyState.setRow$realm(row);
        proxyState.setConstructionFinished();
    }

    public DynamicRealmObject(RealmModel realmModel) {
        ProxyState<DynamicRealmObject> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        if (realmModel != null) {
            if (realmModel instanceof DynamicRealmObject) {
                throw new IllegalArgumentException("The object is already a DynamicRealmObject: " + realmModel);
            } else if (!RealmObject.isManaged(realmModel)) {
                throw new IllegalArgumentException("An object managed by Realm must be provided. This is an unmanaged object.");
            } else {
                if (!RealmObject.isValid(realmModel)) {
                    throw new IllegalArgumentException("A valid object managed by Realm must be provided. This object was deleted.");
                }
                RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel;
                Row row$realm = realmObjectProxy.realmGet$proxyState().getRow$realm();
                proxyState.setRealm$realm(realmObjectProxy.realmGet$proxyState().getRealm$realm());
                proxyState.setRow$realm(((UncheckedRow) row$realm).convertToChecked());
                proxyState.setConstructionFinished();
                return;
            }
        }
        throw new IllegalArgumentException("A non-null object must be provided.");
    }

    private void checkFieldType(String str, long j, RealmFieldType realmFieldType) {
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(j);
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
        RealmObjectSchema schemaForClass = this.proxyState.getRealm$realm().getSchema().getSchemaForClass(getType());
        if (!schemaForClass.hasPrimaryKey() || !schemaForClass.getPrimaryKey().equals(str)) {
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Primary key field '%s' cannot be changed after object was created.", str));
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
        if (cls.equals(Decimal128.class)) {
            return RealmFieldType.DECIMAL128_LIST;
        }
        if (cls.equals(ObjectId.class)) {
            return RealmFieldType.OBJECT_ID_LIST;
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
        if (realmFieldType == RealmFieldType.DECIMAL128_LIST) {
            return new Decimal128ListOperator(baseRealm, osList, cls);
        }
        if (realmFieldType == RealmFieldType.OBJECT_ID_LIST) {
            return new ObjectIdListOperator(baseRealm, osList, cls);
        }
        throw new IllegalArgumentException("Unexpected list type: " + realmFieldType.name());
    }

    private void setModelList(String str, RealmList<DynamicRealmObject> realmList) {
        boolean z;
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.proxyState.getRow$realm().getColumnKey(str));
        Table targetTable = modelList.getTargetTable();
        String className = targetTable.getClassName();
        if (realmList.className == null && realmList.clazz == null) {
            z = false;
        } else {
            String className2 = realmList.className != null ? realmList.className : this.proxyState.getRealm$realm().getSchema().getTable(realmList.clazz).getClassName();
            if (!className.equals(className2)) {
                throw new IllegalArgumentException(String.format(Locale.US, "The elements in the list are not the proper type. Was %s expected %s.", className2, className));
            }
            z = true;
        }
        int size = realmList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            DynamicRealmObject dynamicRealmObject = realmList.get(i);
            if (dynamicRealmObject.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                throw new IllegalArgumentException("Each element in 'list' must belong to the same Realm instance.");
            }
            if (!z && !targetTable.hasSameSchema(dynamicRealmObject.realmGet$proxyState().getRow$realm().getTable())) {
                throw new IllegalArgumentException(String.format(Locale.US, "Element at index %d is not the proper type. Was '%s' expected '%s'.", Integer.valueOf(i), dynamicRealmObject.realmGet$proxyState().getRow$realm().getTable().getClassName(), className));
            }
            jArr[i] = dynamicRealmObject.realmGet$proxyState().getRow$realm().getObjectKey();
        }
        modelList.removeAll();
        for (int i2 = 0; i2 < size; i2++) {
            modelList.addRow(jArr[i2]);
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
        } else if (cls == Decimal128.class) {
            setDecimal128(str, (Decimal128) obj);
        } else if (cls == ObjectId.class) {
            setObjectId(str, (ObjectId) obj);
        } else {
            throw new IllegalArgumentException("Value is of an type not supported: " + obj.getClass());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private <E> void setValueList(String str, RealmList<E> realmList, RealmFieldType realmFieldType) {
        ?? r7;
        OsList valueList = this.proxyState.getRow$realm().getValueList(this.proxyState.getRow$realm().getColumnKey(str), realmFieldType);
        switch (C23771.$SwitchMap$io$realm$RealmFieldType[realmFieldType.ordinal()]) {
            case 13:
                r7 = Long.class;
                break;
            case 14:
                r7 = Boolean.class;
                break;
            case 15:
                r7 = String.class;
                break;
            case 16:
                r7 = byte[].class;
                break;
            case 17:
                r7 = Date.class;
                break;
            case 18:
                r7 = Float.class;
                break;
            case 19:
                r7 = Double.class;
                break;
            case 20:
                r7 = Decimal128.class;
                break;
            case 21:
                r7 = ObjectId.class;
                break;
            default:
                throw new IllegalArgumentException("Unsupported type: " + realmFieldType);
        }
        BaseRealm realm$realm = this.proxyState.getRealm$realm();
        Class<E> cls = r7 == true ? 1 : 0;
        ?? r72 = r7 == true ? 1 : 0;
        ?? r73 = r7 == true ? 1 : 0;
        ?? r74 = r7 == true ? 1 : 0;
        ?? r75 = r7 == true ? 1 : 0;
        ?? r76 = r7 == true ? 1 : 0;
        ?? r77 = r7 == true ? 1 : 0;
        ?? r78 = r7 == true ? 1 : 0;
        ManagedListOperator<E> operator = getOperator(realm$realm, valueList, realmFieldType, cls);
        if (!realmList.isManaged() || valueList.size() != realmList.size()) {
            valueList.removeAll();
            Iterator<E> it = realmList.iterator();
            while (it.hasNext()) {
                operator.append(it.next());
            }
            return;
        }
        int size = realmList.size();
        Iterator<E> it2 = realmList.iterator();
        for (int i = 0; i < size; i++) {
            operator.set(i, it2.next());
        }
    }

    public boolean equals(Object obj) {
        this.proxyState.getRealm$realm().checkIfValid();
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DynamicRealmObject dynamicRealmObject = (DynamicRealmObject) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = dynamicRealmObject.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = dynamicRealmObject.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        if (this.proxyState.getRow$realm().getObjectKey() != dynamicRealmObject.proxyState.getRow$realm().getObjectKey()) {
            z = false;
        }
        return z;
    }

    public <E> E get(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (this.proxyState.getRow$realm().isNull(columnKey)) {
            return null;
        }
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnKey);
        switch (C23771.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()]) {
            case 1:
                return (E) Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnKey));
            case 2:
                return (E) Long.valueOf(this.proxyState.getRow$realm().getLong(columnKey));
            case 3:
                return (E) Float.valueOf(this.proxyState.getRow$realm().getFloat(columnKey));
            case 4:
                return (E) Double.valueOf(this.proxyState.getRow$realm().getDouble(columnKey));
            case 5:
                return (E) this.proxyState.getRow$realm().getString(columnKey);
            case 6:
                return (E) this.proxyState.getRow$realm().getBinaryByteArray(columnKey);
            case 7:
                return (E) this.proxyState.getRow$realm().getDate(columnKey);
            case 8:
                return (E) this.proxyState.getRow$realm().getDecimal128(columnKey);
            case 9:
                return (E) this.proxyState.getRow$realm().getObjectId(columnKey);
            case 10:
                return (E) getObject(str);
            case 11:
                return (E) getList(str);
            default:
                throw new IllegalStateException("Field type not supported: " + columnType);
        }
    }

    public byte[] getBlob(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getBinaryByteArray(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.BINARY);
            throw e;
        }
    }

    public boolean getBoolean(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getBoolean(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.BOOLEAN);
            throw e;
        }
    }

    public byte getByte(String str) {
        return (byte) getLong(str);
    }

    public Date getDate(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.DATE);
        if (this.proxyState.getRow$realm().isNull(columnKey)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(columnKey);
    }

    public Decimal128 getDecimal128(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.DECIMAL128);
        if (this.proxyState.getRow$realm().isNull(columnKey)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDecimal128(columnKey);
    }

    public double getDouble(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getDouble(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.DOUBLE);
            throw e;
        }
    }

    public DynamicRealm getDynamicRealm() {
        BaseRealm realm$realm = realmGet$proxyState().getRealm$realm();
        realm$realm.checkIfValid();
        if (isValid()) {
            return (DynamicRealm) realm$realm;
        }
        throw new IllegalStateException("the object is already deleted.");
    }

    public String[] getFieldNames() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getColumnNames();
    }

    public RealmFieldType getFieldType(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnKey(str));
    }

    public float getFloat(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getFloat(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.FLOAT);
            throw e;
        }
    }

    public int getInt(String str) {
        return (int) getLong(str);
    }

    public RealmList<DynamicRealmObject> getList(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            OsList modelList = this.proxyState.getRow$realm().getModelList(columnKey);
            return new RealmList<>(modelList.getTargetTable().getClassName(), modelList, this.proxyState.getRealm$realm());
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.LIST);
            throw e;
        }
    }

    public <E> RealmList<E> getList(String str, Class<E> cls) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (cls != null) {
            long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
            RealmFieldType classToRealmType = classToRealmType(cls);
            try {
                return new RealmList<>(cls, this.proxyState.getRow$realm().getValueList(columnKey, classToRealmType), this.proxyState.getRealm$realm());
            } catch (IllegalArgumentException e) {
                checkFieldType(str, columnKey, classToRealmType);
                throw e;
            }
        }
        throw new IllegalArgumentException("Non-null 'primitiveType' required.");
    }

    public long getLong(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getLong(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.INTEGER);
            throw e;
        }
    }

    @Nullable
    public DynamicRealmObject getObject(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.OBJECT);
        if (this.proxyState.getRow$realm().isNullLink(columnKey)) {
            return null;
        }
        return new DynamicRealmObject(this.proxyState.getRealm$realm(), this.proxyState.getRow$realm().getTable().getLinkTarget(columnKey).getCheckedRow(this.proxyState.getRow$realm().getLink(columnKey)));
    }

    public ObjectId getObjectId(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        checkFieldType(str, columnKey, RealmFieldType.OBJECT_ID);
        if (this.proxyState.getRow$realm().isNull(columnKey)) {
            return null;
        }
        return this.proxyState.getRow$realm().getObjectId(columnKey);
    }

    public short getShort(String str) {
        return (short) getLong(str);
    }

    public String getString(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        try {
            return this.proxyState.getRow$realm().getString(columnKey);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnKey, RealmFieldType.STRING);
            throw e;
        }
    }

    public String getType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getTable().getClassName();
    }

    public boolean hasField(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (str == null || str.isEmpty()) {
            return false;
        }
        return this.proxyState.getRow$realm().hasColumn(str);
    }

    public int hashCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long objectKey = this.proxyState.getRow$realm().getObjectKey();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    public boolean isNull(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        switch (C23771.$SwitchMap$io$realm$RealmFieldType[this.proxyState.getRow$realm().getColumnType(columnKey).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return this.proxyState.getRow$realm().isNull(columnKey);
            case 10:
                return this.proxyState.getRow$realm().isNullLink(columnKey);
            default:
                return false;
        }
    }

    public RealmResults<DynamicRealmObject> linkingObjects(String str, String str2) {
        DynamicRealm dynamicRealm = (DynamicRealm) this.proxyState.getRealm$realm();
        dynamicRealm.checkIfValid();
        this.proxyState.getRow$realm().checkIfAttached();
        RealmObjectSchema realmObjectSchema = dynamicRealm.getSchema().get(str);
        if (realmObjectSchema == null) {
            throw new IllegalArgumentException("Class not found: " + str);
        } else if (str2 == null) {
            throw new IllegalArgumentException("Non-null 'srcFieldName' required.");
        } else {
            if (str2.contains(".")) {
                throw new IllegalArgumentException(MSG_LINK_QUERY_NOT_SUPPORTED);
            }
            RealmFieldType fieldType = realmObjectSchema.getFieldType(str2);
            if (fieldType != RealmFieldType.OBJECT && fieldType != RealmFieldType.LIST) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s.", fieldType.name(), RealmFieldType.class.getSimpleName(), RealmFieldType.OBJECT.name(), RealmFieldType.LIST.name()));
            }
            return RealmResults.createDynamicBacklinkResults(dynamicRealm, (UncheckedRow) this.proxyState.getRow$realm(), realmObjectSchema.getTable(), str2);
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
        this.proxyState.getRealm$realm().checkIfValid();
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnKey(str));
        ObjectId objectId = obj;
        if (z) {
            objectId = obj;
            if (columnType != RealmFieldType.STRING) {
                int i = C23771.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()];
                if (i == 1) {
                    objectId = Boolean.valueOf(Boolean.parseBoolean(str2));
                } else if (i == 2) {
                    objectId = Long.valueOf(Long.parseLong(str2));
                } else if (i == 3) {
                    objectId = Float.valueOf(Float.parseFloat(str2));
                } else if (i == 4) {
                    objectId = Double.valueOf(Double.parseDouble(str2));
                } else if (i == 7) {
                    objectId = JsonUtils.stringToDate(str2);
                } else if (i == 8) {
                    objectId = Decimal128.parse(str2);
                } else if (i != 9) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", str, obj));
                } else {
                    objectId = new ObjectId(str2);
                }
            }
        }
        if (objectId == null) {
            setNull(str);
        } else {
            setValue(str, objectId);
        }
    }

    public void setBlob(String str, @Nullable byte[] bArr) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBinaryByteArray(this.proxyState.getRow$realm().getColumnKey(str), bArr);
    }

    public void setBoolean(String str, boolean z) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.proxyState.getRow$realm().getColumnKey(str), z);
    }

    public void setByte(String str, byte b) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnKey(str), b);
    }

    public void setDate(String str, @Nullable Date date) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (date == null) {
            this.proxyState.getRow$realm().setNull(columnKey);
        } else {
            this.proxyState.getRow$realm().setDate(columnKey, date);
        }
    }

    public void setDecimal128(String str, @Nullable Decimal128 decimal128) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (decimal128 == null) {
            this.proxyState.getRow$realm().setNull(columnKey);
        } else {
            this.proxyState.getRow$realm().setDecimal128(columnKey, decimal128);
        }
    }

    public void setDouble(String str, double d) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.proxyState.getRow$realm().getColumnKey(str), d);
    }

    public void setFloat(String str, float f) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setFloat(this.proxyState.getRow$realm().getColumnKey(str), f);
    }

    public void setInt(String str, int i) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnKey(str), i);
    }

    public <E> void setList(String str, RealmList<E> realmList) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (realmList != null) {
            RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnKey(str));
            switch (C23771.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()]) {
                case 11:
                    if (!realmList.isEmpty()) {
                        E first = realmList.first();
                        if (!(first instanceof DynamicRealmObject) && RealmModel.class.isAssignableFrom(first.getClass())) {
                            throw new IllegalArgumentException("RealmList must contain `DynamicRealmObject's, not Java model classes.");
                        }
                    }
                    setModelList(str, realmList);
                    return;
                case 12:
                default:
                    throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", str, columnType));
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    setValueList(str, realmList, columnType);
                    return;
            }
        }
        throw new IllegalArgumentException("Non-null 'list' required");
    }

    public void setLong(String str, long j) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnKey(str), j);
    }

    public void setNull(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (this.proxyState.getRow$realm().getColumnType(columnKey) == RealmFieldType.OBJECT) {
            this.proxyState.getRow$realm().nullifyLink(columnKey);
            return;
        }
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setNull(columnKey);
    }

    public void setObject(String str, @Nullable DynamicRealmObject dynamicRealmObject) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (dynamicRealmObject == null) {
            this.proxyState.getRow$realm().nullifyLink(columnKey);
        } else if (dynamicRealmObject.proxyState.getRealm$realm() == null || dynamicRealmObject.proxyState.getRow$realm() == null) {
            throw new IllegalArgumentException("Cannot link to objects that are not part of the Realm.");
        } else {
            if (this.proxyState.getRealm$realm() != dynamicRealmObject.proxyState.getRealm$realm()) {
                throw new IllegalArgumentException("Cannot add an object from another Realm instance.");
            }
            Table linkTarget = this.proxyState.getRow$realm().getTable().getLinkTarget(columnKey);
            Table table = dynamicRealmObject.proxyState.getRow$realm().getTable();
            if (!linkTarget.hasSameSchema(table)) {
                throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was %s, expected %s", table.getName(), linkTarget.getName()));
            }
            this.proxyState.getRow$realm().setLink(columnKey, dynamicRealmObject.proxyState.getRow$realm().getObjectKey());
        }
    }

    public void setObjectId(String str, @Nullable ObjectId objectId) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
        if (objectId == null) {
            this.proxyState.getRow$realm().setNull(columnKey);
        } else {
            this.proxyState.getRow$realm().setObjectId(columnKey, objectId);
        }
    }

    public void setShort(String str, short s) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnKey(str), s);
    }

    public void setString(String str, @Nullable String str2) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setString(this.proxyState.getRow$realm().getColumnKey(str), str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r0v73, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r0v95, types: [java.lang.Double] */
    public String toString() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (!this.proxyState.getRow$realm().isValid()) {
            return "Invalid object";
        }
        String className = this.proxyState.getRow$realm().getTable().getClassName();
        StringBuilder sb = new StringBuilder(className + " = dynamic[");
        String[] fieldNames = getFieldNames();
        int length = fieldNames.length;
        for (int i = 0; i < length; i++) {
            String str = fieldNames[i];
            long columnKey = this.proxyState.getRow$realm().getColumnKey(str);
            RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnKey);
            sb.append("{");
            sb.append(str);
            sb.append(":");
            String str2 = "null";
            switch (C23771.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()]) {
                case 1:
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        str2 = Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnKey));
                    }
                    sb.append((Object) str2);
                    break;
                case 2:
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        str2 = Long.valueOf(this.proxyState.getRow$realm().getLong(columnKey));
                    }
                    sb.append((Object) str2);
                    break;
                case 3:
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        str2 = Float.valueOf(this.proxyState.getRow$realm().getFloat(columnKey));
                    }
                    sb.append((Object) str2);
                    break;
                case 4:
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        str2 = Double.valueOf(this.proxyState.getRow$realm().getDouble(columnKey));
                    }
                    sb.append((Object) str2);
                    break;
                case 5:
                    sb.append(this.proxyState.getRow$realm().getString(columnKey));
                    break;
                case 6:
                    sb.append(Arrays.toString(this.proxyState.getRow$realm().getBinaryByteArray(columnKey)));
                    break;
                case 7:
                    Date date = str2;
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        date = this.proxyState.getRow$realm().getDate(columnKey);
                    }
                    sb.append((Object) date);
                    break;
                case 8:
                    Decimal128 decimal128 = str2;
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        decimal128 = this.proxyState.getRow$realm().getDecimal128(columnKey);
                    }
                    sb.append((Object) decimal128);
                    break;
                case 9:
                    ObjectId objectId = str2;
                    if (!this.proxyState.getRow$realm().isNull(columnKey)) {
                        objectId = this.proxyState.getRow$realm().getObjectId(columnKey);
                    }
                    sb.append((Object) objectId);
                    break;
                case 10:
                    if (!this.proxyState.getRow$realm().isNullLink(columnKey)) {
                        str2 = this.proxyState.getRow$realm().getTable().getLinkTarget(columnKey).getClassName();
                    }
                    sb.append(str2);
                    break;
                case 11:
                    sb.append(String.format(Locale.US, "RealmList<%s>[%s]", this.proxyState.getRow$realm().getTable().getLinkTarget(columnKey).getClassName(), Long.valueOf(this.proxyState.getRow$realm().getModelList(columnKey).size())));
                    break;
                case 12:
                default:
                    sb.append("?");
                    break;
                case 13:
                    sb.append(String.format(Locale.US, "RealmList<Long>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 14:
                    sb.append(String.format(Locale.US, "RealmList<Boolean>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 15:
                    sb.append(String.format(Locale.US, "RealmList<String>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 16:
                    sb.append(String.format(Locale.US, "RealmList<byte[]>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 17:
                    sb.append(String.format(Locale.US, "RealmList<Date>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 18:
                    sb.append(String.format(Locale.US, "RealmList<Float>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 19:
                    sb.append(String.format(Locale.US, "RealmList<Double>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 20:
                    sb.append(String.format(Locale.US, "RealmList<Decimal128>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
                case 21:
                    sb.append(String.format(Locale.US, "RealmList<ObjectId>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnKey, columnType).size())));
                    break;
            }
            sb.append("},");
        }
        sb.replace(sb.length() - 1, sb.length(), "");
        sb.append("]");
        return sb.toString();
    }
}
