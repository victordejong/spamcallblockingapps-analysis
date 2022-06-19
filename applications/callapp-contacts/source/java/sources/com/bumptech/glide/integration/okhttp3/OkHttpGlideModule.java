package com.bumptech.glide.integration.okhttp3;

import android.content.Context;
import com.bumptech.glide.C3556d;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.okhttp3.OkHttpUrlLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.p110c.AbstractC3552c;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/OkHttpGlideModule.class */
public class OkHttpGlideModule implements AbstractC3552c {
    @Override // com.bumptech.glide.p110c.AbstractC3555f
    /* renamed from: a */
    public final void mo37564a(Context context, ComponentCallbacks2C3548c componentCallbacks2C3548c, Registry registry) {
        registry.m37788b(GlideUrl.class, InputStream.class, new OkHttpUrlLoader.Factory());
    }

    @Override // com.bumptech.glide.p110c.AbstractC3551b
    /* renamed from: a */
    public final void mo27114a(Context context, C3556d c3556d) {
    }
}
