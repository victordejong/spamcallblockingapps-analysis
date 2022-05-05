package com.bumptech.glide.load.data.mediastore;

import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/mediastore/FileService.class */
class FileService {
    public boolean exists(File file) {
        return file.exists();
    }

    public File get(String str) {
        return new File(str);
    }

    public long length(File file) {
        return file.length();
    }
}
