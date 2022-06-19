package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.C3649a;
import com.bumptech.glide.manager.C3946o;
import com.callapp.contacts.util.glide.CallAppAppGlideModule;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/GeneratedAppGlideModuleImpl.class */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a */
    private final CallAppAppGlideModule f13428a = new CallAppAppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    /* renamed from: a */
    public final Set<Class<?>> mo37802a() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.p110c.AbstractC3553d, com.bumptech.glide.p110c.AbstractC3555f
    /* renamed from: a */
    public final void mo37564a(Context context, ComponentCallbacks2C3548c componentCallbacks2C3548c, Registry registry) {
        new C3649a().mo37564a(context, componentCallbacks2C3548c, registry);
        this.f13428a.mo37564a(context, componentCallbacks2C3548c, registry);
    }

    @Override // com.bumptech.glide.p110c.AbstractC3550a, com.bumptech.glide.p110c.AbstractC3551b
    /* renamed from: a */
    public final void mo27114a(Context context, C3556d c3556d) {
        this.f13428a.mo27114a(context, c3556d);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    /* renamed from: b */
    public final /* synthetic */ C3946o.AbstractC3948a mo37801b() {
        return new C3531a();
    }

    @Override // com.bumptech.glide.p110c.AbstractC3550a
    public final boolean isManifestParsingEnabled() {
        return this.f13428a.isManifestParsingEnabled();
    }
}
