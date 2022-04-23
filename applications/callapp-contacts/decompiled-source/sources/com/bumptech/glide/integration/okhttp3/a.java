package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.Registry;
import com.bumptech.glide.c;
import com.bumptech.glide.c.d;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/a.class */
public final class a extends d {
    @Override // com.bumptech.glide.c.d, com.bumptech.glide.c.f
    public final void a(Context context, c cVar, Registry registry) {
        registry.b(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
    }
}
