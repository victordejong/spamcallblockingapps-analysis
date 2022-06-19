package com.iab.omid.library.pubmatic.p012b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p011a.AbstractC1750c;
import com.iab.omid.library.pubmatic.p011a.C1749b;
import com.iab.omid.library.pubmatic.p011a.C1751d;
import com.iab.omid.library.pubmatic.p011a.C1752e;
import com.iab.omid.library.pubmatic.p012b.C1756b;
import com.iab.omid.library.pubmatic.walking.TreeWalker;
/* renamed from: com.iab.omid.library.pubmatic.b.f */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/f.class */
public class C1762f implements AbstractC1750c, C1756b.AbstractC1757a {

    /* renamed from: a */
    private static C1762f f248a;

    /* renamed from: b */
    private float f249b = 0.0f;

    /* renamed from: c */
    private final C1752e f250c;

    /* renamed from: d */
    private final C1749b f251d;

    /* renamed from: e */
    private C1751d f252e;

    /* renamed from: f */
    private C1755a f253f;

    public C1762f(C1752e c1752e, C1749b c1749b) {
        this.f250c = c1752e;
        this.f251d = c1749b;
    }

    /* renamed from: a */
    public static C1762f m1268a() {
        if (f248a == null) {
            f248a = new C1762f(new C1752e(), new C1749b());
        }
        return f248a;
    }

    /* renamed from: e */
    private C1755a m1262e() {
        if (this.f253f == null) {
            this.f253f = C1755a.m1306a();
        }
        return this.f253f;
    }

    @Override // com.iab.omid.library.pubmatic.p011a.AbstractC1750c
    /* renamed from: a */
    public void mo1267a(float f) {
        this.f249b = f;
        for (C1753a c1753a : m1262e().m1302c()) {
            c1753a.getAdSessionStatePublisher().m1207a(f);
        }
    }

    /* renamed from: a */
    public void m1266a(Context context) {
        this.f252e = this.f250c.m1330a(new Handler(), context, this.f251d.m1336a(), this);
    }

    /* renamed from: b */
    public void m1265b() {
        C1756b.m1299a().m1297a(this);
        C1756b.m1299a().m1296b();
        if (C1756b.m1299a().m1294d()) {
            TreeWalker.getInstance().m1182a();
        }
        this.f252e.m1335a();
    }

    /* renamed from: c */
    public void m1264c() {
        TreeWalker.getInstance().m1175b();
        C1756b.m1299a().m1295c();
        this.f252e.m1333b();
    }

    /* renamed from: d */
    public float m1263d() {
        return this.f249b;
    }
}
