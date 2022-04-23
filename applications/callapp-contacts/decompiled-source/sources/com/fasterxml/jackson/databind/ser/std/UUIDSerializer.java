package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/UUIDSerializer.class */
public class UUIDSerializer extends StdScalarSerializer<UUID> implements ContextualSerializer {
    static final char[] HEX_CHARS = "0123456789abcdef".toCharArray();
    protected final Boolean _asBinary;

    public UUIDSerializer() {
        this(null);
    }

    protected UUIDSerializer(Boolean bool) {
        super(UUID.class);
        this._asBinary = bool;
    }

    private static final void _appendInt(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 24);
        int i3 = i2 + 1;
        bArr[i3] = (byte) (i >> 16);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i >> 8);
        bArr[i4 + 1] = (byte) i;
    }

    private static void _appendInt(int i, char[] cArr, int i2) {
        _appendShort(i >> 16, cArr, i2);
        _appendShort(i, cArr, i2 + 4);
    }

    private static void _appendShort(int i, char[] cArr, int i2) {
        char[] cArr2 = HEX_CHARS;
        cArr[i2] = cArr2[(i >> 12) & 15];
        int i3 = i2 + 1;
        cArr[i3] = cArr2[(i >> 8) & 15];
        int i4 = i3 + 1;
        cArr[i4] = cArr2[(i >> 4) & 15];
        cArr[i4 + 1] = cArr2[i & 15];
    }

    private static final byte[] _asBytes(UUID uuid) {
        byte[] bArr = new byte[16];
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        _appendInt((int) (mostSignificantBits >> 32), bArr, 0);
        _appendInt((int) mostSignificantBits, bArr, 4);
        _appendInt((int) (leastSignificantBits >> 32), bArr, 8);
        _appendInt((int) leastSignificantBits, bArr, 12);
        return bArr;
    }

    protected boolean _writeAsBinary(JsonGenerator jsonGenerator) {
        Boolean bool = this._asBinary;
        return bool != null ? bool.booleanValue() : !(jsonGenerator instanceof TokenBuffer) && jsonGenerator.canWriteBinaryNatively();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        visitStringFormat(jsonFormatVisitorWrapper, javaType, JsonValueFormat.UUID);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r6, com.fasterxml.jackson.databind.BeanProperty r7) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r5
            java.lang.Class r3 = r3.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r0 = r0.findFormatOverrides(r1, r2, r3)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0030
            r0 = r6
            com.fasterxml.jackson.annotation.JsonFormat$Shape r0 = r0.getShape()
            r6 = r0
            r0 = r6
            com.fasterxml.jackson.annotation.JsonFormat$Shape r1 = com.fasterxml.jackson.annotation.JsonFormat.Shape.BINARY
            if (r0 != r1) goto L_0x0022
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r6 = r0
            goto L_0x0032
        L_0x0022:
            r0 = r6
            com.fasterxml.jackson.annotation.JsonFormat$Shape r1 = com.fasterxml.jackson.annotation.JsonFormat.Shape.STRING
            if (r0 != r1) goto L_0x0030
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            goto L_0x0032
        L_0x0030:
            r0 = 0
            r6 = r0
        L_0x0032:
            r0 = r6
            r1 = r5
            java.lang.Boolean r1 = r1._asBinary
            boolean r0 = java.util.Objects.equals(r0, r1)
            if (r0 != 0) goto L_0x0046
            com.fasterxml.jackson.databind.ser.std.UUIDSerializer r0 = new com.fasterxml.jackson.databind.ser.std.UUIDSerializer
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            return r0
        L_0x0046:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.UUIDSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public boolean isEmpty(SerializerProvider serializerProvider, UUID uuid) {
        return uuid.getLeastSignificantBits() == 0 && uuid.getMostSignificantBits() == 0;
    }

    public void serialize(UUID uuid, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (_writeAsBinary(jsonGenerator)) {
            jsonGenerator.writeBinary(_asBytes(uuid));
            return;
        }
        char[] cArr = new char[36];
        long mostSignificantBits = uuid.getMostSignificantBits();
        _appendInt((int) (mostSignificantBits >> 32), cArr, 0);
        cArr[8] = (char) 45;
        int i = (int) mostSignificantBits;
        _appendShort(i >>> 16, cArr, 9);
        cArr[13] = (char) 45;
        _appendShort(i, cArr, 14);
        cArr[18] = (char) 45;
        long leastSignificantBits = uuid.getLeastSignificantBits();
        _appendShort((int) (leastSignificantBits >>> 48), cArr, 19);
        cArr[23] = (char) 45;
        _appendShort((int) (leastSignificantBits >>> 32), cArr, 24);
        _appendInt((int) leastSignificantBits, cArr, 28);
        jsonGenerator.writeString(cArr, 0, 36);
    }
}
