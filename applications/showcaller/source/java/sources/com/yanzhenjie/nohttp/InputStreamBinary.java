package com.yanzhenjie.nohttp;

import android.content.res.AssetManager;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/InputStreamBinary.class */
public class InputStreamBinary extends BasicBinary {
    protected InputStream inputStream;

    public InputStreamBinary(InputStream inputStream, String str) {
        this(inputStream, str, null);
    }

    public InputStreamBinary(InputStream inputStream, String str, String str2) {
        super(str, str2);
        Objects.requireNonNull(inputStream, "The inputStream can't be null.");
        if ((inputStream instanceof FileInputStream) || (inputStream instanceof ByteArrayInputStream) || (inputStream instanceof AssetManager.AssetInputStream)) {
            this.inputStream = inputStream;
            return;
        }
        throw new IllegalArgumentException("The inputStream must be FileInputStream, ByteArrayInputStream and AssetInputStream.");
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    public long getBinaryLength() {
        try {
            InputStream inputStream = this.inputStream;
            return inputStream instanceof FileInputStream ? ((FileInputStream) inputStream).getChannel().size() : inputStream.available();
        } catch (IOException e) {
            Logger.m566e((Throwable) e);
            return 0L;
        }
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    protected InputStream getInputStream() {
        return this.inputStream;
    }
}
