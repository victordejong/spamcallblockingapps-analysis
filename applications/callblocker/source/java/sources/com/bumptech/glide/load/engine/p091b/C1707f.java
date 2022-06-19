package com.bumptech.glide.load.engine.p091b;

import android.content.Context;
import com.bumptech.glide.load.engine.p091b.C1704d;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.b.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/f.class */
public final class C1707f extends C1704d {
    public C1707f(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public C1707f(final Context context, final String str, long j) {
        super(new C1704d.AbstractC1705a() { // from class: com.bumptech.glide.load.engine.b.f.1
            @Override // com.bumptech.glide.load.engine.p091b.C1704d.AbstractC1705a
            /* renamed from: a */
            public File mo16500a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    cacheDir = null;
                } else if (str != null) {
                    cacheDir = new File(cacheDir, str);
                }
                return cacheDir;
            }
        }, j);
    }
}
