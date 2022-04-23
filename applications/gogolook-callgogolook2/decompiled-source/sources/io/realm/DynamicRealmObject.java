package io.realm;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import androidx.media2.session.MediaSessionImplBase;
import com.flurry.sdk.C3478n;
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
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes3-dex2jar.jar:io/realm/DynamicRealmObject.class */
public class DynamicRealmObject extends RealmObject implements RealmObjectProxy {
    public static final String MSG_LINK_QUERY_NOT_SUPPORTED = "Queries across relationships are not supported";
    public final ProxyState<DynamicRealmObject> proxyState = new ProxyState<>(this);

    /* renamed from: io.realm.DynamicRealmObject$1 */
    /* loaded from: classes3-dex2jar.jar:io/realm/DynamicRealmObject$1.class */
    public static /* synthetic */ class C108761 {
        public static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType = new int[RealmFieldType.values().length];

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
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN.ordinal()] = 1;
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
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.OBJECT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LINKING_OBJECTS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.STRING_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BINARY_LIST.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE_LIST.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT_LIST.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE_LIST.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    public DynamicRealmObject(BaseRealm baseRealm, Row row) {
        this.proxyState.setRealm$realm(baseRealm);
        this.proxyState.setRow$realm(row);
        this.proxyState.setConstructionFinished();
    }

