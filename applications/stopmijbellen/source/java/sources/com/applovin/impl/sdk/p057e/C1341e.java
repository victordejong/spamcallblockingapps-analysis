package com.applovin.impl.sdk.p057e;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.webkit.URLUtil;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0882d;
import com.applovin.impl.p035a.C0886h;
import com.applovin.impl.p035a.C0895n;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Collections;
/* renamed from: com.applovin.impl.sdk.e.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/e.class */
class C1341e extends AbstractC1337c {

    /* renamed from: c */
    private final C0875a f5134c;

    public C1341e(C0875a c0875a, C1408l c1408l, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", c0875a, c1408l, appLovinAdLoadListener);
        this.f5134c = c0875a;
    }

    /* renamed from: j */
    private void m5687j() {
        String str;
        String str2;
        String str3;
        if (m5702b()) {
            return;
        }
        if (this.f5134c.m7202aO()) {
            C0882d m7206aK = this.f5134c.m7206aK();
            if (m7206aK != null) {
                C0886h m7152b = m7206aK.m7152b();
                if (m7152b != null) {
                    Uri m7132b = m7152b.m7132b();
                    String uri = m7132b != null ? m7132b.toString() : "";
                    String m7131c = m7152b.m7131c();
                    if (!URLUtil.isValidUrl(uri) && !StringUtils.isValidString(m7131c)) {
                        m5730c("Companion ad does not have any resources attached. Skipping...");
                        return;
                    } else if (m7152b.m7137a() == C0886h.EnumC0887a.STATIC) {
                        m5733a("Caching static companion ad at " + uri + "...");
                        Uri m5701b = m5701b(uri, Collections.emptyList(), false);
                        if (m5701b != null) {
                            m7152b.m7136a(m5701b);
                            this.f5134c.m5960a(true);
                            return;
                        }
                        str2 = "Failed to cache static companion ad";
                    } else if (m7152b.m7137a() == C0886h.EnumC0887a.HTML) {
                        if (StringUtils.isValidString(uri)) {
                            m5733a("Begin caching HTML companion ad. Fetching from " + uri + "...");
                            m7131c = m5698f(uri);
                            if (StringUtils.isValidString(m7131c)) {
                                str3 = "HTML fetched. Caching HTML now...";
                            } else {
                                str2 = "Unable to load companion ad resources from " + uri;
                            }
                        } else {
                            str3 = "Caching provided HTML for companion ad. No fetch required. HTML: " + m7131c;
                        }
                        m5733a(str3);
                        m7152b.m7133a(m5704a(m7131c, Collections.emptyList(), this.f5134c));
                        this.f5134c.m5960a(true);
                        return;
                    } else if (m7152b.m7137a() != C0886h.EnumC0887a.IFRAME) {
                        return;
                    } else {
                        str = "Skip caching of iFrame resource...";
                    }
                } else {
                    str2 = "Failed to retrieve non-video resources from companion ad. Skipping...";
                }
                m5728d(str2);
                return;
            }
            str = "No companion ad provided. Skipping...";
        } else {
            str = "Companion ad caching disabled. Skipping...";
        }
        m5733a(str);
    }

    /* renamed from: k */
    private void m5686k() {
        C0895n m7207aJ;
        Uri m7091b;
        if (m5702b()) {
            return;
        }
        if (!this.f5134c.m7201aP()) {
            m5733a("Video caching disabled. Skipping...");
        } else if (this.f5134c.m7189m() == null || (m7207aJ = this.f5134c.m7207aJ()) == null || (m7091b = m7207aJ.m7091b()) == null) {
        } else {
            Uri m5703a = m5703a(m7091b.toString(), Collections.emptyList(), false);
            if (m5703a == null) {
                m5728d("Failed to cache video file: " + m7207aJ);
                return;
            }
            m5733a("Video file successfully cached into: " + m5703a);
            m7207aJ.m7094a(m5703a);
        }
    }

    /* renamed from: l */
    private void m5685l() {
        String str;
        String str2;
        if (m5702b()) {
            return;
        }
        if (this.f5134c.m7203aN() != null) {
            StringBuilder m8752j = C0082b.m8752j("Begin caching HTML template. Fetching from ");
            m8752j.append(this.f5134c.m7203aN());
            m8752j.append("...");
            m5733a(m8752j.toString());
            str = m5705a(this.f5134c.m7203aN().toString(), this.f5134c.m5987F());
        } else {
            str = this.f5134c.m7204aM();
        }
        if (StringUtils.isValidString(str)) {
            C0875a c0875a = this.f5134c;
            c0875a.m7208a(m5704a(str, c0875a.m5987F(), this.f5134c));
            str2 = "Finish caching HTML template " + this.f5134c.m7204aM() + " for ad #" + this.f5134c.getAdIdNumber();
        } else {
            str2 = "Unable to load HTML template";
        }
        m5733a(str2);
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1337c
    /* renamed from: h */
    public void mo5689h() {
        this.f5134c.getAdEventTracker().mo6037e();
        super.mo5689h();
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1337c
    /* renamed from: i */
    public void mo5688i() {
        this.f5134c.getAdEventTracker().mo6039c();
        super.mo5688i();
    }

    @Override // com.applovin.impl.sdk.p057e.AbstractC1337c, java.lang.Runnable
    public void run() {
        super.run();
        if (this.f5134c.mo5911e()) {
            StringBuilder m8752j = C0082b.m8752j("Begin caching for VAST streaming ad #");
            m8752j.append(((AbstractC1337c) this).f5121a.getAdIdNumber());
            m8752j.append("...");
            m5733a(m8752j.toString());
            m5700c();
            if (this.f5134c.m7191k()) {
                mo5688i();
            }
            C0875a.EnumC0878b m7192h = this.f5134c.m7192h();
            C0875a.EnumC0878b enumC0878b = C0875a.EnumC0878b.COMPANION_AD;
            if (m7192h == enumC0878b) {
                m5687j();
                m5685l();
            } else {
                m5686k();
            }
            if (!this.f5134c.m7191k()) {
                mo5688i();
            }
            if (this.f5134c.m7192h() == enumC0878b) {
                m5686k();
            } else {
                m5687j();
                m5685l();
            }
        } else {
            StringBuilder m8752j2 = C0082b.m8752j("Begin caching for VAST ad #");
            m8752j2.append(((AbstractC1337c) this).f5121a.getAdIdNumber());
            m8752j2.append("...");
            m5733a(m8752j2.toString());
            m5700c();
            m5687j();
            m5686k();
            m5685l();
            mo5688i();
        }
        StringBuilder m8752j3 = C0082b.m8752j("Finished caching VAST ad #");
        m8752j3.append(this.f5134c.getAdIdNumber());
        m5733a(m8752j3.toString());
        long currentTimeMillis = System.currentTimeMillis();
        long createdAtMillis = this.f5134c.getCreatedAtMillis();
        C1326d.m5770a(this.f5134c, this.f5113b);
        C1326d.m5771a(currentTimeMillis - createdAtMillis, this.f5134c, this.f5113b);
        m5709a(this.f5134c);
        this.f5134c.m7195b();
        m5711a();
    }
}
