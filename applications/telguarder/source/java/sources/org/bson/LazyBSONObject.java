package org.bson;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.UuidCodec;
import org.bson.p028io.ByteBufferBsonInput;
import org.bson.types.BSONTimestamp;
import org.bson.types.Binary;
import org.bson.types.Code;
import org.bson.types.CodeWScope;
import org.bson.types.MaxKey;
import org.bson.types.MinKey;
import org.bson.types.Symbol;
/* loaded from: classes-dex2jar.jar:org/bson/LazyBSONObject.class */
public class LazyBSONObject implements BSONObject {
    private final byte[] bytes;
    private final LazyBSONCallback callback;
    private final int offset;

    /* renamed from: org.bson.LazyBSONObject$2 */
    /* loaded from: classes-dex2jar.jar:org/bson/LazyBSONObject$2.class */
    public static /* synthetic */ class C25322 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;

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
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BINARY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.UNDEFINED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.OBJECT_ID.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BOOLEAN.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DATE_TIME.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.REGULAR_EXPRESSION.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DB_POINTER.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.SYMBOL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT32.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.TIMESTAMP.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT64.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DECIMAL128.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MIN_KEY.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MAX_KEY.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
        }
    }

    public LazyBSONObject(byte[] bArr, int i, LazyBSONCallback lazyBSONCallback) {
        this.bytes = bArr;
        this.callback = lazyBSONCallback;
        this.offset = i;
    }

    public LazyBSONObject(byte[] bArr, LazyBSONCallback lazyBSONCallback) {
        this(bArr, 0, lazyBSONCallback);
    }

    private ByteBuffer getBufferForInternalBytes() {
        byte[] bArr = this.bytes;
        int i = this.offset;
        ByteBuffer slice = ByteBuffer.wrap(bArr, i, bArr.length - i).slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        slice.limit(slice.getInt());
        slice.rewind();
        return slice;
    }

    private Object readArray(BsonBinaryReader bsonBinaryReader) {
        int position = bsonBinaryReader.getBsonInput().getPosition();
        bsonBinaryReader.skipValue();
        return this.callback.createArray(this.bytes, this.offset + position);
    }

    private Object readDocument(BsonBinaryReader bsonBinaryReader) {
        int position = bsonBinaryReader.getBsonInput().getPosition();
        bsonBinaryReader.skipValue();
        return this.callback.createObject(this.bytes, this.offset + position);
    }

    private Object readJavaScriptWithScopeDocument(BsonBinaryReader bsonBinaryReader) {
        int position = bsonBinaryReader.getBsonInput().getPosition();
        bsonBinaryReader.readStartDocument();
        while (bsonBinaryReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            bsonBinaryReader.skipName();
            bsonBinaryReader.skipValue();
        }
        bsonBinaryReader.readEndDocument();
        return this.callback.createObject(this.bytes, this.offset + position);
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BSONObject
    public boolean containsField(String str) {
        BsonBinaryReader bsonReader = getBsonReader();
        try {
            bsonReader.readStartDocument();
            while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                if (bsonReader.readName().equals(str)) {
                    bsonReader.close();
                    return true;
                }
                bsonReader.skipValue();
            }
            bsonReader.close();
            return false;
        } catch (Throwable th) {
            bsonReader.close();
            throw th;
        }
    }

    @Override // org.bson.BSONObject
    @Deprecated
    public boolean containsKey(String str) {
        return containsField(str);
    }

    /* JADX WARN: Finally extract failed */
    public Set<Map.Entry<String, Object>> entrySet() {
        final ArrayList arrayList = new ArrayList();
        BsonBinaryReader bsonReader = getBsonReader();
        try {
            bsonReader.readStartDocument();
            while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry(bsonReader.readName(), readValue(bsonReader)));
            }
            bsonReader.readEndDocument();
            bsonReader.close();
            return new Set<Map.Entry<String, Object>>() { // from class: org.bson.LazyBSONObject.1
                public boolean add(Map.Entry<String, Object> entry) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public boolean addAll(Collection<? extends Map.Entry<String, Object>> collection) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public void clear() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public boolean contains(Object obj) {
                    return arrayList.contains(obj);
                }

                @Override // java.util.Set, java.util.Collection
                public boolean containsAll(Collection<?> collection) {
                    return arrayList.containsAll(collection);
                }

                @Override // java.util.Set, java.util.Collection
                public boolean isEmpty() {
                    return arrayList.isEmpty();
                }

                @Override // java.util.Set, java.util.Collection, java.lang.Iterable
                public Iterator<Map.Entry<String, Object>> iterator() {
                    return arrayList.iterator();
                }

                @Override // java.util.Set, java.util.Collection
                public boolean remove(Object obj) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public boolean removeAll(Collection<?> collection) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public boolean retainAll(Collection<?> collection) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.Set, java.util.Collection
                public int size() {
                    return arrayList.size();
                }

                @Override // java.util.Set, java.util.Collection
                public Object[] toArray() {
                    return arrayList.toArray();
                }

                @Override // java.util.Set, java.util.Collection
                public <T> T[] toArray(T[] tArr) {
                    return (T[]) arrayList.toArray(tArr);
                }
            };
        } catch (Throwable th) {
            bsonReader.close();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    public boolean equals(Object obj) {
        byte b;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LazyBSONObject lazyBSONObject = (LazyBSONObject) obj;
        byte[] bArr = this.bytes;
        byte[] bArr2 = lazyBSONObject.bytes;
        if (bArr == bArr2 && this.offset == lazyBSONObject.offset) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length == 0 || bArr2.length == 0 || bArr2[lazyBSONObject.offset] != (b = bArr[this.offset])) {
            return false;
        }
        for (int i = 0; i < b; i++) {
            if (this.bytes[this.offset + i] != lazyBSONObject.bytes[lazyBSONObject.offset + i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
        r7 = readValue(r0);
     */
    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BSONObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object get(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r3
            org.bson.BsonBinaryReader r0 = r0.getBsonReader()
            r5 = r0
            r0 = r5
            r0.readStartDocument()     // Catch: java.lang.Throwable -> L3b
            r0 = 0
            r6 = r0
        Lb:
            r0 = r6
            r7 = r0
            r0 = r5
            org.bson.BsonType r0 = r0.readBsonType()     // Catch: java.lang.Throwable -> L3b
            org.bson.BsonType r1 = org.bson.BsonType.END_OF_DOCUMENT     // Catch: java.lang.Throwable -> L3b
            if (r0 == r1) goto L34
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.readName()     // Catch: java.lang.Throwable -> L3b
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L2d
            r0 = r3
            r1 = r5
            java.lang.Object r0 = r0.readValue(r1)     // Catch: java.lang.Throwable -> L3b
            r7 = r0
            goto L34
        L2d:
            r0 = r5
            r0.skipValue()     // Catch: java.lang.Throwable -> L3b
            goto Lb
        L34:
            r0 = r5
            r0.close()
            r0 = r7
            return r0
        L3b:
            r4 = move-exception
            r0 = r5
            r0.close()
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.LazyBSONObject.get(java.lang.String):java.lang.Object");
    }

    public int getBSONSize() {
        return getBufferForInternalBytes().getInt();
    }

    public BsonBinaryReader getBsonReader() {
        return new BsonBinaryReader(new ByteBufferBsonInput(new ByteBufNIO(getBufferForInternalBytes())));
    }

    protected byte[] getBytes() {
        return this.bytes;
    }

    protected int getOffset() {
        return this.offset;
    }

    public int hashCode() {
        int bSONSize = getBSONSize();
        int i = 1;
        for (int i2 = this.offset; i2 < this.offset + bSONSize; i2++) {
            i = (i * 31) + this.bytes[i2];
        }
        return i;
    }

    public boolean isEmpty() {
        return keySet().size() == 0;
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.bson.BSONObject
    public Set<String> keySet() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        BsonBinaryReader bsonReader = getBsonReader();
        try {
            bsonReader.readStartDocument();
            while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
                linkedHashSet.add(bsonReader.readName());
                bsonReader.skipValue();
            }
            bsonReader.readEndDocument();
            bsonReader.close();
            return Collections.unmodifiableSet(linkedHashSet);
        } catch (Throwable th) {
            bsonReader.close();
            throw th;
        }
    }

    public int pipe(OutputStream outputStream) throws IOException {
        return Channels.newChannel(outputStream).write(getBufferForInternalBytes());
    }

    @Override // org.bson.BSONObject
    public Object put(String str, Object obj) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // org.bson.BSONObject, java.util.AbstractMap, java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // org.bson.BSONObject
    public void putAll(BSONObject bSONObject) {
        throw new UnsupportedOperationException("Object is read only");
    }

    public Object readValue(BsonBinaryReader bsonBinaryReader) {
        switch (C25322.$SwitchMap$org$bson$BsonType[bsonBinaryReader.getCurrentBsonType().ordinal()]) {
            case 1:
                return readDocument(bsonBinaryReader);
            case 2:
                return readArray(bsonBinaryReader);
            case 3:
                return Double.valueOf(bsonBinaryReader.readDouble());
            case 4:
                return bsonBinaryReader.readString();
            case 5:
                byte peekBinarySubType = bsonBinaryReader.peekBinarySubType();
                if (BsonBinarySubType.isUuid(peekBinarySubType) && bsonBinaryReader.peekBinarySize() == 16) {
                    return new UuidCodec(UuidRepresentation.JAVA_LEGACY).decode((BsonReader) bsonBinaryReader, DecoderContext.builder().build());
                }
                BsonBinary readBinaryData = bsonBinaryReader.readBinaryData();
                return (peekBinarySubType == BsonBinarySubType.BINARY.getValue() || peekBinarySubType == BsonBinarySubType.OLD_BINARY.getValue()) ? readBinaryData.getData() : new Binary(readBinaryData.getType(), readBinaryData.getData());
            case 6:
                bsonBinaryReader.readNull();
                return null;
            case 7:
                bsonBinaryReader.readUndefined();
                return null;
            case 8:
                return bsonBinaryReader.readObjectId();
            case 9:
                return Boolean.valueOf(bsonBinaryReader.readBoolean());
            case 10:
                return new Date(bsonBinaryReader.readDateTime());
            case 11:
                BsonRegularExpression readRegularExpression = bsonBinaryReader.readRegularExpression();
                return Pattern.compile(readRegularExpression.getPattern(), BSON.regexFlags(readRegularExpression.getOptions()));
            case 12:
                BsonDbPointer readDBPointer = bsonBinaryReader.readDBPointer();
                return this.callback.createDBRef(readDBPointer.getNamespace(), readDBPointer.getId());
            case 13:
                return new Code(bsonBinaryReader.readJavaScript());
            case 14:
                return new Symbol(bsonBinaryReader.readSymbol());
            case 15:
                return new CodeWScope(bsonBinaryReader.readJavaScriptWithScope(), (BSONObject) readJavaScriptWithScopeDocument(bsonBinaryReader));
            case 16:
                return Integer.valueOf(bsonBinaryReader.readInt32());
            case 17:
                BsonTimestamp readTimestamp = bsonBinaryReader.readTimestamp();
                return new BSONTimestamp(readTimestamp.getTime(), readTimestamp.getInc());
            case 18:
                return Long.valueOf(bsonBinaryReader.readInt64());
            case 19:
                return bsonBinaryReader.readDecimal128();
            case 20:
                bsonBinaryReader.readMinKey();
                return new MinKey();
            case 21:
                bsonBinaryReader.readMaxKey();
                return new MaxKey();
            default:
                throw new IllegalArgumentException("unhandled BSON type: " + bsonBinaryReader.getCurrentBsonType());
        }
    }

    @Override // org.bson.BSONObject
    public Object removeField(String str) {
        throw new UnsupportedOperationException("Object is read only");
    }

    @Override // org.bson.BSONObject
    public Map toMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Object> entry : entrySet()) {
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
