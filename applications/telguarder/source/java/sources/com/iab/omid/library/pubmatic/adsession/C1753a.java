package com.iab.omid.library.pubmatic.adsession;

import android.view.View;
import com.iab.omid.library.pubmatic.p012b.C1755a;
import com.iab.omid.library.pubmatic.p012b.C1758c;
import com.iab.omid.library.pubmatic.p012b.C1762f;
import com.iab.omid.library.pubmatic.p014d.C1774e;
import com.iab.omid.library.pubmatic.p015e.C1776a;
import com.iab.omid.library.pubmatic.publisher.AdSessionStatePublisher;
import com.iab.omid.library.pubmatic.publisher.C1779a;
import com.iab.omid.library.pubmatic.publisher.C1780b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.adsession.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/adsession/a.class */
public class C1753a extends AdSession {

    /* renamed from: a */
    private static final Pattern f214a = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: b */
    private final AdSessionContext f215b;

    /* renamed from: c */
    private final AdSessionConfiguration f216c;

    /* renamed from: e */
    private C1776a f218e;

    /* renamed from: f */
    private AdSessionStatePublisher f219f;

    /* renamed from: j */
    private boolean f223j;

    /* renamed from: k */
    private boolean f224k;

    /* renamed from: d */
    private final List<C1758c> f217d = new ArrayList();

    /* renamed from: g */
    private boolean f220g = false;

    /* renamed from: h */
    private boolean f221h = false;

    /* renamed from: i */
    private String f222i = UUID.randomUUID().toString();

    public C1753a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this.f216c = adSessionConfiguration;
        this.f215b = adSessionContext;
        m1322c(null);
        this.f219f = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new C1779a(adSessionContext.getWebView()) : new C1780b(adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f219f.mo1187a();
        C1755a.m1306a().m1305a(this);
        this.f219f.m1204a(adSessionConfiguration);
    }

    /* renamed from: a */
    private C1758c m1328a(View view) {
        for (C1758c c1758c : this.f217d) {
            if (c1758c.m1292a().get() == view) {
                return c1758c;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m1327a(String str) {
        if (str != null) {
            if (str.length() <= 50 && f214a.matcher(str).matches()) {
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
        }
    }

    /* renamed from: b */
    private void m1324b(View view) {
        if (view != null) {
            return;
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    /* renamed from: c */
    private void m1322c(View view) {
        this.f218e = new C1776a(view);
    }

    /* renamed from: d */
    private void m1320d(View view) {
        Collection<C1753a> m1304b = C1755a.m1306a().m1304b();
        if (m1304b == null || m1304b.size() <= 0) {
            return;
        }
        for (C1753a c1753a : m1304b) {
            if (c1753a != this && c1753a.m1321d() == view) {
                c1753a.f218e.clear();
            }
        }
    }

    /* renamed from: j */
    private void m1314j() {
        if (!this.f223j) {
            return;
        }
        throw new IllegalStateException("Impression event can only be sent once");
    }

    /* renamed from: k */
    private void m1313k() {
        if (!this.f224k) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    /* renamed from: a */
    public List<C1758c> m1329a() {
        return this.f217d;
    }

    /* renamed from: a */
    public void m1326a(JSONObject jSONObject) {
        m1313k();
        getAdSessionStatePublisher().m1197a(jSONObject);
        this.f224k = true;
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f221h) {
            return;
        }
        m1324b(view);
        m1327a(str);
        if (m1328a(view) != null) {
            return;
        }
        this.f217d.add(new C1758c(view, friendlyObstructionPurpose, str));
    }

    /* renamed from: b */
    public void m1325b() {
        m1314j();
        getAdSessionStatePublisher().m1190g();
        this.f223j = true;
    }

    /* renamed from: c */
    public void m1323c() {
        m1313k();
        getAdSessionStatePublisher().m1189h();
        this.f224k = true;
    }

    /* renamed from: d */
    public View m1321d() {
        return (View) this.f218e.get();
    }

    /* renamed from: e */
    public boolean m1319e() {
        return this.f220g && !this.f221h;
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (!this.f221h) {
            C1774e.m1222a(errorType, "Error type is null");
            C1774e.m1220a(str, "Message is null");
            getAdSessionStatePublisher().m1203a(errorType, str);
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: f */
    public boolean m1318f() {
        return this.f220g;
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void finish() {
        if (this.f221h) {
            return;
        }
        this.f218e.clear();
        removeAllFriendlyObstructions();
        this.f221h = true;
        getAdSessionStatePublisher().m1191f();
        C1755a.m1306a().m1301c(this);
        getAdSessionStatePublisher().mo1184b();
        this.f219f = null;
    }

    /* renamed from: g */
    public boolean m1317g() {
        return this.f221h;
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public String getAdSessionId() {
        return this.f222i;
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f219f;
    }

    /* renamed from: h */
    public boolean m1316h() {
        return this.f216c.isNativeImpressionOwner();
    }

    /* renamed from: i */
    public boolean m1315i() {
        return this.f216c.isNativeMediaEventsOwner();
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f221h) {
            return;
        }
        C1774e.m1222a(view, "AdView is null");
        if (m1321d() == view) {
            return;
        }
        m1322c(view);
        getAdSessionStatePublisher().m1188i();
        m1320d(view);
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f221h) {
            return;
        }
        this.f217d.clear();
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f221h) {
            return;
        }
        m1324b(view);
        C1758c m1328a = m1328a(view);
        if (m1328a == null) {
            return;
        }
        this.f217d.remove(m1328a);
    }

    @Override // com.iab.omid.library.pubmatic.adsession.AdSession
    public void start() {
        if (this.f220g) {
            return;
        }
        this.f220g = true;
        C1755a.m1306a().m1303b(this);
        this.f219f.m1207a(C1762f.m1268a().m1263d());
        this.f219f.mo1186a(this, this.f215b);
    }
}
