package com.nostra13.universalimageloader.cache.disc.impl;

import com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache.class */
public class UnlimitedDiskCache extends BaseDiskCache {
    public UnlimitedDiskCache(File file) {
        super(file);
    }

    public UnlimitedDiskCache(File file, File file2) {
        super(file, file2);
    }

    public UnlimitedDiskCache(File file, File file2, FileNameGenerator fileNameGenerator) {
        super(file, file2, fileNameGenerator);
    }
}
