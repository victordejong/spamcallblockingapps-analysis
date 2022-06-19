package com.iab.omid.library.mopub.p430b;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p434f.AbstractC16386a;
import java.util.Collections;
/* renamed from: com.iab.omid.library.mopub.b.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/b.class */
public final class C16363b {

    /* renamed from: f */
    private static C16363b f57796f = new C16363b();

    /* renamed from: a */
    public Context f57797a;

    /* renamed from: b */
    public BroadcastReceiver f57798b;

    /* renamed from: c */
    public boolean f57799c;

    /* renamed from: d */
    public boolean f57800d;

    /* renamed from: e */
    public AbstractC16365a f57801e;

    /* renamed from: com.iab.omid.library.mopub.b.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/b$a.class */
    public interface AbstractC16365a {
        /* renamed from: a */
        void mo7347a(boolean z);
    }

    private C16363b() {
    }

    /* renamed from: a */
    public static C16363b m7363a() {
        return f57796f;
    }

    /* renamed from: a */
    static /* synthetic */ void m7362a(C16363b c16363b, boolean z) {
        if (c16363b.f57800d != z) {
            c16363b.f57800d = z;
            if (!c16363b.f57799c) {
                return;
            }
            c16363b.m7360c();
            AbstractC16365a abstractC16365a = c16363b.f57801e;
            if (abstractC16365a == null) {
                return;
            }
            abstractC16365a.mo7347a(c16363b.m7361b());
        }
    }

    /* renamed from: b */
    public final boolean m7361b() {
        return !this.f57800d;
    }

    /* renamed from: c */
    public void m7360c() {
        boolean z = this.f57800d;
        for (C16360k c16360k : Collections.unmodifiableCollection(C16362a.m7365a().f57794a)) {
            AbstractC16386a abstractC16386a = c16360k.f57784c;
            if (abstractC16386a.f57836a.get() != null) {
                C16368e.m7358a().m7353a(abstractC16386a.m7311c(), "setState", z ^ true ? "foregrounded" : "backgrounded");
            }
        }
    }
}
