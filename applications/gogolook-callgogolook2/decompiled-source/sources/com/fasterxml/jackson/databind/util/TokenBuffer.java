package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/TokenBuffer.class */
public class TokenBuffer extends JsonGenerator {
    public static final int DEFAULT_GENERATOR_FEATURES = JsonGenerator.Feature.collectDefaults();
    public int _appendAt;
    public boolean _closed;
    public Segment _first;
    public boolean _forceBigDecimal;
    public int _generatorFeatures;
    public boolean _hasNativeId;
    public boolean _hasNativeObjectIds;
    public boolean _hasNativeTypeIds;
    public Segment _last;
    public boolean _mayHaveNativeIds;
    public ObjectCodec _objectCodec;
    public Object _objectId;
    public Object _typeId;
    public JsonWriteContext _writeContext;

    /* renamed from: com.fasterxml.jackson.databind.util.TokenBuffer$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/TokenBuffer$1.class */
    public static /* synthetic */ class C27521 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[JsonParser.NumberType.values().length];
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:79:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:75:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:87:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:83:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:12:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:57:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:71:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:65:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:77:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:73:0x0080). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:85:0x008c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:81:0x0098). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:59:0x00a4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:55:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:69:0x00bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0111 -> B:63:0x00c8). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.BIG_INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.BIG_DECIMAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[JsonParser.NumberType.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[JsonToken.values().length];
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 7;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 9;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 10;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 12;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/TokenBuffer$Parser.class */
    public static final class Parser extends ParserMinimalBase {
        public transient ByteArrayBuilder _byteBuilder;
        public boolean _closed;
        public ObjectCodec _codec;
        public final boolean _hasNativeObjectIds;
        public final boolean _hasNativeTypeIds;
        public Segment _segment;
        public JsonLocation _location = null;
        public int _segmentPtr = -1;
        public JsonReadContext _parsingContext = JsonReadContext.createRootContext(null);

        public Parser(Segment segment, ObjectCodec objectCodec, boolean z, boolean z2) {
            super(0);
            this._segment = segment;
            this._codec = objectCodec;
            this._hasNativeTypeIds = z;
            this._hasNativeObjectIds = z2;
        }

        public final void _checkIsNumber() throws JsonParseException {
            JsonToken jsonToken = this._currToken;
            if (jsonToken == null || !jsonToken.isNumeric()) {
                throw _constructError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
            }
        }

        public final Object _currentObject() {
            return this._segment.get(this._segmentPtr);
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase
        public void _handleEOF() throws JsonParseException {
            _throwInternal();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public boolean canReadObjectId() {
            return this._hasNativeObjectIds;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public boolean canReadTypeId() {
            return this._hasNativeTypeIds;
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this._closed) {
                this._closed = true;
            }
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public BigInteger getBigIntegerValue() throws IOException {
            Number numberValue = getNumberValue();
            return numberValue instanceof BigInteger ? (BigInteger) numberValue : getNumberType() == JsonParser.NumberType.BIG_DECIMAL ? ((BigDecimal) numberValue).toBigInteger() : BigInteger.valueOf(numberValue.longValue());
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public byte[] getBinaryValue(Base64Variant base64Variant) throws IOException, JsonParseException {
            if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                Object _currentObject = _currentObject();
                if (_currentObject instanceof byte[]) {
                    return (byte[]) _currentObject;
                }
            }
            if (this._currToken == JsonToken.VALUE_STRING) {
                String text = getText();
                if (text == null) {
                    return null;
                }
                ByteArrayBuilder byteArrayBuilder = this._byteBuilder;
                if (byteArrayBuilder == null) {
                    byteArrayBuilder = new ByteArrayBuilder(100);
                    this._byteBuilder = byteArrayBuilder;
                } else {
                    byteArrayBuilder.reset();
                }
                _decodeBase64(text, byteArrayBuilder, base64Variant);
                return byteArrayBuilder.toByteArray();
            }
            throw _constructError("Current token (" + this._currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public ObjectCodec getCodec() {
            return this._codec;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonLocation getCurrentLocation() {
            JsonLocation jsonLocation = this._location;
            JsonLocation jsonLocation2 = jsonLocation;
            if (jsonLocation == null) {
                jsonLocation2 = JsonLocation.f3799NA;
            }
            return jsonLocation2;
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public String getCurrentName() {
            JsonToken jsonToken = this._currToken;
            return (jsonToken == JsonToken.START_OBJECT || jsonToken == JsonToken.START_ARRAY) ? this._parsingContext.getParent().getCurrentName() : this._parsingContext.getCurrentName();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public BigDecimal getDecimalValue() throws IOException {
            Number numberValue = getNumberValue();
            if (numberValue instanceof BigDecimal) {
                return (BigDecimal) numberValue;
            }
            int i = C27521.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[getNumberType().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return new BigDecimal((BigInteger) numberValue);
                }
                if (i != 5) {
                    return BigDecimal.valueOf(numberValue.doubleValue());
                }
            }
            return BigDecimal.valueOf(numberValue.longValue());
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public double getDoubleValue() throws IOException {
            return getNumberValue().doubleValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object getEmbeddedObject() {
            if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
                return _currentObject();
            }
            return null;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public float getFloatValue() throws IOException {
            return getNumberValue().floatValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public int getIntValue() throws IOException {
            return this._currToken == JsonToken.VALUE_NUMBER_INT ? ((Number) _currentObject()).intValue() : getNumberValue().intValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public long getLongValue() throws IOException {
            return getNumberValue().longValue();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonParser.NumberType getNumberType() throws IOException {
            Number numberValue = getNumberValue();
            if (numberValue instanceof Integer) {
                return JsonParser.NumberType.INT;
            }
            if (numberValue instanceof Long) {
                return JsonParser.NumberType.LONG;
            }
            if (numberValue instanceof Double) {
                return JsonParser.NumberType.DOUBLE;
            }
            if (numberValue instanceof BigDecimal) {
                return JsonParser.NumberType.BIG_DECIMAL;
            }
            if (numberValue instanceof BigInteger) {
                return JsonParser.NumberType.BIG_INTEGER;
            }
            if (numberValue instanceof Float) {
                return JsonParser.NumberType.FLOAT;
            }
            if (numberValue instanceof Short) {
                return JsonParser.NumberType.INT;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public final Number getNumberValue() throws IOException {
            _checkIsNumber();
            Object _currentObject = _currentObject();
            if (_currentObject instanceof Number) {
                return (Number) _currentObject;
            }
            if (_currentObject instanceof String) {
                String str = (String) _currentObject;
                return str.indexOf(46) >= 0 ? Double.valueOf(Double.parseDouble(str)) : Long.valueOf(Long.parseLong(str));
            } else if (_currentObject == null) {
                return null;
            } else {
                throw new IllegalStateException("Internal error: entry should be a Number, but is of type " + _currentObject.getClass().getName());
            }
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object getObjectId() {
            return this._segment.findObjectId(this._segmentPtr);
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public JsonStreamContext getParsingContext() {
            return this._parsingContext;
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public String getText() {
            JsonToken jsonToken = this._currToken;
            String str = null;
            String str2 = null;
            if (jsonToken == JsonToken.VALUE_STRING || jsonToken == JsonToken.FIELD_NAME) {
                Object _currentObject = _currentObject();
                if (_currentObject instanceof String) {
                    return (String) _currentObject;
                }
                if (_currentObject != null) {
                    str = _currentObject.toString();
                }
                return str;
            } else if (jsonToken == null) {
                return null;
            } else {
                int i = C27521.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()];
                if (i != 7 && i != 8) {
                    return this._currToken.asString();
                }
                Object _currentObject2 = _currentObject();
                if (_currentObject2 != null) {
                    str2 = _currentObject2.toString();
                }
                return str2;
            }
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public char[] getTextCharacters() {
            String text = getText();
            return text == null ? null : text.toCharArray();
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public int getTextLength() {
            String text = getText();
            return text == null ? 0 : text.length();
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public int getTextOffset() {
            return 0;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public JsonLocation getTokenLocation() {
            return getCurrentLocation();
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public Object getTypeId() {
            return this._segment.findTypeId(this._segmentPtr);
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public boolean hasTextCharacters() {
            return false;
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public boolean isClosed() {
            return this._closed;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public String nextFieldName() throws IOException {
            String str = null;
            if (!this._closed) {
                Segment segment = this._segment;
                if (segment == null) {
                    str = null;
                } else {
                    int i = this._segmentPtr + 1;
                    if (i >= 16 || segment.type(i) != JsonToken.FIELD_NAME) {
                        str = null;
                        if (nextToken() == JsonToken.FIELD_NAME) {
                            str = getCurrentName();
                        }
                    } else {
                        this._segmentPtr = i;
                        Object obj = this._segment.get(i);
                        String obj2 = obj instanceof String ? (String) obj : obj.toString();
                        this._parsingContext.setCurrentName(obj2);
                        return obj2;
                    }
                }
            }
            return str;
        }

        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        public JsonToken nextToken() throws IOException {
            Segment segment;
            if (this._closed || (segment = this._segment) == null) {
                return null;
            }
            int i = this._segmentPtr + 1;
            this._segmentPtr = i;
            if (i >= 16) {
                this._segmentPtr = 0;
                this._segment = segment.next();
                if (this._segment == null) {
                    return null;
                }
            }
            this._currToken = this._segment.type(this._segmentPtr);
            JsonToken jsonToken = this._currToken;
            if (jsonToken == JsonToken.FIELD_NAME) {
                Object _currentObject = _currentObject();
                this._parsingContext.setCurrentName(_currentObject instanceof String ? (String) _currentObject : _currentObject.toString());
            } else if (jsonToken == JsonToken.START_OBJECT) {
                this._parsingContext = this._parsingContext.createChildObjectContext(-1, -1);
            } else if (jsonToken == JsonToken.START_ARRAY) {
                this._parsingContext = this._parsingContext.createChildArrayContext(-1, -1);
            } else if (jsonToken == JsonToken.END_OBJECT || jsonToken == JsonToken.END_ARRAY) {
                this._parsingContext = this._parsingContext.getParent();
                if (this._parsingContext == null) {
                    this._parsingContext = JsonReadContext.createRootContext(null);
                }
            }
            return this._currToken;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
            if (r0 == com.fasterxml.jackson.core.JsonToken.START_ARRAY) goto L_0x001b;
         */
        @Override // com.fasterxml.jackson.core.base.ParserMinimalBase, com.fasterxml.jackson.core.JsonParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void overrideCurrentName(java.lang.String r5) {
            /*
                r4 = this;
                r0 = r4
                com.fasterxml.jackson.core.json.JsonReadContext r0 = r0._parsingContext
                r6 = r0
                r0 = r4
                com.fasterxml.jackson.core.JsonToken r0 = r0._currToken
                r7 = r0
                r0 = r7
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
                if (r0 == r1) goto L_0x001b
                r0 = r6
                r8 = r0
                r0 = r7
                com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
                if (r0 != r1) goto L_0x0021
            L_0x001b:
                r0 = r6
                com.fasterxml.jackson.core.json.JsonReadContext r0 = r0.getParent()
                r8 = r0
            L_0x0021:
                r0 = r8
                r1 = r5
                r0.setCurrentName(r1)     // Catch: IOException -> 0x0028
                return
            L_0x0028:
                r5 = move-exception
                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                r1 = r0
                r2 = r5
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Parser.overrideCurrentName(java.lang.String):void");
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public int readBinaryValue(Base64Variant base64Variant, OutputStream outputStream) throws IOException {
            byte[] binaryValue = getBinaryValue(base64Variant);
            if (binaryValue == null) {
                return 0;
            }
            outputStream.write(binaryValue, 0, binaryValue.length);
            return binaryValue.length;
        }

        @Override // com.fasterxml.jackson.core.JsonParser
        public void setCodec(ObjectCodec objectCodec) {
            this._codec = objectCodec;
        }

        public void setLocation(JsonLocation jsonLocation) {
            this._location = jsonLocation;
        }

        @Override // com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.core.Versioned
        public Version version() {
            return PackageVersion.VERSION;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/TokenBuffer$Segment.class */
    public static final class Segment {
        public static final JsonToken[] TOKEN_TYPES_BY_INDEX = new JsonToken[16];
        public TreeMap<Integer, Object> _nativeIds;
        public Segment _next;
        public long _tokenTypes;
        public final Object[] _tokens = new Object[16];

        static {
            JsonToken[] values = JsonToken.values();
            System.arraycopy(values, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, values.length - 1));
        }

        public final int _objectIdIndex(int i) {
            return i + i + 1;
        }

        public final int _typeIdIndex(int i) {
            return i + i;
        }

        public Segment append(int i, JsonToken jsonToken) {
            if (i < 16) {
                set(i, jsonToken);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj) {
            if (i < 16) {
                set(i, jsonToken, obj);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj, Object obj2) {
            if (i < 16) {
                set(i, jsonToken, obj, obj2);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj, obj2);
            return this._next;
        }

        public Segment append(int i, JsonToken jsonToken, Object obj, Object obj2, Object obj3) {
            if (i < 16) {
                set(i, jsonToken, obj, obj2, obj3);
                return null;
            }
            this._next = new Segment();
            this._next.set(0, jsonToken, obj, obj2, obj3);
            return this._next;
        }

        public final void assignNativeIds(int i, Object obj, Object obj2) {
            if (this._nativeIds == null) {
                this._nativeIds = new TreeMap<>();
            }
            if (obj != null) {
                this._nativeIds.put(Integer.valueOf(_objectIdIndex(i)), obj);
            }
            if (obj2 != null) {
                this._nativeIds.put(Integer.valueOf(_typeIdIndex(i)), obj2);
            }
        }

        public Object findObjectId(int i) {
            TreeMap<Integer, Object> treeMap = this._nativeIds;
            return treeMap == null ? null : treeMap.get(Integer.valueOf(_objectIdIndex(i)));
        }

        public Object findTypeId(int i) {
            TreeMap<Integer, Object> treeMap = this._nativeIds;
            return treeMap == null ? null : treeMap.get(Integer.valueOf(_typeIdIndex(i)));
        }

        public Object get(int i) {
            return this._tokens[i];
        }

        public boolean hasIds() {
            return this._nativeIds != null;
        }

        public Segment next() {
            return this._next;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void set(int r7, com.fasterxml.jackson.core.JsonToken r8) {
            /*
                r6 = this;
                r0 = r8
                int r0 = r0.ordinal()
                long r0 = (long) r0
                r9 = r0
                r0 = r9
                r11 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x0014
                r0 = r9
                r1 = r7
                r2 = 2
                int r1 = r1 << r2
                long r0 = r0 << r1
                r11 = r0
            L_0x0014:
                r0 = r6
                r1 = r6
                long r1 = r1._tokenTypes
                r2 = r11
                long r1 = r1 | r2
                r0._tokenTypes = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Segment.set(int, com.fasterxml.jackson.core.JsonToken):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void set(int r7, com.fasterxml.jackson.core.JsonToken r8, java.lang.Object r9) {
            /*
                r6 = this;
                r0 = r6
                java.lang.Object[] r0 = r0._tokens
                r1 = r7
                r2 = r9
                r0[r1] = r2
                r0 = r8
                int r0 = r0.ordinal()
                long r0 = (long) r0
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x001e
                r0 = r10
                r1 = r7
                r2 = 2
                int r1 = r1 << r2
                long r0 = r0 << r1
                r12 = r0
            L_0x001e:
                r0 = r6
                r1 = r6
                long r1 = r1._tokenTypes
                r2 = r12
                long r1 = r1 | r2
                r0._tokenTypes = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Segment.set(int, com.fasterxml.jackson.core.JsonToken, java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [long] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [long] */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void set(int r7, com.fasterxml.jackson.core.JsonToken r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r6 = this;
                r0 = r8
                int r0 = r0.ordinal()
                long r0 = (long) r0
                r11 = r0
                r0 = r11
                r13 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x0017
                r0 = r11
                r1 = r7
                r2 = 2
                int r1 = r1 << r2
                long r0 = r0 << r1
                r13 = r0
            L_0x0017:
                r0 = r6
                r1 = r13
                r2 = r6
                long r2 = r2._tokenTypes
                long r1 = r1 | r2
                r0._tokenTypes = r1
                r0 = r6
                r1 = r7
                r2 = r9
                r3 = r10
                r0.assignNativeIds(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Segment.set(int, com.fasterxml.jackson.core.JsonToken, java.lang.Object, java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void set(int r7, com.fasterxml.jackson.core.JsonToken r8, java.lang.Object r9, java.lang.Object r10, java.lang.Object r11) {
            /*
                r6 = this;
                r0 = r6
                java.lang.Object[] r0 = r0._tokens
                r1 = r7
                r2 = r9
                r0[r1] = r2
                r0 = r8
                int r0 = r0.ordinal()
                long r0 = (long) r0
                r12 = r0
                r0 = r12
                r14 = r0
                r0 = r7
                if (r0 <= 0) goto L_0x001e
                r0 = r12
                r1 = r7
                r2 = 2
                int r1 = r1 << r2
                long r0 = r0 << r1
                r14 = r0
            L_0x001e:
                r0 = r6
                r1 = r14
                r2 = r6
                long r2 = r2._tokenTypes
                long r1 = r1 | r2
                r0._tokenTypes = r1
                r0 = r6
                r1 = r7
                r2 = r10
                r3 = r11
                r0.assignNativeIds(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Segment.set(int, com.fasterxml.jackson.core.JsonToken, java.lang.Object, java.lang.Object, java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.fasterxml.jackson.core.JsonToken type(int r6) {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0._tokenTypes
                r7 = r0
                r0 = r7
                r9 = r0
                r0 = r6
                if (r0 <= 0) goto L_0x0013
                r0 = r7
                r1 = r6
                r2 = 2
                int r1 = r1 << r2
                long r0 = r0 >> r1
                r9 = r0
            L_0x0013:
                r0 = r9
                int r0 = (int) r0
                r6 = r0
                com.fasterxml.jackson.core.JsonToken[] r0 = com.fasterxml.jackson.databind.util.TokenBuffer.Segment.TOKEN_TYPES_BY_INDEX
                r1 = r6
                r2 = 15
                r1 = r1 & r2
                r0 = r0[r1]
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.Segment.type(int):com.fasterxml.jackson.core.JsonToken");
        }
    }

    public TokenBuffer(JsonParser jsonParser) {
        this(jsonParser, (DeserializationContext) null);
    }

    public TokenBuffer(JsonParser jsonParser, DeserializationContext deserializationContext) {
        boolean z = false;
        this._hasNativeId = false;
        this._objectCodec = jsonParser.getCodec();
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURES;
        this._writeContext = JsonWriteContext.createRootContext(null);
        Segment segment = new Segment();
        this._last = segment;
        this._first = segment;
        this._appendAt = 0;
        this._hasNativeTypeIds = jsonParser.canReadTypeId();
        this._hasNativeObjectIds = jsonParser.canReadObjectId();
        this._mayHaveNativeIds = this._hasNativeTypeIds | this._hasNativeObjectIds;
        this._forceBigDecimal = deserializationContext != null ? deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS) : z;
    }

    public TokenBuffer(ObjectCodec objectCodec, boolean z) {
        this._hasNativeId = false;
        this._objectCodec = objectCodec;
        this._generatorFeatures = DEFAULT_GENERATOR_FEATURES;
        this._writeContext = JsonWriteContext.createRootContext(null);
        Segment segment = new Segment();
        this._last = segment;
        this._first = segment;
        this._appendAt = 0;
        this._hasNativeTypeIds = z;
        this._hasNativeObjectIds = z;
        this._mayHaveNativeIds = this._hasNativeTypeIds | this._hasNativeObjectIds;
    }

    public final void _append(JsonToken jsonToken) {
        Segment append = this._hasNativeId ? this._last.append(this._appendAt, jsonToken, this._objectId, this._typeId) : this._last.append(this._appendAt, jsonToken);
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    public final void _append(JsonToken jsonToken, Object obj) {
        Segment append = this._hasNativeId ? this._last.append(this._appendAt, jsonToken, obj, this._objectId, this._typeId) : this._last.append(this._appendAt, jsonToken, obj);
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    public final void _appendNativeIds(StringBuilder sb) {
        Object findObjectId = this._last.findObjectId(this._appendAt - 1);
        if (findObjectId != null) {
            sb.append("[objectId=");
            sb.append(String.valueOf(findObjectId));
            sb.append(']');
        }
        Object findTypeId = this._last.findTypeId(this._appendAt - 1);
        if (findTypeId != null) {
            sb.append("[typeId=");
            sb.append(String.valueOf(findTypeId));
            sb.append(']');
        }
    }

    public final void _appendValue(JsonToken jsonToken) {
        this._writeContext.writeValue();
        Segment append = this._hasNativeId ? this._last.append(this._appendAt, jsonToken, this._objectId, this._typeId) : this._last.append(this._appendAt, jsonToken);
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    public final void _appendValue(JsonToken jsonToken, Object obj) {
        this._writeContext.writeValue();
        Segment append = this._hasNativeId ? this._last.append(this._appendAt, jsonToken, obj, this._objectId, this._typeId) : this._last.append(this._appendAt, jsonToken, obj);
        if (append == null) {
            this._appendAt++;
            return;
        }
        this._last = append;
        this._appendAt = 1;
    }

    public final void _checkNativeIds(JsonParser jsonParser) throws IOException {
        Object typeId = jsonParser.getTypeId();
        this._typeId = typeId;
        if (typeId != null) {
            this._hasNativeId = true;
        }
        Object objectId = jsonParser.getObjectId();
        this._objectId = objectId;
        if (objectId != null) {
            this._hasNativeId = true;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void _reportUnsupportedOperation() {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    public JsonParser asParser() {
        return asParser(this._objectCodec);
    }

    public JsonParser asParser(JsonParser jsonParser) {
        Parser parser = new Parser(this._first, jsonParser.getCodec(), this._hasNativeTypeIds, this._hasNativeObjectIds);
        parser.setLocation(jsonParser.getTokenLocation());
        return parser;
    }

    public JsonParser asParser(ObjectCodec objectCodec) {
        return new Parser(this._first, objectCodec, this._hasNativeTypeIds, this._hasNativeObjectIds);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteBinaryNatively() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteObjectId() {
        return this._hasNativeObjectIds;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean canWriteTypeId() {
        return this._hasNativeTypeIds;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._closed = true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void copyCurrentEvent(JsonParser jsonParser) throws IOException {
        if (this._mayHaveNativeIds) {
            _checkNativeIds(jsonParser);
        }
        switch (C27521.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonParser.getCurrentToken().ordinal()]) {
            case 1:
                writeStartObject();
                return;
            case 2:
                writeEndObject();
                return;
            case 3:
                writeStartArray();
                return;
            case 4:
                writeEndArray();
                return;
            case 5:
                writeFieldName(jsonParser.getCurrentName());
                return;
            case 6:
                if (jsonParser.hasTextCharacters()) {
                    writeString(jsonParser.getTextCharacters(), jsonParser.getTextOffset(), jsonParser.getTextLength());
                    return;
                } else {
                    writeString(jsonParser.getText());
                    return;
                }
            case 7:
                int i = C27521.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()];
                if (i == 1) {
                    writeNumber(jsonParser.getIntValue());
                    return;
                } else if (i != 2) {
                    writeNumber(jsonParser.getLongValue());
                    return;
                } else {
                    writeNumber(jsonParser.getBigIntegerValue());
                    return;
                }
            case 8:
                if (this._forceBigDecimal) {
                    writeNumber(jsonParser.getDecimalValue());
                    return;
                }
                int i2 = C27521.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[jsonParser.getNumberType().ordinal()];
                if (i2 == 3) {
                    writeNumber(jsonParser.getDecimalValue());
                    return;
                } else if (i2 != 4) {
                    writeNumber(jsonParser.getDoubleValue());
                    return;
                } else {
                    writeNumber(jsonParser.getFloatValue());
                    return;
                }
            case 9:
                writeBoolean(true);
                return;
            case 10:
                writeBoolean(false);
                return;
            case 11:
                writeNull();
                return;
            case 12:
                writeObject(jsonParser.getEmbeddedObject());
                return;
            default:
                throw new RuntimeException("Internal error: should never end up through this code path");
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void copyCurrentStructure(JsonParser jsonParser) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        JsonToken jsonToken = currentToken;
        if (currentToken == JsonToken.FIELD_NAME) {
            if (this._mayHaveNativeIds) {
                _checkNativeIds(jsonParser);
            }
            writeFieldName(jsonParser.getCurrentName());
            jsonToken = jsonParser.nextToken();
        }
        if (this._mayHaveNativeIds) {
            _checkNativeIds(jsonParser);
        }
        int i = C27521.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()];
        if (i == 1) {
            writeStartObject();
            while (jsonParser.nextToken() != JsonToken.END_OBJECT) {
                copyCurrentStructure(jsonParser);
            }
            writeEndObject();
        } else if (i != 3) {
            copyCurrentEvent(jsonParser);
        } else {
            writeStartArray();
            while (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                copyCurrentStructure(jsonParser);
            }
            writeEndArray();
        }
    }

    public TokenBuffer deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken nextToken;
        if (jsonParser.getCurrentTokenId() != JsonToken.FIELD_NAME.m33768id()) {
            copyCurrentStructure(jsonParser);
            return this;
        }
        writeStartObject();
        do {
            copyCurrentStructure(jsonParser);
            nextToken = jsonParser.nextToken();
        } while (nextToken == JsonToken.FIELD_NAME);
        if (nextToken == JsonToken.END_OBJECT) {
            writeEndObject();
            return this;
        }
        throw deserializationContext.mappingException("Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got " + nextToken);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator disable(JsonGenerator.Feature feature) {
        this._generatorFeatures = (feature.getMask() ^ (-1)) & this._generatorFeatures;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator enable(JsonGenerator.Feature feature) {
        this._generatorFeatures = feature.getMask() | this._generatorFeatures;
        return this;
    }

    public JsonToken firstToken() {
        Segment segment = this._first;
        if (segment != null) {
            return segment.type(0);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public ObjectCodec getCodec() {
        return this._objectCodec;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int getFeatureMask() {
        return this._generatorFeatures;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final JsonWriteContext getOutputContext() {
        return this._writeContext;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean isClosed() {
        return this._closed;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public boolean isEnabled(JsonGenerator.Feature feature) {
        return (feature.getMask() & this._generatorFeatures) != 0;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator overrideStdFeatures(int i, int i2) {
        this._generatorFeatures = (i & i2) | (getFeatureMask() & (i2 ^ (-1)));
        return this;
    }

    public void serialize(JsonGenerator jsonGenerator) throws IOException {
        Segment segment = this._first;
        boolean z = this._mayHaveNativeIds;
        boolean z2 = z && segment.hasIds();
        int i = -1;
        while (true) {
            int i2 = i + 1;
            Segment segment2 = segment;
            int i3 = i2;
            if (i2 >= 16) {
                segment2 = segment.next();
                if (segment2 != null) {
                    z2 = z && segment2.hasIds();
                    i3 = 0;
                } else {
                    return;
                }
            }
            JsonToken type = segment2.type(i3);
            if (type != null) {
                if (z2) {
                    Object findObjectId = segment2.findObjectId(i3);
                    if (findObjectId != null) {
                        jsonGenerator.writeObjectId(findObjectId);
                    }
                    Object findTypeId = segment2.findTypeId(i3);
                    if (findTypeId != null) {
                        jsonGenerator.writeTypeId(findTypeId);
                    }
                }
                switch (C27521.$SwitchMap$com$fasterxml$jackson$core$JsonToken[type.ordinal()]) {
                    case 1:
                        jsonGenerator.writeStartObject();
                        segment = segment2;
                        i = i3;
                        break;
                    case 2:
                        jsonGenerator.writeEndObject();
                        segment = segment2;
                        i = i3;
                        break;
                    case 3:
                        jsonGenerator.writeStartArray();
                        segment = segment2;
                        i = i3;
                        break;
                    case 4:
                        jsonGenerator.writeEndArray();
                        segment = segment2;
                        i = i3;
                        break;
                    case 5:
                        Object obj = segment2.get(i3);
                        if (!(obj instanceof SerializableString)) {
                            jsonGenerator.writeFieldName((String) obj);
                            segment = segment2;
                            i = i3;
                            break;
                        } else {
                            jsonGenerator.writeFieldName((SerializableString) obj);
                            segment = segment2;
                            i = i3;
                            break;
                        }
                    case 6:
                        Object obj2 = segment2.get(i3);
                        if (!(obj2 instanceof SerializableString)) {
                            jsonGenerator.writeString((String) obj2);
                            segment = segment2;
                            i = i3;
                            break;
                        } else {
                            jsonGenerator.writeString((SerializableString) obj2);
                            segment = segment2;
                            i = i3;
                            break;
                        }
                    case 7:
                        Object obj3 = segment2.get(i3);
                        if (!(obj3 instanceof Integer)) {
                            if (!(obj3 instanceof BigInteger)) {
                                if (!(obj3 instanceof Long)) {
                                    if (!(obj3 instanceof Short)) {
                                        jsonGenerator.writeNumber(((Number) obj3).intValue());
                                        segment = segment2;
                                        i = i3;
                                        break;
                                    } else {
                                        jsonGenerator.writeNumber(((Short) obj3).shortValue());
                                        segment = segment2;
                                        i = i3;
                                        break;
                                    }
                                } else {
                                    jsonGenerator.writeNumber(((Long) obj3).longValue());
                                    segment = segment2;
                                    i = i3;
                                    break;
                                }
                            } else {
                                jsonGenerator.writeNumber((BigInteger) obj3);
                                segment = segment2;
                                i = i3;
                                break;
                            }
                        } else {
                            jsonGenerator.writeNumber(((Integer) obj3).intValue());
                            segment = segment2;
                            i = i3;
                            break;
                        }
                    case 8:
                        Object obj4 = segment2.get(i3);
                        if (obj4 instanceof Double) {
                            jsonGenerator.writeNumber(((Double) obj4).doubleValue());
                            segment = segment2;
                            i = i3;
                            break;
                        } else if (obj4 instanceof BigDecimal) {
                            jsonGenerator.writeNumber((BigDecimal) obj4);
                            segment = segment2;
                            i = i3;
                            break;
                        } else if (obj4 instanceof Float) {
                            jsonGenerator.writeNumber(((Float) obj4).floatValue());
                            segment = segment2;
                            i = i3;
                            break;
                        } else if (obj4 == null) {
                            jsonGenerator.writeNull();
                            segment = segment2;
                            i = i3;
                            break;
                        } else if (obj4 instanceof String) {
                            jsonGenerator.writeNumber((String) obj4);
                            segment = segment2;
                            i = i3;
                            break;
                        } else {
                            throw new JsonGenerationException(String.format("Unrecognized value type for VALUE_NUMBER_FLOAT: %s, can not serialize", obj4.getClass().getName()), jsonGenerator);
                        }
                    case 9:
                        jsonGenerator.writeBoolean(true);
                        segment = segment2;
                        i = i3;
                        break;
                    case 10:
                        jsonGenerator.writeBoolean(false);
                        segment = segment2;
                        i = i3;
                        break;
                    case 11:
                        jsonGenerator.writeNull();
                        segment = segment2;
                        i = i3;
                        break;
                    case 12:
                        Object obj5 = segment2.get(i3);
                        if (!(obj5 instanceof RawValue)) {
                            jsonGenerator.writeObject(obj5);
                            segment = segment2;
                            i = i3;
                            break;
                        } else {
                            ((RawValue) obj5).serialize(jsonGenerator);
                            segment = segment2;
                            i = i3;
                            break;
                        }
                    default:
                        throw new RuntimeException("Internal error: should never end up through this code path");
                }
            } else {
                return;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator setCodec(ObjectCodec objectCodec) {
        this._objectCodec = objectCodec;
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    @Deprecated
    public JsonGenerator setFeatureMask(int i) {
        this._generatorFeatures = i;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[TokenBuffer: ");
        JsonParser asParser = asParser();
        int i = 0;
        boolean z = this._hasNativeTypeIds || this._hasNativeObjectIds;
        while (true) {
            try {
                JsonToken nextToken = asParser.nextToken();
                if (nextToken == null) {
                    break;
                }
                if (z) {
                    _appendNativeIds(sb);
                }
                if (i < 100) {
                    if (i > 0) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                    }
                    sb.append(nextToken.toString());
                    if (nextToken == JsonToken.FIELD_NAME) {
                        sb.append('(');
                        sb.append(asParser.getCurrentName());
                        sb.append(')');
                    }
                }
                i++;
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        if (i >= 100) {
            sb.append(" ... (truncated ");
            sb.append(i - 100);
            sb.append(" entries)");
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public JsonGenerator useDefaultPrettyPrinter() {
        return this;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        writeObject(bArr2);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeBoolean(boolean z) throws IOException {
        _appendValue(z ? JsonToken.VALUE_TRUE : JsonToken.VALUE_FALSE);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndArray() throws IOException {
        _append(JsonToken.END_ARRAY);
        JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeEndObject() throws IOException {
        _append(JsonToken.END_OBJECT);
        JsonWriteContext parent = this._writeContext.getParent();
        if (parent != null) {
            this._writeContext = parent;
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeFieldName(SerializableString serializableString) throws IOException {
        _append(JsonToken.FIELD_NAME, serializableString);
        this._writeContext.writeFieldName(serializableString.getValue());
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeFieldName(String str) throws IOException {
        _append(JsonToken.FIELD_NAME, str);
        this._writeContext.writeFieldName(str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNull() throws IOException {
        _appendValue(JsonToken.VALUE_NULL);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(double d) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_FLOAT, Double.valueOf(d));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(float f) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_FLOAT, Float.valueOf(f));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(int i) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_INT, Integer.valueOf(i));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(long j) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_INT, Long.valueOf(j));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(String str) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_FLOAT, str);
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) throws IOException {
        if (bigDecimal == null) {
            writeNull();
        } else {
            _appendValue(JsonToken.VALUE_NUMBER_FLOAT, bigDecimal);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(BigInteger bigInteger) throws IOException {
        if (bigInteger == null) {
            writeNull();
        } else {
            _appendValue(JsonToken.VALUE_NUMBER_INT, bigInteger);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeNumber(short s) throws IOException {
        _appendValue(JsonToken.VALUE_NUMBER_INT, Short.valueOf(s));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeObject(Object obj) throws IOException {
        if (obj == null) {
            writeNull();
        } else if (obj.getClass() == byte[].class || (obj instanceof RawValue)) {
            _appendValue(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
        } else {
            ObjectCodec objectCodec = this._objectCodec;
            if (objectCodec == null) {
                _appendValue(JsonToken.VALUE_EMBEDDED_OBJECT, obj);
            } else {
                objectCodec.writeValue(this, obj);
            }
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeObjectId(Object obj) {
        this._objectId = obj;
        this._hasNativeId = true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char c) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(SerializableString serializableString) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(String str, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(String str) throws IOException {
        _appendValue(JsonToken.VALUE_EMBEDDED_OBJECT, new RawValue(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r9 != r7.length()) goto L_0x000f;
     */
    @Override // com.fasterxml.jackson.core.JsonGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeRawValue(java.lang.String r7, int r8, int r9) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r8
            if (r0 > 0) goto L_0x000f
            r0 = r7
            r10 = r0
            r0 = r9
            r1 = r7
            int r1 = r1.length()
            if (r0 == r1) goto L_0x0019
        L_0x000f:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r8
            int r2 = r2 + r3
            java.lang.String r0 = r0.substring(r1, r2)
            r10 = r0
        L_0x0019:
            r0 = r6
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_EMBEDDED_OBJECT
            com.fasterxml.jackson.databind.util.RawValue r2 = new com.fasterxml.jackson.databind.util.RawValue
            r3 = r2
            r4 = r10
            r3.<init>(r4)
            r0._appendValue(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.TokenBuffer.writeRawValue(java.lang.String, int, int):void");
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeRawValue(char[] cArr, int i, int i2) throws IOException {
        _appendValue(JsonToken.VALUE_EMBEDDED_OBJECT, new String(cArr, i, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartArray() throws IOException {
        _append(JsonToken.START_ARRAY);
        this._writeContext = this._writeContext.createChildArrayContext();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public final void writeStartObject() throws IOException {
        _append(JsonToken.START_OBJECT);
        this._writeContext = this._writeContext.createChildObjectContext();
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(SerializableString serializableString) throws IOException {
        if (serializableString == null) {
            writeNull();
        } else {
            _appendValue(JsonToken.VALUE_STRING, serializableString);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(String str) throws IOException {
        if (str == null) {
            writeNull();
        } else {
            _appendValue(JsonToken.VALUE_STRING, str);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeString(char[] cArr, int i, int i2) throws IOException {
        writeString(new String(cArr, i, i2));
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeTree(TreeNode treeNode) throws IOException {
        if (treeNode == null) {
            writeNull();
            return;
        }
        ObjectCodec objectCodec = this._objectCodec;
        if (objectCodec == null) {
            _appendValue(JsonToken.VALUE_EMBEDDED_OBJECT, treeNode);
        } else {
            objectCodec.writeTree(this, treeNode);
        }
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeTypeId(Object obj) {
        this._typeId = obj;
        this._hasNativeId = true;
    }

    @Override // com.fasterxml.jackson.core.JsonGenerator
    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
        throw null;
    }
}
