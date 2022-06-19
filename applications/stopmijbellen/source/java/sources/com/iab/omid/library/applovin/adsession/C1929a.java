package com.iab.omid.library.applovin.adsession;

import android.view.View;
import com.iab.omid.library.applovin.p060b.C1931a;
import com.iab.omid.library.applovin.p060b.C1934c;
import com.iab.omid.library.applovin.p060b.C1938f;
import com.iab.omid.library.applovin.p062d.C1950e;
import com.iab.omid.library.applovin.p063e.C1952a;
import com.iab.omid.library.applovin.publisher.AdSessionStatePublisher;
import com.iab.omid.library.applovin.publisher.C1955a;
import com.iab.omid.library.applovin.publisher.C1956b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.adsession.a */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/adsession/a.class */
public class C1929a extends AdSession {

    /* renamed from: a */
    private static final Pattern f7145a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b */
    private final AdSessionContext f7146b;

    /* renamed from: c */
    private final AdSessionConfiguration f7147c;

    /* renamed from: e */
    private C1952a f7149e;

    /* renamed from: f */
    private AdSessionStatePublisher f7150f;

    /* renamed from: j */
    private boolean f7154j;

    /* renamed from: k */
    private boolean f7155k;

    /* renamed from: l */
    private PossibleObstructionListener f7156l;

    /* renamed from: d */
    private final List<C1934c> f7148d = new ArrayList();

    /* renamed from: g */
    private boolean f7151g = false;

    /* renamed from: h */
    private boolean f7152h = false;

    /* renamed from: i */
    private final String f7153i = UUID.randomUUID().toString();

    public C1929a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f7147c = adSessionConfiguration;
        this.f7146b = adSessionContext;
        m4188c(null);
        this.f7150f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new C1955a(adSessionContext.getWebView()) : new C1956b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f7150f.mo4048a();
        C1931a.m4171a().m4170a(this);
        this.f7150f.m4065a(adSessionConfiguration);
    }

    /* renamed from: a */
    private C1934c m4195a(View view) {
        for (C1934c c1934c : this.f7148d) {
            if (c1934c.m4156a().get() == view) {
                return c1934c;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m4194a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f7145a.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    /* renamed from: b */
    private static void m4190b(View view) {
        if (view != null) {
            return;
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    /* renamed from: c */
    private void m4188c(View view) {
        this.f7149e = new C1952a(view);
    }

    /* renamed from: d */
    private void m4186d(View view) {
        Collection<C1929a> m4169b = C1931a.m4171a().m4169b();
        if (m4169b == null || m4169b.isEmpty()) {
            return;
        }
        for (C1929a c1929a : m4169b) {
            if (c1929a != this && c1929a.m4185e() == view) {
                c1929a.f7149e.clear();
            }
        }
    }

    /* renamed from: k */
    private void m4179k() {
        if (!this.f7154j) {
            return;
        }
        throw new IllegalStateException("Impression event can only be sent once");
    }

    /* renamed from: l */
    private void m4178l() {
        if (!this.f7155k) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    /* renamed from: a */
    public List<C1934c> m4196a() {
        return this.f7148d;
    }

    /* renamed from: a */
    public void m4193a(List<C1952a> list) {
        if (m4191b()) {
            ArrayList arrayList = new ArrayList();
            for (C1952a c1952a : list) {
                View view = c1952a.get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f7156l.onPossibleObstructionsDetected(this.f7153i, arrayList);
        }
    }

    /* renamed from: a */
    public void m4192a(JSONObject jSONObject) {
        m4178l();
        getAdSessionStatePublisher().m4058a(jSONObject);
        this.f7155k = true;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f7152h) {
            return;
        }
        m4190b(view);
        m4194a(str);
        if (m4195a(view) != null) {
            return;
        }
        this.f7148d.add(new C1934c(view, friendlyObstructionPurpose, str));
    }

    /* renamed from: b */
    public boolean m4191b() {
        return this.f7156l != null;
    }

    /* renamed from: c */
    public void m4189c() {
        m4179k();
        getAdSessionStatePublisher().m4051g();
        this.f7154j = true;
    }

    /* renamed from: d */
    public void m4187d() {
        m4178l();
        getAdSessionStatePublisher().m4050h();
        this.f7155k = true;
    }

    /* renamed from: e */
    public View m4185e() {
        return this.f7149e.get();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f7152h) {
            C1950e.m4083a(errorType, "Error type is null");
            C1950e.m4081a(str, "Message is null");
            getAdSessionStatePublisher().m4064a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: f */
    public boolean m4184f() {
        return this.f7151g && !this.f7152h;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void finish() {
        if (this.f7152h) {
            return;
        }
        this.f7149e.clear();
        removeAllFriendlyObstructions();
        this.f7152h = true;
        getAdSessionStatePublisher().m4052f();
        C1931a.m4171a().m4166c(this);
        getAdSessionStatePublisher().mo4045b();
        this.f7150f = null;
        this.f7156l = null;
    }

    /* renamed from: g */
    public boolean m4183g() {
        return this.f7151g;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public String getAdSessionId() {
        return this.f7153i;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f7150f;
    }

    /* renamed from: h */
    public boolean m4182h() {
        return this.f7152h;
    }

    /* renamed from: i */
    public boolean m4181i() {
        return this.f7147c.isNativeImpressionOwner();
    }

    /* renamed from: j */
    public boolean m4180j() {
        return this.f7147c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f7152h) {
            return;
        }
        C1950e.m4083a(view, "AdView is null");
        if (m4185e() == view) {
            return;
        }
        m4188c(view);
        getAdSessionStatePublisher().m4049i();
        m4186d(view);
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f7152h) {
            return;
        }
        this.f7148d.clear();
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f7152h) {
            return;
        }
        m4190b(view);
        C1934c m4195a = m4195a(view);
        if (m4195a == null) {
            return;
        }
        this.f7148d.remove(m4195a);
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f7156l = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.applovin.adsession.AdSession
    public void start() {
        if (this.f7151g) {
            return;
        }
        this.f7151g = true;
        C1931a.m4171a().m4168b(this);
        this.f7150f.m4068a(C1938f.m4132a().m4126d());
        this.f7150f.mo4047a(this, this.f7146b);
    }
}
