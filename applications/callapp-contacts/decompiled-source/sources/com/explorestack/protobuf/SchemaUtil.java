package com.explorestack.protobuf;

import com.explorestack.protobuf.FieldSet;
import com.explorestack.protobuf.Internal;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import org.apache.commons.lang3.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/SchemaUtil.class */
public final class SchemaUtil {
    private static final int DEFAULT_LOOK_UP_START_NUMBER = 40;
    private static final Class<?> GENERATED_MESSAGE_CLASS = getGeneratedMessageClass();
    private static final UnknownFieldSchema<?, ?> PROTO2_UNKNOWN_FIELD_SET_SCHEMA = getUnknownFieldSetSchema(false);
    private static final UnknownFieldSchema<?, ?> PROTO3_UNKNOWN_FIELD_SET_SCHEMA = getUnknownFieldSetSchema(true);
    private static final UnknownFieldSchema<?, ?> UNKNOWN_FIELD_SET_LITE_SCHEMA = new UnknownFieldSetLiteSchema();

    private SchemaUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeBoolList(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size) : size * CodedOutputStream.computeBoolSize(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeBoolListNoTag(List<?> list) {
        return list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeByteStringList(int i, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = size * CodedOutputStream.computeTagSize(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            computeTagSize += CodedOutputStream.computeBytesSizeNoTag(list.get(i2));
        }
        return computeTagSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeEnumList(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeEnumListNoTag = computeSizeEnumListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeEnumListNoTag) : computeSizeEnumListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeEnumListNoTag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeEnumSizeNoTag(list.get(i2).intValue());
                i2++;
            }
        } else {
            IntArrayList intArrayList = (IntArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeEnumSizeNoTag(intArrayList.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeFixed32List(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 4) : size * CodedOutputStream.computeFixed32Size(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeFixed32ListNoTag(List<?> list) {
        return list.size() * 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeFixed64List(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(size * 8) : size * CodedOutputStream.computeFixed64Size(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeFixed64ListNoTag(List<?> list) {
        return list.size() * 8;
    }

    static int computeSizeGroupList(int i, List<MessageLite> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.computeGroupSize(i, list.get(i3));
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeGroupList(int i, List<MessageLite> list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += CodedOutputStream.computeGroupSize(i, list.get(i3), schema);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeInt32List(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeInt32ListNoTag = computeSizeInt32ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeInt32ListNoTag) : computeSizeInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeInt32ListNoTag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        } else {
            IntArrayList intArrayList = (IntArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeInt32SizeNoTag(intArrayList.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeInt64List(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int computeSizeInt64ListNoTag = computeSizeInt64ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeInt64ListNoTag) : computeSizeInt64ListNoTag + (list.size() * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeInt64ListNoTag(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        } else {
            LongArrayList longArrayList = (LongArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeInt64SizeNoTag(longArrayList.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeMessage(int i, Object obj, Schema schema) {
        return obj instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSize(i, (LazyFieldLite) obj) : CodedOutputStream.computeMessageSize(i, (MessageLite) obj, schema);
    }

    static int computeSizeMessageList(int i, List<?> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            computeTagSize += obj instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyFieldLite) obj) : CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj);
        }
        return computeTagSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeMessageList(int i, List<?> list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            computeTagSize += obj instanceof LazyFieldLite ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyFieldLite) obj) : CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj, schema);
        }
        return computeTagSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeSInt32List(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeSInt32ListNoTag = computeSizeSInt32ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeSInt32ListNoTag) : computeSizeSInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeSInt32ListNoTag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeSInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        } else {
            IntArrayList intArrayList = (IntArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeSInt32SizeNoTag(intArrayList.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeSInt64List(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeSInt64ListNoTag = computeSizeSInt64ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeSInt64ListNoTag) : computeSizeSInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeSInt64ListNoTag(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeSInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        } else {
            LongArrayList longArrayList = (LongArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeSInt64SizeNoTag(longArrayList.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeStringList(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int computeTagSize = CodedOutputStream.computeTagSize(i) * size;
        int i5 = computeTagSize;
        if (!(list instanceof LazyStringList)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeStringSizeNoTag((String) obj);
                i3++;
            }
        } else {
            LazyStringList lazyStringList = (LazyStringList) list;
            int i6 = computeTagSize;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object raw = lazyStringList.getRaw(i4);
                i6 += raw instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) raw) : CodedOutputStream.computeStringSizeNoTag((String) raw);
                i4++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeUInt32List(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeUInt32ListNoTag = computeSizeUInt32ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeUInt32ListNoTag) : computeSizeUInt32ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeUInt32ListNoTag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof IntArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeUInt32SizeNoTag(list.get(i2).intValue());
                i2++;
            }
        } else {
            IntArrayList intArrayList = (IntArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeUInt32SizeNoTag(intArrayList.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeUInt64List(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int computeSizeUInt64ListNoTag = computeSizeUInt64ListNoTag(list);
        return z ? CodedOutputStream.computeTagSize(i) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSizeUInt64ListNoTag) : computeSizeUInt64ListNoTag + (size * CodedOutputStream.computeTagSize(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeSizeUInt64ListNoTag(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof LongArrayList)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += CodedOutputStream.computeUInt64SizeNoTag(list.get(i2).longValue());
                i2++;
            }
        } else {
            LongArrayList longArrayList = (LongArrayList) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += CodedOutputStream.computeUInt64SizeNoTag(longArrayList.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB filterUnknownEnumList(int i, List<Integer> list, Internal.EnumLiteMap<?> enumLiteMap, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        UB ub2;
        if (enumLiteMap == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it2 = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it2.hasNext()) {
                    break;
                }
                int intValue = it2.next().intValue();
                if (enumLiteMap.findValueByNumber(intValue) == null) {
                    ub = (UB) storeUnknownEnum(i, intValue, ub, unknownFieldSchema);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (enumLiteMap.findValueByNumber(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) storeUnknownEnum(i, intValue2, ub, unknownFieldSchema);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB filterUnknownEnumList(int i, List<Integer> list, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        UB ub2;
        if (enumVerifier == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it2 = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it2.hasNext()) {
                    break;
                }
                int intValue = it2.next().intValue();
                if (!enumVerifier.isInRange(intValue)) {
                    ub = (UB) storeUnknownEnum(i, intValue, ub, unknownFieldSchema);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (enumVerifier.isInRange(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) storeUnknownEnum(i, intValue2, ub, unknownFieldSchema);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    private static Class<?> getGeneratedMessageClass() {
        try {
            return Class.forName("com.explorestack.protobuf.GeneratedMessageV3");
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getMapDefaultEntry(Class<?> cls, String str) {
        try {
            Field[] declaredFields = Class.forName(cls.getName() + d.f39169b + toCamelCase(str, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return UnsafeUtil.getStaticObject(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + str + " in " + cls.getName());
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    private static UnknownFieldSchema<?, ?> getUnknownFieldSetSchema(boolean z) {
        try {
            Class<?> unknownFieldSetSchemaClass = getUnknownFieldSetSchemaClass();
            if (unknownFieldSetSchemaClass == null) {
                return null;
            }
            return (UnknownFieldSchema) unknownFieldSetSchemaClass.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> getUnknownFieldSetSchemaClass() {
        try {
            return Class.forName("com.explorestack.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends FieldSet.FieldDescriptorLite<FT>> void mergeExtensions(ExtensionSchema<FT> extensionSchema, T t, T t2) {
        FieldSet<FT> extensions = extensionSchema.getExtensions(t2);
        if (!extensions.isEmpty()) {
            extensionSchema.getMutableExtensions(t).mergeFrom(extensions);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void mergeMap(MapFieldSchema mapFieldSchema, T t, T t2, long j) {
        UnsafeUtil.putObject(t, j, mapFieldSchema.mergeFrom(UnsafeUtil.getObject(t, j), UnsafeUtil.getObject(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void mergeUnknownFields(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t, T t2) {
        unknownFieldSchema.setToMessage(t, unknownFieldSchema.merge(unknownFieldSchema.getFromMessage(t), unknownFieldSchema.getFromMessage(t2)));
    }

    public static UnknownFieldSchema<?, ?> proto2UnknownFieldSetSchema() {
        return PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
    }

    public static UnknownFieldSchema<?, ?> proto3UnknownFieldSetSchema() {
        return PROTO3_UNKNOWN_FIELD_SET_SCHEMA;
    }

    public static void requireGeneratedMessage(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean safeEquals(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean shouldUseTableSwitch(int i, int i2, int i3) {
        if (i2 < 40) {
            return true;
        }
        long j = i3;
        return ((((long) i2) - ((long) i)) + 1) + 9 <= ((2 * j) + 3) + ((j + 3) * 3);
    }

    public static boolean shouldUseTableSwitch(FieldInfo[] fieldInfoArr) {
        if (fieldInfoArr.length == 0) {
            return false;
        }
        return shouldUseTableSwitch(fieldInfoArr[0].getFieldNumber(), fieldInfoArr[fieldInfoArr.length - 1].getFieldNumber(), fieldInfoArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB storeUnknownEnum(int i, int i2, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = unknownFieldSchema.newBuilder();
        }
        unknownFieldSchema.addVarint(ub2, i, i2);
        return ub2;
    }

    static String toCamelCase(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ('a' > charAt || charAt > 'z') {
                if ('A' > charAt || charAt > 'Z') {
                    if ('0' <= charAt && charAt <= '9') {
                        sb.append(charAt);
                    }
                    z = true;
                } else if (i != 0 || z) {
                    sb.append(charAt);
                } else {
                    sb.append((char) (charAt + ' '));
                }
            } else if (z) {
                sb.append((char) (charAt - ' '));
            } else {
                sb.append(charAt);
            }
            z = false;
        }
        return sb.toString();
    }

    public static UnknownFieldSchema<?, ?> unknownFieldSetLiteSchema() {
        return UNKNOWN_FIELD_SET_LITE_SCHEMA;
    }

    public static void writeBool(int i, boolean z, Writer writer) throws IOException {
        if (z) {
            writer.writeBool(i, true);
        }
    }

    public static void writeBoolList(int i, List<Boolean> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeBoolList(i, list, z);
        }
    }

    public static void writeBytes(int i, ByteString byteString, Writer writer) throws IOException {
        if (byteString != null && !byteString.isEmpty()) {
            writer.writeBytes(i, byteString);
        }
    }

    public static void writeBytesList(int i, List<ByteString> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeBytesList(i, list);
        }
    }

    public static void writeDouble(int i, double d2, Writer writer) throws IOException {
        if (Double.compare(d2, 0.0d) != 0) {
            writer.writeDouble(i, d2);
        }
    }

    public static void writeDoubleList(int i, List<Double> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeDoubleList(i, list, z);
        }
    }

    public static void writeEnum(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeEnum(i, i2);
        }
    }

    public static void writeEnumList(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeEnumList(i, list, z);
        }
    }

    public static void writeFixed32(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeFixed32(i, i2);
        }
    }

    public static void writeFixed32List(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFixed32List(i, list, z);
        }
    }

    public static void writeFixed64(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeFixed64(i, j);
        }
    }

    public static void writeFixed64List(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFixed64List(i, list, z);
        }
    }

    public static void writeFloat(int i, float f, Writer writer) throws IOException {
        if (Float.compare(f, BitmapDescriptorFactory.HUE_RED) != 0) {
            writer.writeFloat(i, f);
        }
    }

    public static void writeFloatList(int i, List<Float> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFloatList(i, list, z);
        }
    }

    public static void writeGroupList(int i, List<?> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeGroupList(i, list);
        }
    }

    public static void writeGroupList(int i, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeGroupList(i, list, schema);
        }
    }

    public static void writeInt32(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeInt32(i, i2);
        }
    }

    public static void writeInt32List(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeInt32List(i, list, z);
        }
    }

    public static void writeInt64(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeInt64(i, j);
        }
    }

    public static void writeInt64List(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeInt64List(i, list, z);
        }
    }

    public static void writeLazyFieldList(int i, List<?> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            Iterator<?> it2 = list.iterator();
            while (it2.hasNext()) {
                ((LazyFieldLite) it2.next()).writeTo(writer, i);
            }
        }
    }

    public static void writeMessage(int i, Object obj, Writer writer) throws IOException {
        if (obj != null) {
            writer.writeMessage(i, obj);
        }
    }

    public static void writeMessageList(int i, List<?> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeMessageList(i, list);
        }
    }

    public static void writeMessageList(int i, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeMessageList(i, list, schema);
        }
    }

    public static void writeSFixed32(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeSFixed32(i, i2);
        }
    }

    public static void writeSFixed32List(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSFixed32List(i, list, z);
        }
    }

    public static void writeSFixed64(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeSFixed64(i, j);
        }
    }

    public static void writeSFixed64List(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSFixed64List(i, list, z);
        }
    }

    public static void writeSInt32(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeSInt32(i, i2);
        }
    }

    public static void writeSInt32List(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSInt32List(i, list, z);
        }
    }

    public static void writeSInt64(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeSInt64(i, j);
        }
    }

    public static void writeSInt64List(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSInt64List(i, list, z);
        }
    }

    public static void writeString(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writeStringInternal(i, (String) obj, writer);
        } else {
            writeBytes(i, (ByteString) obj, writer);
        }
    }

    private static void writeStringInternal(int i, String str, Writer writer) throws IOException {
        if (str != null && !str.isEmpty()) {
            writer.writeString(i, str);
        }
    }

    public static void writeStringList(int i, List<String> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeStringList(i, list);
        }
    }

    public static void writeUInt32(int i, int i2, Writer writer) throws IOException {
        if (i2 != 0) {
            writer.writeUInt32(i, i2);
        }
    }

    public static void writeUInt32List(int i, List<Integer> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeUInt32List(i, list, z);
        }
    }

    public static void writeUInt64(int i, long j, Writer writer) throws IOException {
        if (j != 0) {
            writer.writeUInt64(i, j);
        }
    }

    public static void writeUInt64List(int i, List<Long> list, Writer writer, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeUInt64List(i, list, z);
        }
    }
}
