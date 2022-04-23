package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import com.bumptech.glide.integration.okhttp3.a;
import com.bumptech.glide.manager.o;
import com.callapp.contacts.util.glide.CallAppAppGlideModule;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/GeneratedAppGlideModuleImpl.class */
final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a  reason: collision with root package name */
    private final CallAppAppGlideModule f7187a = new CallAppAppGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final Set<Class<?>> a() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.c.d, com.bumptech.glide.c.f
    public final void a(Context context, c cVar, Registry registry) {
        new a().a(context, cVar, registry);
        this.f7187a.a(context, cVar, registry);
    }

    @Override // com.bumptech.glide.c.a, com.bumptech.glide.c.b
    public final void a(Context context, d dVar) {
        this.f7187a.a(context, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public final /* synthetic */ o.a b() {
        return new a();
    }

    @Override // com.bumptech.glide.c.a
    public final boolean isManifestParsingEnabled() {
        return this.f7187a.isManifestParsingEnabled();
    }
}
