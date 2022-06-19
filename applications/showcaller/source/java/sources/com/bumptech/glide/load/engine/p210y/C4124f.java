package com.bumptech.glide.load.engine.p210y;

import android.content.Context;
import com.bumptech.glide.load.engine.p210y.C4121d;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.y.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/f.class */
public final class C4124f extends C4121d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.y.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/f$a.class */
    public class C4125a implements C4121d.AbstractC4122a {

        /* renamed from: a */
        final /* synthetic */ Context f12968a;

        /* renamed from: b */
        final /* synthetic */ String f12969b;

        C4125a(Context context, String str) {
            this.f12968a = context;
            this.f12969b = str;
        }

        @Override // com.bumptech.glide.load.engine.p210y.C4121d.AbstractC4122a
        /* renamed from: a */
        public File mo23216a() {
            File cacheDir = this.f12968a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f12969b != null ? new File(cacheDir, this.f12969b) : cacheDir;
        }
    }

    public C4124f(Context context) {
        this(context, "image_manager_disk_cache", 262144000L);
    }

    public C4124f(Context context, String str, long j) {
        super(new C4125a(context, str), j);
    }
}
