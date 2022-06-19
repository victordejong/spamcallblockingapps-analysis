package com.google.protobuf;

import com.google.protobuf.FieldSet.FieldDescriptorLite;
import com.google.protobuf.Internal;
import com.google.protobuf.MessageLite;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldSet.class */
public final class FieldSet<T extends FieldDescriptorLite<T>> {
    private static final int DEFAULT_FIELD_MAP_ARRAY_SIZE = 16;
    private static final FieldSet DEFAULT_INSTANCE = new FieldSet(true);
    private final SmallSortedMap<T, Object> fields;
    private boolean hasLazyField;
    private boolean isImmutable;

    /* renamed from: com.google.protobuf.FieldSet$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldSet$1.class */
    public static /* synthetic */ class C22001 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            WireFormat.FieldType.values();
            int[] iArr = new int[18];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                WireFormat.FieldType fieldType = WireFormat.FieldType.DOUBLE;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType2 = WireFormat.FieldType.FLOAT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType3 = WireFormat.FieldType.INT64;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType4 = WireFormat.FieldType.UINT64;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType5 = WireFormat.FieldType.INT32;
                iArr5[4] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType6 = WireFormat.FieldType.FIXED64;
                iArr6[5] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType7 = WireFormat.FieldType.FIXED32;
                iArr7[6] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType8 = WireFormat.FieldType.BOOL;
                iArr8[7] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType9 = WireFormat.FieldType.GROUP;
                iArr9[9] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                int[] iArr10 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType10 = WireFormat.FieldType.MESSAGE;
                iArr10[10] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                int[] iArr11 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType11 = WireFormat.FieldType.STRING;
                iArr11[8] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType12 = WireFormat.FieldType.BYTES;
                iArr12[11] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                int[] iArr13 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType13 = WireFormat.FieldType.UINT32;
                iArr13[12] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                int[] iArr14 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType14 = WireFormat.FieldType.SFIXED32;
                iArr14[14] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                int[] iArr15 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType15 = WireFormat.FieldType.SFIXED64;
                iArr15[15] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                int[] iArr16 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType16 = WireFormat.FieldType.SINT32;
                iArr16[16] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                int[] iArr17 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType17 = WireFormat.FieldType.SINT64;
                iArr17[17] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                int[] iArr18 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType18 = WireFormat.FieldType.ENUM;
                iArr18[13] = 18;
            } catch (NoSuchFieldError e18) {
            }
            WireFormat.JavaType.values();
            int[] iArr19 = new int[9];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr19;
            try {
                WireFormat.JavaType javaType = WireFormat.JavaType.INT;
                iArr19[0] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                int[] iArr20 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType2 = WireFormat.JavaType.LONG;
                iArr20[1] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                int[] iArr21 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType3 = WireFormat.JavaType.FLOAT;
                iArr21[2] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                int[] iArr22 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType4 = WireFormat.JavaType.DOUBLE;
                iArr22[3] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                int[] iArr23 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType5 = WireFormat.JavaType.BOOLEAN;
                iArr23[4] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                int[] iArr24 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType6 = WireFormat.JavaType.STRING;
                iArr24[5] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                int[] iArr25 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType7 = WireFormat.JavaType.BYTE_STRING;
                iArr25[6] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                int[] iArr26 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType8 = WireFormat.JavaType.ENUM;
                iArr26[7] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                int[] iArr27 = $SwitchMap$com$google$protobuf$WireFormat$JavaType;
                WireFormat.JavaType javaType9 = WireFormat.JavaType.MESSAGE;
                iArr27[8] = 9;
            } catch (NoSuchFieldError e27) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldSet$Builder.class */
    public static final class Builder<T extends FieldDescriptorLite<T>> {
        private SmallSortedMap<T, Object> fields;
        private boolean hasLazyField;
        private boolean hasNestedBuilders;
        private boolean isMutable;

        private Builder() {
            this(SmallSortedMap.newFieldMap(16));
        }

        public /* synthetic */ Builder(C22001 c22001) {
            this();
        }

        private Builder(SmallSortedMap<T, Object> smallSortedMap) {
            this.fields = smallSortedMap;
            this.isMutable = true;
        }

        private void ensureIsMutable() {
            if (!this.isMutable) {
                this.fields = FieldSet.cloneAllFieldsMap(this.fields, true);
                this.isMutable = true;
            }
        }

        public static <T extends FieldDescriptorLite<T>> Builder<T> fromFieldSet(FieldSet<T> fieldSet) {
            Builder<T> builder = new Builder<>(FieldSet.cloneAllFieldsMap(((FieldSet) fieldSet).fields, true));
            ((Builder) builder).hasLazyField = ((FieldSet) fieldSet).hasLazyField;
            return builder;
        }

        private void mergeFromField(Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            MessageLite messageLite = value;
            if (value instanceof LazyField) {
                messageLite = ((LazyField) value).getValue();
            }
            if (key.isRepeated()) {
                Object field = getField(key);
                ArrayList arrayList = field;
                if (field == null) {
                    arrayList = new ArrayList();
                }
                for (Object obj : (List) messageLite) {
                    ((List) arrayList).add(FieldSet.cloneIfMutable(obj));
                }
                this.fields.put((SmallSortedMap<T, Object>) key, (T) arrayList);
            } else if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
                this.fields.put((SmallSortedMap<T, Object>) key, (T) FieldSet.cloneIfMutable(messageLite));
            } else {
                Object field2 = getField(key);
                if (field2 == null) {
                    this.fields.put((SmallSortedMap<T, Object>) key, (T) FieldSet.cloneIfMutable(messageLite));
                } else if (field2 instanceof MessageLite.Builder) {
                    key.internalMergeFrom((MessageLite.Builder) field2, (MessageLite) messageLite);
                } else {
                    this.fields.put((SmallSortedMap<T, Object>) key, (T) key.internalMergeFrom(((MessageLite) field2).toBuilder(), (MessageLite) messageLite).build());
                }
            }
        }

        private static Object replaceBuilder(Object obj) {
            MessageLite messageLite = obj;
            if (obj instanceof MessageLite.Builder) {
                messageLite = ((MessageLite.Builder) obj).build();
            }
            return messageLite;
        }

        private static <T extends FieldDescriptorLite<T>> Object replaceBuilders(T t, Object obj) {
            if (obj != null && t.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
                if (!t.isRepeated()) {
                    return replaceBuilder(obj);
                }
                if (!(obj instanceof List)) {
                    StringBuilder m8728C = C22128a.m8728C("Repeated field should contains a List but actually contains type: ");
                    m8728C.append(obj.getClass());
                    throw new IllegalStateException(m8728C.toString());
                }
                List list = (List) obj;
                int i = 0;
                while (i < list.size()) {
                    Object obj2 = list.get(i);
                    Object replaceBuilder = replaceBuilder(obj2);
                    ArrayList arrayList = list;
                    if (replaceBuilder != obj2) {
                        arrayList = list;
                        if (list == obj) {
                            arrayList = new ArrayList(list);
                        }
                        arrayList.set(i, replaceBuilder);
                    }
                    i++;
                    list = arrayList;
                }
                return list;
            }
            return obj;
        }

        private static <T extends FieldDescriptorLite<T>> void replaceBuilders(SmallSortedMap<T, Object> smallSortedMap) {
            for (int i = 0; i < smallSortedMap.getNumArrayEntries(); i++) {
                replaceBuilders(smallSortedMap.getArrayEntryAt(i));
            }
            for (Map.Entry<T, Object> entry : smallSortedMap.getOverflowEntries()) {
                replaceBuilders(entry);
            }
        }

        private static <T extends FieldDescriptorLite<T>> void replaceBuilders(Map.Entry<T, Object> entry) {
            entry.setValue(replaceBuilders(entry.getKey(), entry.getValue()));
        }

        private void verifyType(T t, Object obj) {
            if (!FieldSet.isValidType(t.getLiteType(), obj)) {
                if (t.getLiteType().getJavaType() == WireFormat.JavaType.MESSAGE && (obj instanceof MessageLite.Builder)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t.getNumber()), t.getLiteType().getJavaType(), obj.getClass().getName()));
            }
        }

        public void addRepeatedField(T t, Object obj) {
            ArrayList arrayList;
            ensureIsMutable();
            if (t.isRepeated()) {
                this.hasNestedBuilders = this.hasNestedBuilders || (obj instanceof MessageLite.Builder);
                verifyType(t, obj);
                Object field = getField(t);
                if (field == null) {
                    ArrayList arrayList2 = new ArrayList();
                    this.fields.put((SmallSortedMap<T, Object>) t, (T) arrayList2);
                    arrayList = arrayList2;
                } else {
                    arrayList = (List) field;
                }
                arrayList.add(obj);
                return;
            }
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }

        public FieldSet<T> build() {
            if (this.fields.isEmpty()) {
                return FieldSet.emptySet();
            }
            this.isMutable = false;
            SmallSortedMap<T, Object> smallSortedMap = this.fields;
            SmallSortedMap<T, Object> smallSortedMap2 = smallSortedMap;
            if (this.hasNestedBuilders) {
                smallSortedMap2 = FieldSet.cloneAllFieldsMap(smallSortedMap, false);
                replaceBuilders(smallSortedMap2);
            }
            FieldSet<T> fieldSet = new FieldSet<>(smallSortedMap2, null);
            ((FieldSet) fieldSet).hasLazyField = this.hasLazyField;
            return fieldSet;
        }

        public void clearField(T t) {
            ensureIsMutable();
            this.fields.remove(t);
            if (this.fields.isEmpty()) {
                this.hasLazyField = false;
            }
        }

        public Map<T, Object> getAllFields() {
            if (!this.hasLazyField) {
                return this.fields.isImmutable() ? this.fields : Collections.unmodifiableMap(this.fields);
            }
            SmallSortedMap cloneAllFieldsMap = FieldSet.cloneAllFieldsMap(this.fields, false);
            if (this.fields.isImmutable()) {
                cloneAllFieldsMap.makeImmutable();
            } else {
                replaceBuilders(cloneAllFieldsMap);
            }
            return cloneAllFieldsMap;
        }

        public Object getField(T t) {
            return replaceBuilders(t, getFieldAllowBuilders(t));
        }

        public Object getFieldAllowBuilders(T t) {
            Object obj = this.fields.get(t);
            MessageLite messageLite = obj;
            if (obj instanceof LazyField) {
                messageLite = ((LazyField) obj).getValue();
            }
            return messageLite;
        }

        public Object getRepeatedField(T t, int i) {
            if (this.hasNestedBuilders) {
                ensureIsMutable();
            }
            return replaceBuilder(getRepeatedFieldAllowBuilders(t, i));
        }

        public Object getRepeatedFieldAllowBuilders(T t, int i) {
            if (t.isRepeated()) {
                Object fieldAllowBuilders = getFieldAllowBuilders(t);
                if (fieldAllowBuilders == null) {
                    throw new IndexOutOfBoundsException();
                }
                return ((List) fieldAllowBuilders).get(i);
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }

        public int getRepeatedFieldCount(T t) {
            if (t.isRepeated()) {
                Object field = getField(t);
                if (field != null) {
                    return ((List) field).size();
                }
                return 0;
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }

        public boolean hasField(T t) {
            if (!t.isRepeated()) {
                return this.fields.get(t) != null;
            }
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }

        public boolean isInitialized() {
            for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
                if (!FieldSet.isInitialized(this.fields.getArrayEntryAt(i))) {
                    return false;
                }
            }
            for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
                if (!FieldSet.isInitialized(entry)) {
                    return false;
                }
            }
            return true;
        }

        public void mergeFrom(FieldSet<T> fieldSet) {
            ensureIsMutable();
            for (int i = 0; i < ((FieldSet) fieldSet).fields.getNumArrayEntries(); i++) {
                mergeFromField(((FieldSet) fieldSet).fields.getArrayEntryAt(i));
            }
            for (Map.Entry<T, Object> entry : ((FieldSet) fieldSet).fields.getOverflowEntries()) {
                mergeFromField(entry);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
            if ((r6 instanceof com.google.protobuf.MessageLite.Builder) != false) goto L27;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setField(T r5, java.lang.Object r6) {
            /*
                r4 = this;
                r0 = r4
                r0.ensureIsMutable()
                r0 = r5
                boolean r0 = r0.isRepeated()
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r7
                if (r0 == 0) goto L7c
                r0 = r6
                boolean r0 = r0 instanceof java.util.List
                if (r0 == 0) goto L71
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r1.<init>()
                r9 = r0
                r0 = r9
                r1 = r6
                java.util.List r1 = (java.util.List) r1
                boolean r0 = r0.addAll(r1)
                r0 = r9
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L33:
                r0 = r10
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L6b
                r0 = r10
                java.lang.Object r0 = r0.next()
                r6 = r0
                r0 = r4
                r1 = r5
                r2 = r6
                r0.verifyType(r1, r2)
                r0 = r4
                boolean r0 = r0.hasNestedBuilders
                if (r0 != 0) goto L61
                r0 = r6
                boolean r0 = r0 instanceof com.google.protobuf.MessageLite.Builder
                if (r0 == 0) goto L5c
                goto L61
            L5c:
                r0 = 0
                r7 = r0
                goto L63
            L61:
                r0 = 1
                r7 = r0
            L63:
                r0 = r4
                r1 = r7
                r0.hasNestedBuilders = r1
                goto L33
            L6b:
                r0 = r9
                r6 = r0
                goto L82
            L71:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.String r2 = "Wrong object type used with protocol message reflection."
                r1.<init>(r2)
                throw r0
            L7c:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.verifyType(r1, r2)
            L82:
                r0 = r6
                boolean r0 = r0 instanceof com.google.protobuf.LazyField
                if (r0 == 0) goto L8e
                r0 = r4
                r1 = 1
                r0.hasLazyField = r1
            L8e:
                r0 = r4
                boolean r0 = r0.hasNestedBuilders
                if (r0 != 0) goto L9f
                r0 = r8
                r7 = r0
                r0 = r6
                boolean r0 = r0 instanceof com.google.protobuf.MessageLite.Builder
                if (r0 == 0) goto La1
            L9f:
                r0 = 1
                r7 = r0
            La1:
                r0 = r4
                r1 = r7
                r0.hasNestedBuilders = r1
                r0 = r4
                com.google.protobuf.SmallSortedMap<T extends com.google.protobuf.FieldSet$FieldDescriptorLite<T>, java.lang.Object> r0 = r0.fields
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.put(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.FieldSet.Builder.setField(com.google.protobuf.FieldSet$FieldDescriptorLite, java.lang.Object):void");
        }

        public void setRepeatedField(T t, int i, Object obj) {
            ensureIsMutable();
            if (t.isRepeated()) {
                this.hasNestedBuilders = this.hasNestedBuilders || (obj instanceof MessageLite.Builder);
                Object field = getField(t);
                if (field == null) {
                    throw new IndexOutOfBoundsException();
                }
                verifyType(t, obj);
                ((List) field).set(i, obj);
                return;
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldSet$FieldDescriptorLite.class */
    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        Internal.EnumLiteMap<?> getEnumType();

        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite);

        boolean isPacked();

        boolean isRepeated();
    }

    private FieldSet() {
        this.fields = SmallSortedMap.newFieldMap(16);
    }

    private FieldSet(SmallSortedMap<T, Object> smallSortedMap) {
        this.fields = smallSortedMap;
        makeImmutable();
    }

    public /* synthetic */ FieldSet(SmallSortedMap smallSortedMap, C22001 c22001) {
        this(smallSortedMap);
    }

    private FieldSet(boolean z) {
        this(SmallSortedMap.newFieldMap(0));
        makeImmutable();
    }

    public static <T extends FieldDescriptorLite<T>> SmallSortedMap<T, Object> cloneAllFieldsMap(SmallSortedMap<T, Object> smallSortedMap, boolean z) {
        SmallSortedMap<T, Object> newFieldMap = SmallSortedMap.newFieldMap(16);
        for (int i = 0; i < smallSortedMap.getNumArrayEntries(); i++) {
            cloneFieldEntry(newFieldMap, smallSortedMap.getArrayEntryAt(i), z);
        }
        for (Map.Entry<T, Object> entry : smallSortedMap.getOverflowEntries()) {
            cloneFieldEntry(newFieldMap, entry, z);
        }
        return newFieldMap;
    }

    private static <T extends FieldDescriptorLite<T>> void cloneFieldEntry(Map<T, Object> map, Map.Entry<T, Object> entry, boolean z) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            map.put(key, ((LazyField) value).getValue());
        } else if (!z || !(value instanceof List)) {
            map.put(key, value);
        } else {
            map.put(key, new ArrayList((List) value));
        }
    }

    public static Object cloneIfMutable(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    public static int computeElementSize(WireFormat.FieldType fieldType, int i, Object obj) {
        int computeTagSize = CodedOutputStream.computeTagSize(i);
        int i2 = computeTagSize;
        if (fieldType == WireFormat.FieldType.GROUP) {
            i2 = computeTagSize * 2;
        }
        return computeElementSizeNoTag(fieldType, obj) + i2;
    }

    public static int computeElementSizeNoTag(WireFormat.FieldType fieldType, Object obj) {
        switch (fieldType.ordinal()) {
            case 0:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) obj).doubleValue());
            case 1:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) obj).floatValue());
            case 2:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) obj).longValue());
            case 3:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) obj).intValue());
            case 5:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) obj).longValue());
            case 6:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) obj).intValue());
            case 7:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
            case 8:
                return obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeStringSizeNoTag((String) obj);
            case 9:
                return CodedOutputStream.computeGroupSizeNoTag((MessageLite) obj);
            case 10:
                return obj instanceof LazyField ? CodedOutputStream.computeLazyFieldSizeNoTag((LazyField) obj) : CodedOutputStream.computeMessageSizeNoTag((MessageLite) obj);
            case 11:
                return obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeByteArraySizeNoTag((byte[]) obj);
            case 12:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) obj).intValue());
            case 13:
                return obj instanceof Internal.EnumLite ? CodedOutputStream.computeEnumSizeNoTag(((Internal.EnumLite) obj).getNumber()) : CodedOutputStream.computeEnumSizeNoTag(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) obj).longValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int computeFieldSize(FieldDescriptorLite<?> fieldDescriptorLite, Object obj) {
        WireFormat.FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (fieldDescriptorLite.isRepeated()) {
            int i = 0;
            if (fieldDescriptorLite.isPacked()) {
                for (Object obj2 : (List) obj) {
                    i += computeElementSizeNoTag(liteType, obj2);
                }
                return CodedOutputStream.computeRawVarint32Size(i) + CodedOutputStream.computeTagSize(number) + i;
            }
            Iterator it = ((List) obj).iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    return i3;
                }
                i2 = i3 + computeElementSize(liteType, number, it.next());
            }
        } else {
            return computeElementSize(liteType, number, obj);
        }
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> emptySet() {
        return DEFAULT_INSTANCE;
    }

    private int getMessageSetSerializedSize(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) ? computeFieldSize(key, value) : value instanceof LazyField ? CodedOutputStream.computeLazyFieldMessageSetExtensionSize(entry.getKey().getNumber(), (LazyField) value) : CodedOutputStream.computeMessageSetExtensionSize(entry.getKey().getNumber(), (MessageLite) value);
    }

    public static int getWireFormatForFieldType(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public static <T extends FieldDescriptorLite<T>> boolean isInitialized(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            if (key.isRepeated()) {
                for (MessageLite messageLite : (List) entry.getValue()) {
                    if (!messageLite.isInitialized()) {
                        return false;
                    }
                }
                return true;
            }
            Object value = entry.getValue();
            if (value instanceof MessageLite) {
                return ((MessageLite) value).isInitialized();
            } else if (value instanceof LazyField) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    public static boolean isValidType(WireFormat.FieldType fieldType, Object obj) {
        Internal.checkNotNull(obj);
        switch (fieldType.getJavaType().ordinal()) {
            case 0:
                return obj instanceof Integer;
            case 1:
                return obj instanceof Long;
            case 2:
                return obj instanceof Float;
            case 3:
                return obj instanceof Double;
            case 4:
                return obj instanceof Boolean;
            case 5:
                return obj instanceof String;
            case 6:
                boolean z = true;
                if (!(obj instanceof ByteString)) {
                    z = obj instanceof byte[];
                }
                return z;
            case 7:
                boolean z2 = true;
                if (!(obj instanceof Integer)) {
                    z2 = obj instanceof Internal.EnumLite;
                }
                return z2;
            case 8:
                boolean z3 = true;
                if (!(obj instanceof MessageLite)) {
                    z3 = obj instanceof LazyField;
                }
                return z3;
            default:
                return false;
        }
    }

    private void mergeFromField(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        MessageLite messageLite = value;
        if (value instanceof LazyField) {
            messageLite = ((LazyField) value).getValue();
        }
        if (key.isRepeated()) {
            Object field = getField(key);
            ArrayList arrayList = field;
            if (field == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) messageLite) {
                ((List) arrayList).add(cloneIfMutable(obj));
            }
            this.fields.put((SmallSortedMap<T, Object>) key, (T) arrayList);
        } else if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            this.fields.put((SmallSortedMap<T, Object>) key, (T) cloneIfMutable(messageLite));
        } else {
            Object field2 = getField(key);
            if (field2 == null) {
                this.fields.put((SmallSortedMap<T, Object>) key, (T) cloneIfMutable(messageLite));
                return;
            }
            this.fields.put((SmallSortedMap<T, Object>) key, (T) key.internalMergeFrom(((MessageLite) field2).toBuilder(), (MessageLite) messageLite).build());
        }
    }

    public static <T extends FieldDescriptorLite<T>> Builder<T> newBuilder() {
        return new Builder<>((C22001) null);
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> newFieldSet() {
        return new FieldSet<>();
    }

    public static Object readPrimitiveField(CodedInputStream codedInputStream, WireFormat.FieldType fieldType, boolean z) throws IOException {
        return z ? WireFormat.readPrimitiveField(codedInputStream, fieldType, WireFormat.Utf8Validation.STRICT) : WireFormat.readPrimitiveField(codedInputStream, fieldType, WireFormat.Utf8Validation.LOOSE);
    }

    private void verifyType(T t, Object obj) {
        if (isValidType(t.getLiteType(), obj)) {
            return;
        }
        throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t.getNumber()), t.getLiteType().getJavaType(), obj.getClass().getName()));
    }

    public static void writeElement(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.writeGroup(i, (MessageLite) obj);
            return;
        }
        codedOutputStream.writeTag(i, getWireFormatForFieldType(fieldType, false));
        writeElementNoTag(codedOutputStream, fieldType, obj);
    }

    public static void writeElementNoTag(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (fieldType.ordinal()) {
            case 0:
                codedOutputStream.writeDoubleNoTag(((Double) obj).doubleValue());
                return;
            case 1:
                codedOutputStream.writeFloatNoTag(((Float) obj).floatValue());
                return;
            case 2:
                codedOutputStream.writeInt64NoTag(((Long) obj).longValue());
                return;
            case 3:
                codedOutputStream.writeUInt64NoTag(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.writeInt32NoTag(((Integer) obj).intValue());
                return;
            case 5:
                codedOutputStream.writeFixed64NoTag(((Long) obj).longValue());
                return;
            case 6:
                codedOutputStream.writeFixed32NoTag(((Integer) obj).intValue());
                return;
            case 7:
                codedOutputStream.writeBoolNoTag(((Boolean) obj).booleanValue());
                return;
            case 8:
                if (obj instanceof ByteString) {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.writeStringNoTag((String) obj);
                    return;
                }
            case 9:
                codedOutputStream.writeGroupNoTag((MessageLite) obj);
                return;
            case 10:
                codedOutputStream.writeMessageNoTag((MessageLite) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.writeBytesNoTag((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.writeByteArrayNoTag((byte[]) obj);
                    return;
                }
            case 12:
                codedOutputStream.writeUInt32NoTag(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof Internal.EnumLite) {
                    codedOutputStream.writeEnumNoTag(((Internal.EnumLite) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.writeEnumNoTag(((Integer) obj).intValue());
                    return;
                }
            case 14:
                codedOutputStream.writeSFixed32NoTag(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.writeSFixed64NoTag(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.writeSInt32NoTag(((Integer) obj).intValue());
                return;
            case 17:
                codedOutputStream.writeSInt64NoTag(((Long) obj).longValue());
                return;
            default:
                return;
        }
    }

    public static void writeField(FieldDescriptorLite<?> fieldDescriptorLite, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (!fieldDescriptorLite.isRepeated()) {
            if (obj instanceof LazyField) {
                writeElement(codedOutputStream, liteType, number, ((LazyField) obj).getValue());
                return;
            } else {
                writeElement(codedOutputStream, liteType, number, obj);
                return;
            }
        }
        List<Object> list = (List) obj;
        if (!fieldDescriptorLite.isPacked()) {
            for (Object obj2 : list) {
                writeElement(codedOutputStream, liteType, number, obj2);
            }
            return;
        }
        codedOutputStream.writeTag(number, 2);
        int i = 0;
        for (Object obj3 : list) {
            i += computeElementSizeNoTag(liteType, obj3);
        }
        codedOutputStream.writeRawVarint32(i);
        for (Object obj4 : list) {
            writeElementNoTag(codedOutputStream, liteType, obj4);
        }
    }

    private void writeMessageSetTo(Map.Entry<T, Object> entry, CodedOutputStream codedOutputStream) throws IOException {
        T key = entry.getKey();
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE || key.isRepeated() || key.isPacked()) {
            writeField(key, entry.getValue(), codedOutputStream);
            return;
        }
        Object value = entry.getValue();
        MessageLite messageLite = value;
        if (value instanceof LazyField) {
            messageLite = ((LazyField) value).getValue();
        }
        codedOutputStream.writeMessageSetExtension(entry.getKey().getNumber(), (MessageLite) messageLite);
    }

    public void addRepeatedField(T t, Object obj) {
        ArrayList arrayList;
        if (t.isRepeated()) {
            verifyType(t, obj);
            Object field = getField(t);
            if (field == null) {
                ArrayList arrayList2 = new ArrayList();
                this.fields.put((SmallSortedMap<T, Object>) t, (T) arrayList2);
                arrayList = arrayList2;
            } else {
                arrayList = (List) field;
            }
            arrayList.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public void clear() {
        this.fields.clear();
        this.hasLazyField = false;
    }

    public void clearField(T t) {
        this.fields.remove(t);
        if (this.fields.isEmpty()) {
            this.hasLazyField = false;
        }
    }

    public FieldSet<T> clone() {
        FieldSet<T> newFieldSet = newFieldSet();
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            Map.Entry<T, Object> arrayEntryAt = this.fields.getArrayEntryAt(i);
            newFieldSet.setField(arrayEntryAt.getKey(), arrayEntryAt.getValue());
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            newFieldSet.setField(entry.getKey(), entry.getValue());
        }
        newFieldSet.hasLazyField = this.hasLazyField;
        return newFieldSet;
    }

    public Iterator<Map.Entry<T, Object>> descendingIterator() {
        return this.hasLazyField ? new LazyField$LazyIterator(this.fields.descendingEntrySet().iterator()) : this.fields.descendingEntrySet().iterator();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.fields.equals(((FieldSet) obj).fields);
        }
        return false;
    }

    public Map<T, Object> getAllFields() {
        if (!this.hasLazyField) {
            return this.fields.isImmutable() ? this.fields : Collections.unmodifiableMap(this.fields);
        }
        SmallSortedMap cloneAllFieldsMap = cloneAllFieldsMap(this.fields, false);
        if (this.fields.isImmutable()) {
            cloneAllFieldsMap.makeImmutable();
        }
        return cloneAllFieldsMap;
    }

    public Object getField(T t) {
        Object obj = this.fields.get(t);
        MessageLite messageLite = obj;
        if (obj instanceof LazyField) {
            messageLite = ((LazyField) obj).getValue();
        }
        return messageLite;
    }

    public int getMessageSetSerializedSize() {
        int i = 0;
        for (int i2 = 0; i2 < this.fields.getNumArrayEntries(); i2++) {
            i += getMessageSetSerializedSize(this.fields.getArrayEntryAt(i2));
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            i += getMessageSetSerializedSize(entry);
        }
        return i;
    }

    public Object getRepeatedField(T t, int i) {
        if (t.isRepeated()) {
            Object field = getField(t);
            if (field == null) {
                throw new IndexOutOfBoundsException();
            }
            return ((List) field).get(i);
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int getRepeatedFieldCount(T t) {
        if (t.isRepeated()) {
            Object field = getField(t);
            if (field != null) {
                return ((List) field).size();
            }
            return 0;
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int getSerializedSize() {
        int i = 0;
        for (int i2 = 0; i2 < this.fields.getNumArrayEntries(); i2++) {
            Map.Entry<T, Object> arrayEntryAt = this.fields.getArrayEntryAt(i2);
            i += computeFieldSize(arrayEntryAt.getKey(), arrayEntryAt.getValue());
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            i += computeFieldSize(entry.getKey(), entry.getValue());
        }
        return i;
    }

    public boolean hasField(T t) {
        if (!t.isRepeated()) {
            return this.fields.get(t) != null;
        }
        throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    }

    public int hashCode() {
        return this.fields.hashCode();
    }

    public boolean isEmpty() {
        return this.fields.isEmpty();
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    public boolean isInitialized() {
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            if (!isInitialized(this.fields.getArrayEntryAt(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            if (!isInitialized(entry)) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> iterator() {
        return this.hasLazyField ? new LazyField$LazyIterator(this.fields.entrySet().iterator()) : this.fields.entrySet().iterator();
    }

    public void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        this.fields.makeImmutable();
        this.isImmutable = true;
    }

    public void mergeFrom(FieldSet<T> fieldSet) {
        for (int i = 0; i < fieldSet.fields.getNumArrayEntries(); i++) {
            mergeFromField(fieldSet.fields.getArrayEntryAt(i));
        }
        for (Map.Entry<T, Object> entry : fieldSet.fields.getOverflowEntries()) {
            mergeFromField(entry);
        }
    }

    public void setField(T t, Object obj) {
        if (!t.isRepeated()) {
            verifyType(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                verifyType(t, it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof LazyField) {
            this.hasLazyField = true;
        }
        this.fields.put((SmallSortedMap<T, Object>) t, (T) obj);
    }

    public void setRepeatedField(T t, int i, Object obj) {
        if (t.isRepeated()) {
            Object field = getField(t);
            if (field == null) {
                throw new IndexOutOfBoundsException();
            }
            verifyType(t, obj);
            ((List) field).set(i, obj);
            return;
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public void writeMessageSetTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            writeMessageSetTo(this.fields.getArrayEntryAt(i), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            writeMessageSetTo(entry, codedOutputStream);
        }
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i = 0; i < this.fields.getNumArrayEntries(); i++) {
            Map.Entry<T, Object> arrayEntryAt = this.fields.getArrayEntryAt(i);
            writeField(arrayEntryAt.getKey(), arrayEntryAt.getValue(), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.fields.getOverflowEntries()) {
            writeField(entry.getKey(), entry.getValue(), codedOutputStream);
        }
    }
}
