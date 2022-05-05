package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/UUIDDeserializer.class */
public class UUIDDeserializer extends FromStringDeserializer<UUID> {
    public static final int[] HEX_DIGITS = new int[127];

    static {
        Arrays.fill(HEX_DIGITS, -1);
        for (int i = 0; i < 10; i++) {
            HEX_DIGITS[i + 48] = i;
        }
        for (int i2 = 0; i2 < 6; i2++) {
            int[] iArr = HEX_DIGITS;
            int i3 = i2 + 10;
            iArr[i2 + 97] = i3;
            iArr[i2 + 65] = i3;
        }
    }

    public UUIDDeserializer() {
        super(UUID.class);
    }

    public static int _badChar(String str, int i, DeserializationContext deserializationContext, char c) throws JsonMappingException {
        throw InvalidFormatException.from(deserializationContext.getParser(), String.format("Non-hex character '%c' (value 0x%s), not valid for UUID String: input String '%s'", Character.valueOf(c), Integer.toHexString(c), str), str, UUID.class);
    }

    public static int _int(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static long _long(byte[] bArr, int i) {
        return ((_int(bArr, i + 4) << 32) >>> 32) | (_int(bArr, i) << 32);
    }

    public static int byteFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        char charAt = str.charAt(i);
        int i2 = i + 1;
        char charAt2 = str.charAt(i2);
        if (charAt <= 127 && charAt2 <= 127) {
            int[] iArr = HEX_DIGITS;
            int i3 = iArr[charAt2] | (iArr[charAt] << 4);
            if (i3 >= 0) {
                return i3;
            }
        }
        if (charAt > 127 || HEX_DIGITS[charAt] < 0) {
            _badChar(str, i, deserializationContext, charAt);
            throw null;
        }
        _badChar(str, i2, deserializationContext, charAt2);
        throw null;
    }

    public static int intFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        return (byteFromChars(str, i, deserializationContext) << 24) + (byteFromChars(str, i + 2, deserializationContext) << 16) + (byteFromChars(str, i + 4, deserializationContext) << 8) + byteFromChars(str, i + 6, deserializationContext);
    }

    public static int shortFromChars(String str, int i, DeserializationContext deserializationContext) throws JsonMappingException {
        return (byteFromChars(str, i, deserializationContext) << 8) + byteFromChars(str, i + 2, deserializationContext);
    }

    public final void _badFormat(String str, DeserializationContext deserializationContext) throws JsonMappingException {
        throw InvalidFormatException.from(deserializationContext.getParser(), String.format("UUID has to be represented by standard 36-char representation: input String '%s'", str), str, handledType());
    }

    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public UUID _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
        if (str.length() != 36) {
            if (str.length() == 24) {
                return _fromBytes(Base64Variants.getDefaultVariant().decode(str), deserializationContext);
            }
            _badFormat(str, deserializationContext);
            throw null;
        } else if (str.charAt(8) == '-' && str.charAt(13) == '-' && str.charAt(18) == '-' && str.charAt(23) == '-') {
            return new UUID((intFromChars(str, 0, deserializationContext) << 32) + ((shortFromChars(str, 9, deserializationContext) << 16) | shortFromChars(str, 14, deserializationContext)), ((intFromChars(str, 28, deserializationContext) << 32) >>> 32) | ((shortFromChars(str, 24, deserializationContext) | (shortFromChars(str, 19, deserializationContext) << 16)) << 32));
        } else {
            _badFormat(str, deserializationContext);
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
    public UUID _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        if (obj instanceof byte[]) {
            return _fromBytes((byte[]) obj, deserializationContext);
        }
        super._deserializeEmbedded(obj, deserializationContext);
        throw null;
    }

    public final UUID _fromBytes(byte[] bArr, DeserializationContext deserializationContext) throws JsonMappingException {
        if (bArr.length == 16) {
            return new UUID(_long(bArr, 0), _long(bArr, 8));
        }
        JsonParser parser = deserializationContext.getParser();
        throw InvalidFormatException.from(parser, "Can only construct UUIDs from byte[16]; got " + bArr.length + " bytes", bArr, handledType());
    }
}
