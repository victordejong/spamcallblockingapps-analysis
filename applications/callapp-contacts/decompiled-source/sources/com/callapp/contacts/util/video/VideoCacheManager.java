package com.callapp.contacts.util.video;

import android.content.Context;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.database.b;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.x;
import com.google.android.exoplayer2.upstream.cache.m;
import com.google.android.exoplayer2.upstream.cache.n;
import com.google.android.exoplayer2.util.af;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoCacheManager.class */
public class VideoCacheManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private n f16335a;

    /* renamed from: b  reason: collision with root package name */
    private x.a f16336b;

    /* renamed from: c  reason: collision with root package name */
    private x.a f16337c;

    public static VideoCacheManager get() {
        return Singletons.get().getVideoCacheManager();
    }

    public final r a(String str) {
        return StringUtils.h(str) ? this.f16336b.a(Uri.parse(str)) : this.f16337c.a(Uri.parse(str));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        n nVar = this.f16335a;
        if (nVar != null) {
            nVar.b();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        n nVar = new n(new File(CallAppApplication.get().getCacheDir(), "media"), new m(262144000L), new b(CallAppApplication.get()));
        this.f16335a = nVar;
        com.google.android.exoplayer2.upstream.cache.b bVar = new com.google.android.exoplayer2.upstream.cache.b(nVar, new com.google.android.exoplayer2.c.a.b(HttpUtils.getExternalClient(), HttpUtils.a(CallAppApplication.get())), 2);
        com.google.android.exoplayer2.upstream.n nVar2 = new com.google.android.exoplayer2.upstream.n(CallAppApplication.get(), af.a((Context) CallAppApplication.get(), CallAppApplication.get().getApplicationInfo().name));
        this.f16336b = new x.a(bVar);
        this.f16337c = new x.a(nVar2);
    }
}
