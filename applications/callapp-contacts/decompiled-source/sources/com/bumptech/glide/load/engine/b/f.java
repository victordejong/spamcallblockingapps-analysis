package com.bumptech.glide.load.engine.b;

import android.content.Context;
import com.bumptech.glide.load.engine.b.d;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/f.class */
public final class f extends d {
    public f(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public f(Context context, long j) {
        this(context, "image_manager_disk_cache", j);
    }

    public f(final Context context, final String str, long j) {
        super(new d.a() { // from class: com.bumptech.glide.load.engine.b.f.1
            @Override // com.bumptech.glide.load.engine.b.d.a
            public final File a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, j);
    }
}