    public DynamicRealmObject(RealmModel realmModel) {
        if (realmModel == null) {
            throw new IllegalArgumentException("A non-null object must be provided.");
        } else if (realmModel instanceof DynamicRealmObject) {
            throw new IllegalArgumentException("The object is already a DynamicRealmObject: " + realmModel);
        } else if (!RealmObject.isManaged(realmModel)) {
            throw new IllegalArgumentException("An object managed by Realm must be provided. This is an unmanaged object.");
        } else if (RealmObject.isValid(realmModel)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) realmModel;
            Row row$realm = realmObjectProxy.realmGet$proxyState().getRow$realm();
            this.proxyState.setRealm$realm(realmObjectProxy.realmGet$proxyState().getRealm$realm());
            this.proxyState.setRow$realm(((UncheckedRow) row$realm).convertToChecked());
            this.proxyState.setConstructionFinished();
        } else {
            throw new IllegalArgumentException("A valid object managed by Realm must be provided. This object was deleted.");
        }
    }

    private void checkFieldType(String str, long j, RealmFieldType realmFieldType) {
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(j);
        if (columnType != realmFieldType) {
            String str2 = (realmFieldType == RealmFieldType.INTEGER || realmFieldType == RealmFieldType.OBJECT) ? C3478n.f5989a : "";
            String str3 = C3478n.f5989a;
            if (columnType != RealmFieldType.INTEGER) {
                str3 = columnType == RealmFieldType.OBJECT ? C3478n.f5989a : "";
            }
            throw new IllegalArgumentException(String.format(Locale.US, "'%s' is not a%s '%s', but a%s '%s'.", str, str2, realmFieldType, str3, columnType));
        }
    }

    private void checkIsPrimaryKey(String str) {
        RealmObjectSchema schemaForClass = this.proxyState.getRealm$realm().getSchema().getSchemaForClass(getType());
        if (schemaForClass.hasPrimaryKey() && schemaForClass.getPrimaryKey().equals(str)) {
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
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.proxyState.getRow$realm().getColumnIndex(str));
        Table targetTable = modelList.getTargetTable();
        String className = targetTable.getClassName();
        if (realmList.className == null && realmList.clazz == null) {
            z = false;
        } else {
            String str2 = realmList.className;
            if (str2 == null) {
                str2 = this.proxyState.getRealm$realm().getSchema().getTable(realmList.clazz).getClassName();
            }
            if (className.equals(str2)) {
                z = true;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "The elements in the list are not the proper type. Was %s expected %s.", str2, className));
            }
        }
        int size = realmList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            DynamicRealmObject dynamicRealmObject = realmList.get(i);
            if (dynamicRealmObject.realmGet$proxyState().getRealm$realm() != this.proxyState.getRealm$realm()) {
                throw new IllegalArgumentException("Each element in 'list' must belong to the same Realm instance.");
            } else if (z || targetTable.hasSameSchema(dynamicRealmObject.realmGet$proxyState().getRow$realm().getTable())) {
                jArr[i] = dynamicRealmObject.realmGet$proxyState().getRow$realm().getIndex();
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "Element at index %d is not the proper type. Was '%s' expected '%s'.", Integer.valueOf(i), dynamicRealmObject.realmGet$proxyState().getRow$realm().getTable().getClassName(), className));
            }
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
        } else {
            throw new IllegalArgumentException("Value is of an type not supported: " + obj.getClass());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E> void setValueList(String str, RealmList<E> realmList, RealmFieldType realmFieldType) {
        Object obj;
        OsList valueList = this.proxyState.getRow$realm().getValueList(this.proxyState.getRow$realm().getColumnIndex(str), realmFieldType);
        switch (C108761.$SwitchMap$io$realm$RealmFieldType[realmFieldType.ordinal()]) {
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
        ManagedListOperator operator = getOperator(this.proxyState.getRealm$realm(), valueList, realmFieldType, obj);
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
        if (obj == null || DynamicRealmObject.class != obj.getClass()) {
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
        if (this.proxyState.getRow$realm().getIndex() != dynamicRealmObject.proxyState.getRow$realm().getIndex()) {
            z = false;
        }
        return z;
    }

    public <E> E get(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
        switch (C108761.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()]) {
            case 1:
                return (E) Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnIndex));
            case 2:
                return (E) Long.valueOf(this.proxyState.getRow$realm().getLong(columnIndex));
            case 3:
                return (E) Float.valueOf(this.proxyState.getRow$realm().getFloat(columnIndex));
            case 4:
                return (E) Double.valueOf(this.proxyState.getRow$realm().getDouble(columnIndex));
            case 5:
                return (E) this.proxyState.getRow$realm().getString(columnIndex);
            case 6:
                return (E) this.proxyState.getRow$realm().getBinaryByteArray(columnIndex);
            case 7:
                return (E) this.proxyState.getRow$realm().getDate(columnIndex);
            case 8:
                return (E) getObject(str);
            case 9:
                return (E) getList(str);
            default:
                throw new IllegalStateException("Field type not supported: " + columnType);
        }
    }

    public byte[] getBlob(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getBinaryByteArray(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.BINARY);
            throw e;
        }
    }

    public boolean getBoolean(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getBoolean(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.BOOLEAN);
            throw e;
        }
    }

    public byte getByte(String str) {
        return (byte) getLong(str);
    }

    public Date getDate(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        checkFieldType(str, columnIndex, RealmFieldType.DATE);
        if (this.proxyState.getRow$realm().isNull(columnIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(columnIndex);
    }

    public double getDouble(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getDouble(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.DOUBLE);
            throw e;
        }
    }

    public DynamicRealm getDynamicRealm() {
        BaseRealm realm$realm = realmGet$proxyState().getRealm$realm();
        realm$realm.checkIfValid();
        if (isValid()) {
            return (DynamicRealm) realm$realm;
        }
        throw new IllegalStateException(RealmObject.MSG_DELETED_OBJECT);
    }

    public String[] getFieldNames() {
        this.proxyState.getRealm$realm().checkIfValid();
        String[] strArr = new String[(int) this.proxyState.getRow$realm().getColumnCount()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = this.proxyState.getRow$realm().getColumnName(i);
        }
        return strArr;
    }

    public RealmFieldType getFieldType(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnIndex(str));
    }

    public float getFloat(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getFloat(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.FLOAT);
            throw e;
        }
    }

    public int getInt(String str) {
        return (int) getLong(str);
    }

    public RealmList<DynamicRealmObject> getList(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            OsList modelList = this.proxyState.getRow$realm().getModelList(columnIndex);
            return new RealmList<>(modelList.getTargetTable().getClassName(), modelList, this.proxyState.getRealm$realm());
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.LIST);
            throw e;
        }
    }

    public <E> RealmList<E> getList(String str, Class<E> cls) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (cls != null) {
            long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
            RealmFieldType classToRealmType = classToRealmType(cls);
            try {
                return new RealmList<>(cls, this.proxyState.getRow$realm().getValueList(columnIndex, classToRealmType), this.proxyState.getRealm$realm());
            } catch (IllegalArgumentException e) {
                checkFieldType(str, columnIndex, classToRealmType);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Non-null 'primitiveType' required.");
        }
    }

    public long getLong(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getLong(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.INTEGER);
            throw e;
        }
    }

    @Nullable
    public DynamicRealmObject getObject(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        checkFieldType(str, columnIndex, RealmFieldType.OBJECT);
        if (this.proxyState.getRow$realm().isNullLink(columnIndex)) {
            return null;
        }
        return new DynamicRealmObject(this.proxyState.getRealm$realm(), this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getCheckedRow(this.proxyState.getRow$realm().getLink(columnIndex)));
    }

    public short getShort(String str) {
        return (short) getLong(str);
    }

    public String getString(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        try {
            return this.proxyState.getRow$realm().getString(columnIndex);
        } catch (IllegalArgumentException e) {
            checkFieldType(str, columnIndex, RealmFieldType.STRING);
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
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    public boolean isNull(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        switch (C108761.$SwitchMap$io$realm$RealmFieldType[this.proxyState.getRow$realm().getColumnType(columnIndex).ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return this.proxyState.getRow$realm().isNull(columnIndex);
            case 8:
                return this.proxyState.getRow$realm().isNullLink(columnIndex);
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
        } else if (!str2.contains(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
            RealmFieldType fieldType = realmObjectSchema.getFieldType(str2);
            if (fieldType == RealmFieldType.OBJECT || fieldType == RealmFieldType.LIST) {
                return RealmResults.createDynamicBacklinkResults(dynamicRealm, (CheckedRow) this.proxyState.getRow$realm(), realmObjectSchema.getTable(), str2);
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Unexpected field type: %1$s. Field type should be either %2$s.%3$s or %2$s.%4$s.", fieldType.name(), RealmFieldType.class.getSimpleName(), RealmFieldType.OBJECT.name(), RealmFieldType.LIST.name()));
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
        this.proxyState.getRealm$realm().checkIfValid();
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnIndex(str));
        Object obj2 = obj;
        if (z) {
            obj2 = obj;
            if (columnType != RealmFieldType.STRING) {
                int i = C108761.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()];
                if (i == 1) {
                    obj2 = Boolean.valueOf(Boolean.parseBoolean(str2));
                } else if (i == 2) {
                    obj2 = Long.valueOf(Long.parseLong(str2));
                } else if (i == 3) {
                    obj2 = Float.valueOf(Float.parseFloat(str2));
                } else if (i == 4) {
                    obj2 = Double.valueOf(Double.parseDouble(str2));
                } else if (i == 7) {
                    obj2 = JsonUtils.stringToDate(str2);
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
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBinaryByteArray(this.proxyState.getRow$realm().getColumnIndex(str), bArr);
    }

    public void setBoolean(String str, boolean z) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setBoolean(this.proxyState.getRow$realm().getColumnIndex(str), z);
    }

    public void setByte(String str, byte b) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnIndex(str), b);
    }

    public void setDate(String str, @Nullable Date date) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        if (date == null) {
            this.proxyState.getRow$realm().setNull(columnIndex);
        } else {
            this.proxyState.getRow$realm().setDate(columnIndex, date);
        }
    }

    public void setDouble(String str, double d) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setDouble(this.proxyState.getRow$realm().getColumnIndex(str), d);
    }

    public void setFloat(String str, float f) {
        this.proxyState.getRealm$realm().checkIfValid();
        this.proxyState.getRow$realm().setFloat(this.proxyState.getRow$realm().getColumnIndex(str), f);
    }

    public void setInt(String str, int i) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnIndex(str), i);
    }

    public <E> void setList(String str, RealmList<E> realmList) {
        this.proxyState.getRealm$realm().checkIfValid();
        if (realmList != null) {
            RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(this.proxyState.getRow$realm().getColumnIndex(str));
            switch (C108761.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()]) {
                case 9:
                    if (!realmList.isEmpty()) {
                        E first = realmList.first();
                        if (!(first instanceof DynamicRealmObject) && RealmModel.class.isAssignableFrom(first.getClass())) {
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
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnIndex(str), j);
    }

    public void setNull(String str) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        if (this.proxyState.getRow$realm().getColumnType(columnIndex) == RealmFieldType.OBJECT) {
            this.proxyState.getRow$realm().nullifyLink(columnIndex);
            return;
        }
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setNull(columnIndex);
    }

    public void setObject(String str, @Nullable DynamicRealmObject dynamicRealmObject) {
        this.proxyState.getRealm$realm().checkIfValid();
        long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
        if (dynamicRealmObject == null) {
            this.proxyState.getRow$realm().nullifyLink(columnIndex);
        } else if (dynamicRealmObject.proxyState.getRealm$realm() == null || dynamicRealmObject.proxyState.getRow$realm() == null) {
            throw new IllegalArgumentException("Cannot link to objects that are not part of the Realm.");
        } else if (this.proxyState.getRealm$realm() == dynamicRealmObject.proxyState.getRealm$realm()) {
            Table linkTarget = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex);
            Table table = dynamicRealmObject.proxyState.getRow$realm().getTable();
            if (linkTarget.hasSameSchema(table)) {
                this.proxyState.getRow$realm().setLink(columnIndex, dynamicRealmObject.proxyState.getRow$realm().getIndex());
                return;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was %s, expected %s", table.getName(), linkTarget.getName()));
        } else {
            throw new IllegalArgumentException("Cannot add an object from another Realm instance.");
        }
    }

    public void setShort(String str, short s) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setLong(this.proxyState.getRow$realm().getColumnIndex(str), s);
    }

    public void setString(String str, @Nullable String str2) {
        this.proxyState.getRealm$realm().checkIfValid();
        checkIsPrimaryKey(str);
        this.proxyState.getRow$realm().setString(this.proxyState.getRow$realm().getColumnIndex(str), str2);
    }

    public String toString() {
        String[] fieldNames;
        this.proxyState.getRealm$realm().checkIfValid();
        if (!this.proxyState.getRow$realm().isAttached()) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder(this.proxyState.getRow$realm().getTable().getClassName() + " = dynamic[");
        for (String str : getFieldNames()) {
            long columnIndex = this.proxyState.getRow$realm().getColumnIndex(str);
            RealmFieldType columnType = this.proxyState.getRow$realm().getColumnType(columnIndex);
            sb.append(CssParser.BLOCK_START);
            sb.append(str);
            sb.append(":");
            int i = C108761.$SwitchMap$io$realm$RealmFieldType[columnType.ordinal()];
            Object obj = C14247d.f31851f;
            switch (i) {
                case 1:
                    Object obj2 = obj;
                    if (!this.proxyState.getRow$realm().isNull(columnIndex)) {
                        obj2 = Boolean.valueOf(this.proxyState.getRow$realm().getBoolean(columnIndex));
                    }
                    sb.append(obj2);
                    break;
                case 2:
                    Object obj3 = obj;
                    if (!this.proxyState.getRow$realm().isNull(columnIndex)) {
                        obj3 = Long.valueOf(this.proxyState.getRow$realm().getLong(columnIndex));
                    }
                    sb.append(obj3);
                    break;
                case 3:
                    Object obj4 = obj;
                    if (!this.proxyState.getRow$realm().isNull(columnIndex)) {
                        obj4 = Float.valueOf(this.proxyState.getRow$realm().getFloat(columnIndex));
                    }
                    sb.append(obj4);
                    break;
                case 4:
                    Object obj5 = obj;
                    if (!this.proxyState.getRow$realm().isNull(columnIndex)) {
                        obj5 = Double.valueOf(this.proxyState.getRow$realm().getDouble(columnIndex));
                    }
                    sb.append(obj5);
                    break;
                case 5:
                    sb.append(this.proxyState.getRow$realm().getString(columnIndex));
                    break;
                case 6:
                    sb.append(Arrays.toString(this.proxyState.getRow$realm().getBinaryByteArray(columnIndex)));
                    break;
                case 7:
                    Date date = obj;
                    if (!this.proxyState.getRow$realm().isNull(columnIndex)) {
                        date = this.proxyState.getRow$realm().getDate(columnIndex);
                    }
                    sb.append((Object) date);
                    break;
                case 8:
                    String str2 = obj;
                    if (!this.proxyState.getRow$realm().isNullLink(columnIndex)) {
                        str2 = this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName();
                    }
                    sb.append(str2);
                    break;
                case 9:
                    sb.append(String.format(Locale.US, "RealmList<%s>[%s]", this.proxyState.getRow$realm().getTable().getLinkTarget(columnIndex).getClassName(), Long.valueOf(this.proxyState.getRow$realm().getModelList(columnIndex).size())));
                    break;
                case 10:
                default:
                    sb.append("?");
                    break;
                case 11:
                    sb.append(String.format(Locale.US, "RealmList<Long>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 12:
                    sb.append(String.format(Locale.US, "RealmList<Boolean>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 13:
                    sb.append(String.format(Locale.US, "RealmList<String>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 14:
                    sb.append(String.format(Locale.US, "RealmList<byte[]>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 15:
                    sb.append(String.format(Locale.US, "RealmList<Date>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 16:
                    sb.append(String.format(Locale.US, "RealmList<Float>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
                case 17:
                    sb.append(String.format(Locale.US, "RealmList<Double>[%s]", Long.valueOf(this.proxyState.getRow$realm().getValueList(columnIndex, columnType).size())));
                    break;
            }
            sb.append("},");
        }
        sb.replace(sb.length() - 1, sb.length(), "");
        sb.append("]");
        return sb.toString();
    }
}
