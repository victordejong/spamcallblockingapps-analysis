package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.Registry;
import com.bumptech.glide.c.c;
import com.bumptech.glide.d;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/OkHttpGlideModule.class */
public class OkHttpGlideModule implements c {
    @Override // com.bumptech.glide.c.f
    public final void a(Context context, com.bumptech.glide.c cVar, Registry registry) {
        registry.b(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
    }

    @Override // com.bumptech.glide.c.b
    public final void a(Context context, d dVar) {
    }
}
