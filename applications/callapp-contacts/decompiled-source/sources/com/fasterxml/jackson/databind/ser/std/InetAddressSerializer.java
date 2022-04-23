package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.net.InetAddress;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/InetAddressSerializer.class */
public class InetAddressSerializer extends StdScalarSerializer<InetAddress> implements ContextualSerializer {
    protected final boolean _asNumeric;

    public InetAddressSerializer() {
        this(false);
    }

    public InetAddressSerializer(boolean z) {
        super(InetAddress.class);
        this._asNumeric = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
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
            if (r0 == 0) goto L_0x0027
            r0 = r6
            com.fasterxml.jackson.annotation.JsonFormat$Shape r0 = r0.getShape()
            r6 = r0
            r0 = r6
            boolean r0 = r0.isNumeric()
            if (r0 != 0) goto L_0x0022
            r0 = r6
            com.fasterxml.jackson.annotation.JsonFormat$Shape r1 = com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY
            if (r0 != r1) goto L_0x0027
        L_0x0022:
            r0 = 1
            r8 = r0
            goto L_0x0029
        L_0x0027:
            r0 = 0
            r8 = r0
        L_0x0029:
            r0 = r8
            r1 = r5
            boolean r1 = r1._asNumeric
            if (r0 == r1) goto L_0x003a
            com.fasterxml.jackson.databind.ser.std.InetAddressSerializer r0 = new com.fasterxml.jackson.databind.ser.std.InetAddressSerializer
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            return r0
        L_0x003a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.InetAddressSerializer.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    public void serialize(InetAddress inetAddress, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        String str;
        if (this._asNumeric) {
            str = inetAddress.getHostAddress();
        } else {
            String trim = inetAddress.toString().trim();
            int indexOf = trim.indexOf(47);
            str = trim;
            if (indexOf >= 0) {
                str = indexOf == 0 ? trim.substring(1) : trim.substring(0, indexOf);
            }
        }
        jsonGenerator.writeString(str);
    }

    public void serializeWithType(InetAddress inetAddress, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        WritableTypeId writeTypePrefix = typeSerializer.writeTypePrefix(jsonGenerator, typeSerializer.typeId(inetAddress, InetAddress.class, JsonToken.VALUE_STRING));
        serialize(inetAddress, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffix(jsonGenerator, writeTypePrefix);
    }
}
