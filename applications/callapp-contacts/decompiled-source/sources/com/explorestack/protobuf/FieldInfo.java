package com.explorestack.protobuf;

import com.explorestack.protobuf.Internal;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/FieldInfo.class */
final class FieldInfo implements Comparable<FieldInfo> {
    private final Field cachedSizeField;
    private final boolean enforceUtf8;
    private final Internal.EnumVerifier enumVerifier;
    private final Field field;
    private final int fieldNumber;
    private final Object mapDefaultEntry;
    private final Class<?> messageClass;
    private final OneofInfo oneof;
    private final Class<?> oneofStoredType;
    private final Field presenceField;
    private final int presenceMask;
    private final boolean required;
    private final FieldType type;

    /* renamed from: com.explorestack.protobuf.FieldInfo$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/FieldInfo$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$FieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[FieldType.values().length];
            $SwitchMap$com$google$protobuf$FieldType = iArr;
            try {
                iArr[FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$FieldType[FieldType.GROUP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$FieldType[FieldType.MESSAGE_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$FieldType[FieldType.GROUP_LIST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/FieldInfo$Builder.class */
    public static final class Builder {
        private Field cachedSizeField;
        private boolean enforceUtf8;
        private Internal.EnumVerifier enumVerifier;
        private Field field;
        private int fieldNumber;
        private Object mapDefaultEntry;
        private OneofInfo oneof;
        private Class<?> oneofStoredType;
        private Field presenceField;
        private int presenceMask;
        private boolean required;
        private FieldType type;

        private Builder() {
        }

        /* synthetic */ Builder(AnonymousClass1 r3) {
            this();
        }

        public final FieldInfo build() {
            OneofInfo oneofInfo = this.oneof;
            if (oneofInfo != null) {
                return FieldInfo.forOneofMemberField(this.fieldNumber, this.type, oneofInfo, this.oneofStoredType, this.enforceUtf8, this.enumVerifier);
            }
            Object obj = this.mapDefaultEntry;
            if (obj != null) {
                return FieldInfo.forMapField(this.field, this.fieldNumber, obj, this.enumVerifier);
            }
            Field field = this.presenceField;
            if (field != null) {
                return this.required ? FieldInfo.forProto2RequiredField(this.field, this.fieldNumber, this.type, field, this.presenceMask, this.enforceUtf8, this.enumVerifier) : FieldInfo.forProto2OptionalField(this.field, this.fieldNumber, this.type, field, this.presenceMask, this.enforceUtf8, this.enumVerifier);
            }
            Internal.EnumVerifier enumVerifier = this.enumVerifier;
            if (enumVerifier != null) {
                Field field2 = this.cachedSizeField;
                return field2 == null ? FieldInfo.forFieldWithEnumVerifier(this.field, this.fieldNumber, this.type, enumVerifier) : FieldInfo.forPackedFieldWithEnumVerifier(this.field, this.fieldNumber, this.type, enumVerifier, field2);
            }
            Field field3 = this.cachedSizeField;
            return field3 == null ? FieldInfo.forField(this.field, this.fieldNumber, this.type, this.enforceUtf8) : FieldInfo.forPackedField(this.field, this.fieldNumber, this.type, field3);
        }

        public final Builder withCachedSizeField(Field field) {
            this.cachedSizeField = field;
            return this;
        }

        public final Builder withEnforceUtf8(boolean z) {
            this.enforceUtf8 = z;
            return this;
        }

        public final Builder withEnumVerifier(Internal.EnumVerifier enumVerifier) {
            this.enumVerifier = enumVerifier;
            return this;
        }

        public final Builder withField(Field field) {
            if (this.oneof == null) {
                this.field = field;
                return this;
            }
            throw new IllegalStateException("Cannot set field when building a oneof.");
        }

        public final Builder withFieldNumber(int i) {
            this.fieldNumber = i;
            return this;
        }

        public final Builder withMapDefaultEntry(Object obj) {
            this.mapDefaultEntry = obj;
            return this;
        }

        public final Builder withOneof(OneofInfo oneofInfo, Class<?> cls) {
            if (this.field == null && this.presenceField == null) {
                this.oneof = oneofInfo;
                this.oneofStoredType = cls;
                return this;
            }
            throw new IllegalStateException("Cannot set oneof when field or presenceField have been provided");
        }

        public final Builder withPresence(Field field, int i) {
            this.presenceField = (Field) Internal.checkNotNull(field, "presenceField");
            this.presenceMask = i;
            return this;
        }

        public final Builder withRequired(boolean z) {
            this.required = z;
            return this;
        }

        public final Builder withType(FieldType fieldType) {
            this.type = fieldType;
            return this;
        }
    }

    private FieldInfo(Field field, int i, FieldType fieldType, Class<?> cls, Field field2, int i2, boolean z, boolean z2, OneofInfo oneofInfo, Class<?> cls2, Object obj, Internal.EnumVerifier enumVerifier, Field field3) {
        this.field = field;
        this.type = fieldType;
        this.messageClass = cls;
        this.fieldNumber = i;
        this.presenceField = field2;
        this.presenceMask = i2;
        this.required = z;
        this.enforceUtf8 = z2;
        this.oneof = oneofInfo;
        this.oneofStoredType = cls2;
        this.mapDefaultEntry = obj;
        this.enumVerifier = enumVerifier;
        this.cachedSizeField = field3;
    }

