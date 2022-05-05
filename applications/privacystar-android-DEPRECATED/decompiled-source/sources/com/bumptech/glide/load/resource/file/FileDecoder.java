package com.bumptech.glide.load.resource.file;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/file/FileDecoder.class */
public class FileDecoder implements ResourceDecoder<File, File> {
    public Resource<File> decode(@NonNull File file, int i, int i2, @NonNull Options options) {
        return new FileResource(file);
    }

    public boolean handles(@NonNull File file, @NonNull Options options) {
        return true;
    }
}
