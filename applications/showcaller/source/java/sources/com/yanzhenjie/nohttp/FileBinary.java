package com.yanzhenjie.nohttp;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/FileBinary.class */
public class FileBinary extends BasicBinary {
    private File mFile;

    public FileBinary(File file) {
        this(file, file.getName(), null);
    }

    public FileBinary(File file, String str) {
        this(file, str, null);
    }

    public FileBinary(File file, String str, String str2) {
        super(str, str2);
        if (file == null) {
            throw new IllegalArgumentException("File is null: " + str);
        } else if (file.exists()) {
            this.mFile = file;
        } else {
            throw new IllegalArgumentException("File not found: " + str);
        }
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    public long getBinaryLength() {
        return this.mFile.length();
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    protected InputStream getInputStream() {
        return new FileInputStream(this.mFile);
    }
}
