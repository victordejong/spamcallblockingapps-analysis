package com.yanzhenjie.nohttp;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/ByteArrayBinary.class */
public class ByteArrayBinary extends BasicBinary {
    private byte[] byteArray;

    public ByteArrayBinary(byte[] bArr, String str) {
        this(bArr, str, null);
    }

    public ByteArrayBinary(byte[] bArr, String str, String str2) {
        super(str, str2);
        if (bArr != null) {
            this.byteArray = bArr;
            return;
        }
        throw new IllegalArgumentException("ByteArray is null: " + str);
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    public long getBinaryLength() {
        return this.byteArray.length;
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    protected InputStream getInputStream() {
        return new ByteArrayInputStream(this.byteArray);
    }
}
