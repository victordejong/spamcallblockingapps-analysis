package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64.class */
public enum Base64 {
    ;
    
    private static final Base64Codec CODEC = new Base64Codec();

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[str.length()];
        return CODEC.m38267a(bArr, CodecUtils.sanitize(str, bArr));
    }

    public static byte[] decode(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (bArr != null) {
            bArr2 = bArr.length == 0 ? bArr : CODEC.m38267a(bArr, bArr.length);
        }
        return bArr2;
    }

    public static byte[] encode(byte[] bArr) {
        byte[] bArr2 = bArr;
        if (bArr != null) {
            bArr2 = bArr.length == 0 ? bArr : CODEC.m38268a(bArr);
        }
        return bArr2;
    }

    public static String encodeAsString(byte... bArr) {
        if (bArr == null) {
            return null;
        }
        return bArr.length == 0 ? "" : CodecUtils.toStringDirect(CODEC.m38268a(bArr));
    }
}
