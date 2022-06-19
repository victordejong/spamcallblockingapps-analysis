package com.iab.omid.library.verizonmedia.adsession;

import android.view.View;
import com.iab.omid.library.verizonmedia.p446a.C16477d;
import com.iab.omid.library.verizonmedia.p448b.C16494a;
import com.iab.omid.library.verizonmedia.p448b.C16495b;
import com.iab.omid.library.verizonmedia.p448b.C16498c;
import com.iab.omid.library.verizonmedia.p448b.C16500e;
import com.iab.omid.library.verizonmedia.p448b.C16502f;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import com.iab.omid.library.verizonmedia.p451e.C16516a;
import com.iab.omid.library.verizonmedia.p452f.AbstractC16518a;
import com.iab.omid.library.verizonmedia.p452f.C16520b;
import com.iab.omid.library.verizonmedia.p452f.C16521c;
import com.iab.omid.library.verizonmedia.p453g.C16523a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.verizonmedia.adsession.k */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/adsession/k.class */
public final class C16492k extends AbstractC16483b {

    /* renamed from: i */
    private static final Pattern f58042i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a */
    public final AdSessionConfiguration f58043a;

    /* renamed from: c */
    public AbstractC16518a f58045c;

    /* renamed from: g */
    boolean f58049g;

    /* renamed from: h */
    boolean f58050h;

    /* renamed from: j */
    private final C16484c f58051j;

    /* renamed from: k */
    private C16516a f58052k;

    /* renamed from: b */
    public final List<C16498c> f58044b = new ArrayList();

    /* renamed from: d */
    public boolean f58046d = false;

    /* renamed from: e */
    public boolean f58047e = false;

    /* renamed from: f */
    public String f58048f = UUID.randomUUID().toString();

    public C16492k(AdSessionConfiguration adSessionConfiguration, C16484c c16484c) {
        this.f58043a = adSessionConfiguration;
        this.f58051j = c16484c;
        m7150b(null);
        if (c16484c.f58036h == EnumC16485d.HTML || c16484c.f58036h == EnumC16485d.JAVASCRIPT) {
            this.f58045c = new C16520b(c16484c.f58030b);
        } else {
            this.f58045c = new C16521c(Collections.unmodifiableMap(c16484c.f58032d), c16484c.f58033e);
        }
        this.f58045c.mo7087a();
        C16494a.m7145a().f58055a.add(this);
        C16500e.m7136a().m7131a(this.f58045c.m7089c(), "init", adSessionConfiguration.toJsonObject());
    }

    /* renamed from: b */
    private void m7150b(View view) {
        this.f58052k = new C16516a(view);
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.AbstractC16483b
    /* renamed from: a */
    public final void mo7154a() {
        if (this.f58046d) {
            return;
        }
        this.f58046d = true;
        C16494a.m7145a().m7144a(this);
        this.f58045c.m7094a(C16502f.m7127a().f58075a);
        this.f58045c.mo7086a(this, this.f58051j);
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.AbstractC16483b
    /* renamed from: a */
    public final void mo7153a(View view) {
        if (this.f58047e) {
            return;
        }
        C16514d.m7102a(view, "AdView is null");
        if (m7147e() == view) {
            return;
        }
        m7150b(view);
        this.f58045c.m7088d();
        Collection<C16492k> unmodifiableCollection = Collections.unmodifiableCollection(C16494a.m7145a().f58055a);
        if (unmodifiableCollection == null || unmodifiableCollection.size() <= 0) {
            return;
        }
        for (C16492k c16492k : unmodifiableCollection) {
            if (c16492k != this && c16492k.m7147e() == view) {
                c16492k.f58052k.clear();
            }
        }
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.AbstractC16483b
    /* renamed from: a */
    public final void mo7152a(View view, EnumC16487f enumC16487f) {
        C16498c c16498c;
        if (this.f58047e) {
            return;
        }
        Iterator<C16498c> it2 = this.f58044b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                c16498c = null;
                break;
            }
            c16498c = it2.next();
            if (c16498c.f58064a.get() == view) {
                break;
            }
        }
        if (c16498c != null) {
            return;
        }
        this.f58044b.add(new C16498c(view, enumC16487f, null));
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.AbstractC16483b
    /* renamed from: b */
    public final void mo7151b() {
        if (this.f58047e) {
            return;
        }
        this.f58052k.clear();
        mo7149c();
        this.f58047e = true;
        C16500e.m7136a().m7131a(this.f58045c.m7089c(), "finishSession", new Object[0]);
        C16494a m7145a = C16494a.m7145a();
        boolean m7143b = m7145a.m7143b();
        m7145a.f58055a.remove(this);
        m7145a.f58056b.remove(this);
        if (m7143b && !m7145a.m7143b()) {
            C16502f m7127a = C16502f.m7127a();
            final C16523a m7084a = C16523a.m7084a();
            C16523a.m7077c();
            m7084a.f58117b.clear();
            C16523a.f58112a.post(new Runnable() { // from class: com.iab.omid.library.verizonmedia.g.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C16523a.this.f58121h.m7064b();
                }
            });
            C16495b m7142a = C16495b.m7142a();
            if (m7142a.f58058a != null && m7142a.f58059b != null) {
                m7142a.f58058a.unregisterReceiver(m7142a.f58059b);
                m7142a.f58059b = null;
            }
            m7142a.f58060c = false;
            m7142a.f58061d = false;
            m7142a.f58062e = null;
            C16477d c16477d = m7127a.f58076b;
            c16477d.f58018a.getContentResolver().unregisterContentObserver(c16477d);
        }
        this.f58045c.mo7085b();
        this.f58045c = null;
    }

    @Override // com.iab.omid.library.verizonmedia.adsession.AbstractC16483b
    /* renamed from: c */
    public final void mo7149c() {
        if (this.f58047e) {
            return;
        }
        this.f58044b.clear();
    }

    /* renamed from: d */
    public final void m7148d() {
        if (!this.f58050h) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    /* renamed from: e */
    public final View m7147e() {
        return (View) this.f58052k.get();
    }

    /* renamed from: f */
    public final boolean m7146f() {
        return this.f58046d && !this.f58047e;
    }
}
