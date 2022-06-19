package com.explorestack.protobuf;

import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.Writer;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedOutputStreamWriter.class */
public final class CodedOutputStreamWriter implements Writer {
    private final CodedOutputStream output;

    /* renamed from: com.explorestack.protobuf.CodedOutputStreamWriter$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/CodedOutputStreamWriter$1.class */
    public static /* synthetic */ class C96981 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    private CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) Internal.checkNotNull(codedOutputStream, "output");
        this.output = codedOutputStream2;
        codedOutputStream2.wrapper = this;
    }

    public static CodedOutputStreamWriter forCodedOutput(CodedOutputStream codedOutputStream) {
        return codedOutputStream.wrapper != null ? codedOutputStream.wrapper : new CodedOutputStreamWriter(codedOutputStream);
    }

    private <V> void writeDeterministicBooleanMapEntry(int i, boolean z, V v, MapEntryLite.Metadata<Boolean, V> metadata) throws IOException {
        this.output.writeTag(i, 2);
        this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Boolean.valueOf(z), v));
        MapEntryLite.writeTo(this.output, metadata, Boolean.valueOf(z), v);
    }

    private <V> void writeDeterministicIntegerMap(int i, MapEntryLite.Metadata<Integer, V> metadata, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        int i2 = 0;
        for (Integer num : map.keySet()) {
            iArr[i2] = num.intValue();
            i2++;
        }
        Arrays.sort(iArr);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            V v = map.get(Integer.valueOf(i4));
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Integer.valueOf(i4), v));
            MapEntryLite.writeTo(this.output, metadata, Integer.valueOf(i4), v);
        }
    }

    private <V> void writeDeterministicLongMap(int i, MapEntryLite.Metadata<Long, V> metadata, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        int i2 = 0;
        for (Long l : map.keySet()) {
            jArr[i2] = l.longValue();
            i2++;
        }
        Arrays.sort(jArr);
        for (int i3 = 0; i3 < size; i3++) {
            long j = jArr[i3];
            V v = map.get(Long.valueOf(j));
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, Long.valueOf(j), v));
            MapEntryLite.writeTo(this.output, metadata, Long.valueOf(j), v);
        }
    }

    private <K, V> void writeDeterministicMap(int i, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        switch (C96981.$SwitchMap$com$google$protobuf$WireFormat$FieldType[metadata.keyType.ordinal()]) {
            case 1:
                V v = map.get(Boolean.FALSE);
                if (v != null) {
                    writeDeterministicBooleanMapEntry(i, false, v, metadata);
                }
                V v2 = map.get(Boolean.TRUE);
                if (v2 == null) {
                    return;
                }
                writeDeterministicBooleanMapEntry(i, true, v2, metadata);
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                writeDeterministicIntegerMap(i, metadata, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                writeDeterministicLongMap(i, metadata, map);
                return;
            case 12:
                writeDeterministicStringMap(i, metadata, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + metadata.keyType);
        }
    }

    private <V> void writeDeterministicStringMap(int i, MapEntryLite.Metadata<String, V> metadata, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        int i2 = 0;
        for (String str : map.keySet()) {
            strArr[i2] = str;
            i2++;
        }
        Arrays.sort(strArr);
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = strArr[i3];
            V v = map.get(str2);
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, str2, v));
            MapEntryLite.writeTo(this.output, metadata, str2, v);
        }
    }

    private void writeLazyString(int i, Object obj) throws IOException {
        if (obj instanceof String) {
            this.output.writeString(i, (String) obj);
        } else {
            this.output.writeBytes(i, (ByteString) obj);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    public final int getTotalBytesWritten() {
        return this.output.getTotalBytesWritten();
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeBool(int i, boolean z) throws IOException {
        this.output.writeBool(i, z);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeBoolList(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeBool(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeBoolSizeNoTag(list.get(i4).booleanValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeBoolNoTag(list.get(i5).booleanValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeBytes(int i, ByteString byteString) throws IOException {
        this.output.writeBytes(i, byteString);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeBytesList(int i, List<ByteString> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.output.writeBytes(i, list.get(i2));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeDouble(int i, double d) throws IOException {
        this.output.writeDouble(i, d);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeDoubleList(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeDouble(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeDoubleSizeNoTag(list.get(i4).doubleValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeDoubleNoTag(list.get(i5).doubleValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeEndGroup(int i) throws IOException {
        this.output.writeTag(i, 4);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeEnum(int i, int i2) throws IOException {
        this.output.writeEnum(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeEnumList(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeEnum(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeEnumSizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeEnumNoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed32(int i, int i2) throws IOException {
        this.output.writeFixed32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeFixed32(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeFixed32SizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeFixed32NoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed64(int i, long j) throws IOException {
        this.output.writeFixed64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFixed64List(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeFixed64(i, list.get(i2).longValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeFixed64SizeNoTag(list.get(i4).longValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeFixed64NoTag(list.get(i5).longValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFloat(int i, float f) throws IOException {
        this.output.writeFloat(i, f);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeFloatList(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeFloat(i, list.get(i2).floatValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeFloatSizeNoTag(list.get(i4).floatValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeFloatNoTag(list.get(i5).floatValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroup(int i, Object obj) throws IOException {
        this.output.writeGroup(i, (MessageLite) obj);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroup(int i, Object obj, Schema schema) throws IOException {
        this.output.writeGroup(i, (MessageLite) obj, schema);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroupList(int i, List<?> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeGroup(i, list.get(i2));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeGroupList(int i, List<?> list, Schema schema) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeGroup(i, list.get(i2), schema);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt32(int i, int i2) throws IOException {
        this.output.writeInt32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeInt32(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeInt32SizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeInt32NoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt64(int i, long j) throws IOException {
        this.output.writeInt64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeInt64(i, list.get(i2).longValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeInt64SizeNoTag(list.get(i4).longValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeInt64NoTag(list.get(i5).longValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final <K, V> void writeMap(int i, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        if (this.output.isSerializationDeterministic()) {
            writeDeterministicMap(i, metadata, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.output.writeTag(i, 2);
            this.output.writeUInt32NoTag(MapEntryLite.computeSerializedSize(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.writeTo(this.output, metadata, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessage(int i, Object obj) throws IOException {
        this.output.writeMessage(i, (MessageLite) obj);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessage(int i, Object obj, Schema schema) throws IOException {
        this.output.writeMessage(i, (MessageLite) obj, schema);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageList(int i, List<?> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeMessage(i, list.get(i2));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageList(int i, List<?> list, Schema schema) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            writeMessage(i, list.get(i2), schema);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeMessageSetItem(int i, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.output.writeRawMessageSetExtension(i, (ByteString) obj);
        } else {
            this.output.writeMessageSetExtension(i, (MessageLite) obj);
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed32(int i, int i2) throws IOException {
        this.output.writeSFixed32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed32List(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeSFixed32(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeSFixed32SizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeSFixed32NoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed64(int i, long j) throws IOException {
        this.output.writeSFixed64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSFixed64List(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeSFixed64(i, list.get(i2).longValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeSFixed64SizeNoTag(list.get(i4).longValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeSFixed64NoTag(list.get(i5).longValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt32(int i, int i2) throws IOException {
        this.output.writeSInt32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeSInt32(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeSInt32SizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeSInt32NoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt64(int i, long j) throws IOException {
        this.output.writeSInt64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeSInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeSInt64(i, list.get(i2).longValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeSInt64SizeNoTag(list.get(i4).longValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeSInt64NoTag(list.get(i5).longValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeStartGroup(int i) throws IOException {
        this.output.writeTag(i, 3);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeString(int i, String str) throws IOException {
        this.output.writeString(i, str);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeStringList(int i, List<String> list) throws IOException {
        if (!(list instanceof LazyStringList)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeString(i, list.get(i2));
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            writeLazyString(i, lazyStringList.getRaw(i3));
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt32(int i, int i2) throws IOException {
        this.output.writeUInt32(i, i2);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt32List(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeUInt32(i, list.get(i2).intValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeUInt32SizeNoTag(list.get(i4).intValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeUInt32NoTag(list.get(i5).intValue());
        }
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt64(int i, long j) throws IOException {
        this.output.writeUInt64(i, j);
    }

    @Override // com.explorestack.protobuf.Writer
    public final void writeUInt64List(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.output.writeUInt64(i, list.get(i2).longValue());
            }
            return;
        }
        this.output.writeTag(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += CodedOutputStream.computeUInt64SizeNoTag(list.get(i4).longValue());
        }
        this.output.writeUInt32NoTag(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.output.writeUInt64NoTag(list.get(i5).longValue());
        }
    }
}
