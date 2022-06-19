package com.callapp.contacts.util.video;

import android.content.Context;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.exoplayer2.database.C10927b;
import com.google.android.exoplayer2.p325c.p326a.C10924b;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.C11332x;
import com.google.android.exoplayer2.upstream.C11579n;
import com.google.android.exoplayer2.upstream.cache.C11543b;
import com.google.android.exoplayer2.upstream.cache.C11558m;
import com.google.android.exoplayer2.upstream.cache.C11559n;
import com.google.android.exoplayer2.util.C11599af;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/VideoCacheManager.class */
public class VideoCacheManager implements ManagedLifecycle {

    /* renamed from: a */
    private C11559n f28450a;

    /* renamed from: b */
    private C11332x.C11334a f28451b;

    /* renamed from: c */
    private C11332x.C11334a f28452c;

    public static VideoCacheManager get() {
        return Singletons.get().getVideoCacheManager();
    }

    /* renamed from: a */
    public final AbstractC11315r m26892a(String str) {
        return StringUtils.m26024h(str) ? this.f28451b.m20851a(Uri.parse(str)) : this.f28452c.m20851a(Uri.parse(str));
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        C11559n c11559n = this.f28450a;
        if (c11559n != null) {
            c11559n.m20102b();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        C11559n c11559n = new C11559n(new File(CallAppApplication.get().getCacheDir(), "media"), new C11558m(262144000L), new C10927b(CallAppApplication.get()));
        this.f28450a = c11559n;
        C11543b c11543b = new C11543b(c11559n, new C10924b(HttpUtils.getExternalClient(), HttpUtils.m26984a(CallAppApplication.get())), 2);
        C11579n c11579n = new C11579n(CallAppApplication.get(), C11599af.m19989a((Context) CallAppApplication.get(), CallAppApplication.get().getApplicationInfo().name));
        this.f28451b = new C11332x.C11334a(c11543b);
        this.f28452c = new C11332x.C11334a(c11579n);
    }
}
