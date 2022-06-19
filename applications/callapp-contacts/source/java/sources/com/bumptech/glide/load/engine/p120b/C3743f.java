package com.bumptech.glide.load.engine.p120b;

import android.content.Context;
import com.bumptech.glide.load.engine.p120b.C3738d;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.b.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/f.class */
public final class C3743f extends C3738d {
    public C3743f(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public C3743f(Context context, long j) {
        this(context, "image_manager_disk_cache", j);
    }

    public C3743f(final Context context, final String str, long j) {
        super(new C3738d.AbstractC3741a() { // from class: com.bumptech.glide.load.engine.b.f.1
            @Override // com.bumptech.glide.load.engine.p120b.C3738d.AbstractC3741a
            /* renamed from: a */
            public final File mo37432a() {
                File cacheDir = context.getCacheDir();
                if (cacheDir == null) {
                    return null;
                }
                return str != null ? new File(cacheDir, str) : cacheDir;
            }
        }, j);
    }
}
