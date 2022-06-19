package com.iab.omid.library.applovin.p060b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p059a.AbstractC1926c;
import com.iab.omid.library.applovin.p059a.C1925b;
import com.iab.omid.library.applovin.p059a.C1927d;
import com.iab.omid.library.applovin.p059a.C1928e;
import com.iab.omid.library.applovin.p060b.C1932b;
import com.iab.omid.library.applovin.walking.TreeWalker;
/* renamed from: com.iab.omid.library.applovin.b.f */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/f.class */
public class C1938f implements AbstractC1926c, C1932b.AbstractC1933a {

    /* renamed from: a */
    private static C1938f f7179a;

    /* renamed from: b */
    private float f7180b = 0.0f;

    /* renamed from: c */
    private final C1928e f7181c;

    /* renamed from: d */
    private final C1925b f7182d;

    /* renamed from: e */
    private C1927d f7183e;

    /* renamed from: f */
    private C1931a f7184f;

    public C1938f(C1928e c1928e, C1925b c1925b) {
        this.f7181c = c1928e;
        this.f7182d = c1925b;
    }

    /* renamed from: a */
    public static C1938f m4132a() {
        if (f7179a == null) {
            f7179a = new C1938f(new C1928e(), new C1925b());
        }
        return f7179a;
    }

    /* renamed from: e */
    private C1931a m4125e() {
        if (this.f7184f == null) {
            this.f7184f = C1931a.m4171a();
        }
        return this.f7184f;
    }

    @Override // com.iab.omid.library.applovin.p059a.AbstractC1926c
    /* renamed from: a */
    public void mo4131a(float f) {
        this.f7180b = f;
        for (C1929a c1929a : m4125e().m4167c()) {
            c1929a.getAdSessionStatePublisher().m4068a(f);
        }
    }

    /* renamed from: a */
    public void m4130a(Context context) {
        this.f7183e = this.f7181c.m4197a(new Handler(), context, this.f7182d.m4203a(), this);
    }

    @Override // com.iab.omid.library.applovin.p060b.C1932b.AbstractC1933a
    /* renamed from: a */
    public void mo4129a(boolean z) {
        if (z) {
            TreeWalker.getInstance().m4043a();
        } else {
            TreeWalker.getInstance().m4033c();
        }
    }

    /* renamed from: b */
    public void m4128b() {
        C1932b.m4164a().m4162a(this);
        C1932b.m4164a().m4160b();
        TreeWalker.getInstance().m4043a();
        this.f7183e.m4202a();
    }

    /* renamed from: c */
    public void m4127c() {
        TreeWalker.getInstance().m4036b();
        C1932b.m4164a().m4159c();
        this.f7183e.m4200b();
    }

    /* renamed from: d */
    public float m4126d() {
        return this.f7180b;
    }
}
