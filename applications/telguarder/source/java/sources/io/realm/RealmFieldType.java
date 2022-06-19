package io.realm;

import java.nio.ByteBuffer;
import java.util.Date;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmFieldType.class */
public enum RealmFieldType {
    INTEGER(0),
    BOOLEAN(1),
    STRING(2),
    BINARY(4),
    DATE(8),
    FLOAT(9),
    DOUBLE(10),
    OBJECT(12),
    DECIMAL128(11),
    OBJECT_ID(15),
    LIST(13),
    LINKING_OBJECTS(14),
    INTEGER_LIST(128),
    BOOLEAN_LIST(129),
    STRING_LIST(130),
    BINARY_LIST(132),
    DATE_LIST(136),
    FLOAT_LIST(137),
    DOUBLE_LIST(138),
    DECIMAL128_LIST(139),
    OBJECT_ID_LIST(143);
    
    private static final RealmFieldType[] basicTypes = new RealmFieldType[16];
    private static final RealmFieldType[] listTypes = new RealmFieldType[16];
    private final int nativeValue;

    static {
        RealmFieldType[] values;
        for (RealmFieldType realmFieldType : values()) {
            int i = realmFieldType.nativeValue;
            if (i < 128) {
                basicTypes[i] = realmFieldType;
            } else {
                listTypes[i - 128] = realmFieldType;
            }
        }
    }

    RealmFieldType(int i) {
        this.nativeValue = i;
    }

    public static RealmFieldType fromNativeValue(int i) {
        RealmFieldType realmFieldType;
        RealmFieldType realmFieldType2;
        if (i >= 0) {
            RealmFieldType[] realmFieldTypeArr = basicTypes;
            if (i < realmFieldTypeArr.length && (realmFieldType2 = realmFieldTypeArr[i]) != null) {
                return realmFieldType2;
            }
        }
        if (128 <= i) {
            int i2 = i - 128;
            RealmFieldType[] realmFieldTypeArr2 = listTypes;
            if (i2 < realmFieldTypeArr2.length && (realmFieldType = realmFieldTypeArr2[i2]) != null) {
                return realmFieldType;
            }
        }
        throw new IllegalArgumentException("Invalid native Realm type: " + i);
    }

    public int getNativeValue() {
        return this.nativeValue;
    }

    public boolean isValid(Object obj) {
        int i = this.nativeValue;
        if (i == 0) {
            boolean z = true;
            if (!(obj instanceof Long)) {
                z = true;
                if (!(obj instanceof Integer)) {
                    z = true;
                    if (!(obj instanceof Short)) {
                        z = obj instanceof Byte;
                    }
                }
            }
            return z;
        } else if (i == 1) {
            return obj instanceof Boolean;
        } else {
            if (i == 2) {
                return obj instanceof String;
            }
            if (i == 4) {
                boolean z2 = true;
                if (!(obj instanceof byte[])) {
                    z2 = obj instanceof ByteBuffer;
                }
                return z2;
            } else if (i == 132 || i == 143) {
                return false;
            } else {
                switch (i) {
                    case 8:
                        return obj instanceof Date;
                    case 9:
                        return obj instanceof Float;
                    case 10:
                        return obj instanceof Double;
                    case 11:
                        return obj instanceof Decimal128;
                    case 12:
                        return false;
                    case 13:
                    case 14:
                        return false;
                    case 15:
                        return obj instanceof ObjectId;
                    default:
                        switch (i) {
                            case 128:
                            case 129:
                            case 130:
                                return false;
                            default:
                                switch (i) {
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                        return false;
                                    default:
                                        throw new RuntimeException("Unsupported Realm type:  " + this);
                                }
                        }
                }
            }
        }
    }
}
