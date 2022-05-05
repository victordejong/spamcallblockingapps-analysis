package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Base64.class */
public enum Base64 {
    ;
    
    public static final Base64Codec codec = new Base64Codec();

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[str.length()];
        return codec.decode(bArr, CodecUtils.sanitize(str, bArr));
    }

    public static String encodeAsString(byte... bArr) {
        if (bArr == null) {
            return null;
        }
        return bArr.length == 0 ? "" : CodecUtils.toStringDirect(codec.encode(bArr));
    }
}
