package com.iab.omid.library.pubnativenet.adsession;

import android.provider.Settings;
import android.view.View;
import com.iab.omid.library.pubnativenet.p437a.C16411d;
import com.iab.omid.library.pubnativenet.p439b.C16429a;
import com.iab.omid.library.pubnativenet.p439b.C16430b;
import com.iab.omid.library.pubnativenet.p439b.C16432c;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p439b.C16436f;
import com.iab.omid.library.pubnativenet.p441d.C16448d;
import com.iab.omid.library.pubnativenet.p442e.C16450a;
import com.iab.omid.library.pubnativenet.p443f.AbstractC16452a;
import com.iab.omid.library.pubnativenet.p443f.C16454b;
import com.iab.omid.library.pubnativenet.p443f.C16455c;
import com.iab.omid.library.pubnativenet.p444g.C16457a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.pubnativenet.adsession.k */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/adsession/k.class */
public final class C16427k extends AbstractC16418b {

    /* renamed from: i */
    private static final Pattern f57913i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a */
    public final AdSessionConfiguration f57914a;

    /* renamed from: c */
    public AbstractC16452a f57916c;

    /* renamed from: g */
    public boolean f57920g;

    /* renamed from: h */
    public boolean f57921h;

    /* renamed from: j */
    private final C16419c f57922j;

    /* renamed from: k */
    private C16450a f57923k;

    /* renamed from: b */
    public final List<C16432c> f57915b = new ArrayList();

    /* renamed from: d */
    public boolean f57917d = false;

    /* renamed from: e */
    public boolean f57918e = false;

    /* renamed from: f */
    public final String f57919f = UUID.randomUUID().toString();

    public C16427k(AdSessionConfiguration adSessionConfiguration, C16419c c16419c) {
        this.f57914a = adSessionConfiguration;
        this.f57922j = c16419c;
        m7265e(null);
        if (c16419c.f57907h == EnumC16420d.HTML || c16419c.f57907h == EnumC16420d.JAVASCRIPT) {
            this.f57916c = new C16454b(c16419c.f57901b);
        } else {
            this.f57916c = new C16455c(Collections.unmodifiableMap(c16419c.f57903d), c16419c.f57904e);
        }
        this.f57916c.mo7205a();
        C16429a.m7263a().f57926a.add(this);
        C16434e.m7257a().m7252a(this.f57916c.m7208c(), "init", adSessionConfiguration.toJsonObject());
    }

    /* renamed from: c */
    private C16432c m7269c(View view) {
        for (C16432c c16432c : this.f57915b) {
            if (c16432c.f57932a.get() == view) {
                return c16432c;
            }
        }
        return null;
    }

    /* renamed from: d */
    private static void m7267d(View view) {
        if (view != null) {
            return;
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    /* renamed from: e */
    private void m7265e(View view) {
        this.f57923k = new C16450a(view);
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: a */
    public final void mo7275a() {
        if (this.f57917d) {
            return;
        }
        this.f57917d = true;
        C16429a m7263a = C16429a.m7263a();
        boolean m7262b = m7263a.m7262b();
        m7263a.f57927b.add(this);
        if (!m7262b) {
            C16436f m7247a = C16436f.m7247a();
            C16430b.m7261a().f57931c = m7247a;
            C16430b m7261a = C16430b.m7261a();
            m7261a.f57929a = true;
            m7261a.f57930b = false;
            m7261a.m7259b();
            C16457a.m7202a();
            C16457a.m7197b();
            C16411d c16411d = m7247a.f57944b;
            c16411d.f57890b = c16411d.m7282a();
            c16411d.m7281b();
            c16411d.f57889a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, c16411d);
        }
        this.f57916c.m7214a(C16436f.m7247a().f57943a);
        this.f57916c.mo7204a(this, this.f57922j);
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: a */
    public final void mo7274a(View view) {
        if (this.f57918e) {
            return;
        }
        C16448d.m7223a(view, "AdView is null");
        if (m7266e() == view) {
            return;
        }
        m7265e(view);
        this.f57916c.m7207d();
        Collection<C16427k> unmodifiableCollection = Collections.unmodifiableCollection(C16429a.m7263a().f57926a);
        if (unmodifiableCollection == null || unmodifiableCollection.isEmpty()) {
            return;
        }
        for (C16427k c16427k : unmodifiableCollection) {
            if (c16427k != this && c16427k.m7266e() == view) {
                c16427k.f57923k.clear();
            }
        }
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: a */
    public final void mo7273a(View view, EnumC16422f enumC16422f, String str) {
        if (this.f57918e) {
            return;
        }
        m7267d(view);
        if (str != null && (str.length() > 50 || !f57913i.matcher(str).matches())) {
            throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
        }
        if (m7269c(view) != null) {
            return;
        }
        this.f57915b.add(new C16432c(view, enumC16422f, str));
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: b */
    public final void mo7272b() {
        if (this.f57918e) {
            return;
        }
        this.f57923k.clear();
        mo7270c();
        this.f57918e = true;
        C16434e.m7257a().m7252a(this.f57916c.m7208c(), "finishSession", new Object[0]);
        C16429a m7263a = C16429a.m7263a();
        boolean m7262b = m7263a.m7262b();
        m7263a.f57926a.remove(this);
        m7263a.f57927b.remove(this);
        if (m7262b && !m7263a.m7262b()) {
            C16436f m7247a = C16436f.m7247a();
            final C16457a m7202a = C16457a.m7202a();
            C16457a.m7195c();
            m7202a.f57985b.clear();
            C16457a.f57980a.post(new Runnable() { // from class: com.iab.omid.library.pubnativenet.g.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C16457a.this.f57989h.m7182b();
                }
            });
            C16430b m7261a = C16430b.m7261a();
            m7261a.f57929a = false;
            m7261a.f57930b = false;
            m7261a.f57931c = null;
            C16411d c16411d = m7247a.f57944b;
            c16411d.f57889a.getContentResolver().unregisterContentObserver(c16411d);
        }
        this.f57916c.mo7203b();
        this.f57916c = null;
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: b */
    public final void mo7271b(View view) {
        if (this.f57918e) {
            return;
        }
        m7267d(view);
        C16432c m7269c = m7269c(view);
        if (m7269c == null) {
            return;
        }
        this.f57915b.remove(m7269c);
    }

    @Override // com.iab.omid.library.pubnativenet.adsession.AbstractC16418b
    /* renamed from: c */
    public final void mo7270c() {
        if (this.f57918e) {
            return;
        }
        this.f57915b.clear();
    }

    /* renamed from: d */
    public final void m7268d() {
        if (!this.f57921h) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    /* renamed from: e */
    public final View m7266e() {
        return (View) this.f57923k.get();
    }

    /* renamed from: f */
    public final boolean m7264f() {
        return this.f57917d && !this.f57918e;
    }
}
