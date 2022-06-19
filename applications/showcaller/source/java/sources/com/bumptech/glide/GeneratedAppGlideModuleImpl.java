package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.allinone.callerid.main.CustomAppGlideModule;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/GeneratedAppGlideModuleImpl.class */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a */
    private final CustomAppGlideModule f12420a = new CustomAppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Discovered AppGlideModule from annotation: com.allinone.callerid.main.CustomAppGlideModule");
        }
    }

    @Override // com.bumptech.glide.p220m.AbstractC4328c
    /* renamed from: a */
    public void mo22850a(Context context, ComponentCallbacks2C3958c componentCallbacks2C3958c, Registry registry) {
        this.f12420a.mo22850a(context, componentCallbacks2C3958c, registry);
    }

    @Override // com.bumptech.glide.p220m.AbstractC4326a
    /* renamed from: b */
    public void mo22854b(Context context, C3960d c3960d) {
        this.f12420a.mo22854b(context, c3960d);
    }

    @Override // com.bumptech.glide.p220m.AbstractC4326a
    /* renamed from: c */
    public boolean mo22853c() {
        return this.f12420a.mo22853c();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    /* renamed from: d */
    public Set<Class<?>> mo23720d() {
        return Collections.emptySet();
    }

    /* renamed from: f */
    public C3956a mo23719e() {
        return new C3956a();
    }
}