    private static void checkFieldNumber(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("fieldNumber must be positive: ".concat(String.valueOf(i)));
        }
    }

    public static FieldInfo forField(Field field, int i, FieldType fieldType, boolean z) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        Internal.checkNotNull(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new FieldInfo(field, i, fieldType, null, null, 0, false, z, null, null, null, null, null);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static FieldInfo forFieldWithEnumVerifier(Field field, int i, FieldType fieldType, Internal.EnumVerifier enumVerifier) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        return new FieldInfo(field, i, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, null);
    }

    public static FieldInfo forMapField(Field field, int i, Object obj, Internal.EnumVerifier enumVerifier) {
        Internal.checkNotNull(obj, "mapDefaultEntry");
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        return new FieldInfo(field, i, FieldType.MAP, null, null, 0, false, true, null, null, obj, enumVerifier, null);
    }

    public static FieldInfo forOneofMemberField(int i, FieldType fieldType, OneofInfo oneofInfo, Class<?> cls, boolean z, Internal.EnumVerifier enumVerifier) {
        checkFieldNumber(i);
        Internal.checkNotNull(fieldType, "fieldType");
        Internal.checkNotNull(oneofInfo, "oneof");
        Internal.checkNotNull(cls, "oneofStoredType");
        if (fieldType.isScalar()) {
            return new FieldInfo(null, i, fieldType, null, null, 0, false, z, oneofInfo, cls, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("Oneof is only supported for scalar fields. Field " + i + " is of type " + fieldType);
    }

    public static FieldInfo forPackedField(Field field, int i, FieldType fieldType, Field field2) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        Internal.checkNotNull(fieldType, "fieldType");
        if (fieldType != FieldType.MESSAGE_LIST && fieldType != FieldType.GROUP_LIST) {
            return new FieldInfo(field, i, fieldType, null, null, 0, false, false, null, null, null, null, field2);
        }
        throw new IllegalStateException("Shouldn't be called for repeated message fields.");
    }

    public static FieldInfo forPackedFieldWithEnumVerifier(Field field, int i, FieldType fieldType, Internal.EnumVerifier enumVerifier, Field field2) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        return new FieldInfo(field, i, fieldType, null, null, 0, false, false, null, null, null, enumVerifier, field2);
    }

    public static FieldInfo forProto2OptionalField(Field field, int i, FieldType fieldType, Field field2, int i2, boolean z, Internal.EnumVerifier enumVerifier) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        Internal.checkNotNull(fieldType, "fieldType");
        Internal.checkNotNull(field2, "presenceField");
        if (field2 == null || isExactlyOneBitSet(i2)) {
            return new FieldInfo(field, i, fieldType, null, field2, i2, false, z, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: ".concat(String.valueOf(i2)));
    }

    public static FieldInfo forProto2RequiredField(Field field, int i, FieldType fieldType, Field field2, int i2, boolean z, Internal.EnumVerifier enumVerifier) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        Internal.checkNotNull(fieldType, "fieldType");
        Internal.checkNotNull(field2, "presenceField");
        if (field2 == null || isExactlyOneBitSet(i2)) {
            return new FieldInfo(field, i, fieldType, null, field2, i2, true, z, null, null, null, enumVerifier, null);
        }
        throw new IllegalArgumentException("presenceMask must have exactly one bit set: ".concat(String.valueOf(i2)));
    }

    public static FieldInfo forRepeatedMessageField(Field field, int i, FieldType fieldType, Class<?> cls) {
        checkFieldNumber(i);
        Internal.checkNotNull(field, "field");
        Internal.checkNotNull(fieldType, "fieldType");
        Internal.checkNotNull(cls, "messageClass");
        return new FieldInfo(field, i, fieldType, cls, null, 0, false, false, null, null, null, null, null);
    }

    private static boolean isExactlyOneBitSet(int i) {
        return i != 0 && (i & (i - 1)) == 0;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final int compareTo(FieldInfo fieldInfo) {
        return this.fieldNumber - fieldInfo.fieldNumber;
    }

    public final Field getCachedSizeField() {
        return this.cachedSizeField;
    }

    public final Internal.EnumVerifier getEnumVerifier() {
        return this.enumVerifier;
    }

    public final Field getField() {
        return this.field;
    }

    public final int getFieldNumber() {
        return this.fieldNumber;
    }

    public final Class<?> getListElementType() {
        return this.messageClass;
    }

    public final Object getMapDefaultEntry() {
        return this.mapDefaultEntry;
    }

    public final Class<?> getMessageFieldClass() {
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$FieldType[this.type.ordinal()];
        if (i == 1 || i == 2) {
            Field field = this.field;
            return field != null ? field.getType() : this.oneofStoredType;
        } else if (i == 3 || i == 4) {
            return this.messageClass;
        } else {
            return null;
        }
    }

    public final OneofInfo getOneof() {
        return this.oneof;
    }

    public final Class<?> getOneofStoredType() {
        return this.oneofStoredType;
    }

    public final Field getPresenceField() {
        return this.presenceField;
    }

    public final int getPresenceMask() {
        return this.presenceMask;
    }

    public final FieldType getType() {
        return this.type;
    }

    public final boolean isEnforceUtf8() {
        return this.enforceUtf8;
    }

    public final boolean isRequired() {
        return this.required;
    }
}
