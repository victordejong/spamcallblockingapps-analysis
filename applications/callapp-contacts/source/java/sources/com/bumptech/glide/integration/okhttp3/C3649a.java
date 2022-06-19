package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.p110c.AbstractC3553d;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.integration.okhttp3.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/a.class */
public final class C3649a extends AbstractC3553d {
    @Override // com.bumptech.glide.p110c.AbstractC3553d, com.bumptech.glide.p110c.AbstractC3555f
    /* renamed from: a */
    public final void mo37564a(Context context, ComponentCallbacks2C3548c componentCallbacks2C3548c, Registry registry) {
        registry.m37788b(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
    }
}
