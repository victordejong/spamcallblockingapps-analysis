package com.bumptech.glide.load.b.b;

import android.content.Context;
import com.bumptech.glide.load.b.b.d;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/f.class */
public final class f extends d {
    public f(Context context) {
        this(context, "image_manager_disk_cache", 262144000);
    }

    public f(Context context, byte b2) {
        this(context, "image_manager_disk_cache", 52428800);
    }

    private f(final Context context, final String str, int i) {
        super(new d.a() { // from class: com.bumptech.glide.load.b.b.f.1
            @Override // com.bumptech.glide.load.b.b.d.a
            public final File a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    cacheDir = null;
                } else if (str != null) {
                    cacheDir = new File(cacheDir, str);
                }
                return cacheDir;
            }
        }, i);
    }
}
