package com.applovin.impl.adview.activity.p037b;

import android.app.Activity;
import android.graphics.PointF;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.adview.C0998j;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.adview.C1025t;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0889j;
import com.applovin.impl.p035a.C0890k;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.p035a.C0892m;
import com.applovin.impl.p035a.C0895n;
import com.applovin.impl.p035a.EnumC0884f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p052a.C1259d;
import com.applovin.impl.sdk.p052a.C1263g;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.adview.activity.b.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/c.class */
public class C0932c extends C0936e {

    /* renamed from: G */
    private final C0875a f3475G;

    /* renamed from: H */
    private final Set<C0889j> f3476H;

    public C0932c(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.f3476H = hashSet;
        C0875a c0875a = (C0875a) abstractC1286e;
        this.f3475G = c0875a;
        C0875a.EnumC0879c enumC0879c = C0875a.EnumC0879c.VIDEO;
        hashSet.addAll(c0875a.m7209a(enumC0879c, C0890k.f3346a));
        m7033a(C0875a.EnumC0879c.IMPRESSION);
        m7031a(enumC0879c, "creativeView");
        c0875a.getAdEventTracker().mo6038d();
    }

    /* renamed from: D */
    private void m7034D() {
        if (!mo6956q() || this.f3476H.isEmpty()) {
            return;
        }
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Firing ");
        m8752j.append(this.f3476H.size());
        m8752j.append(" un-fired video progress trackers when video was completed.");
        c1479t.m5112d("AppLovinFullscreenActivity", m8752j.toString());
        m7027a(this.f3476H);
    }

    /* renamed from: a */
    private void m7033a(C0875a.EnumC0879c enumC0879c) {
        m7032a(enumC0879c, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7032a(C0875a.EnumC0879c enumC0879c, EnumC0884f enumC0884f) {
        m7030a(enumC0879c, "", enumC0884f);
    }

    /* renamed from: a */
    private void m7031a(C0875a.EnumC0879c enumC0879c, String str) {
        m7030a(enumC0879c, str, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7030a(C0875a.EnumC0879c enumC0879c, String str, EnumC0884f enumC0884f) {
        m7026a(this.f3475G.m7210a(enumC0879c, str), enumC0884f);
    }

    /* renamed from: a */
    public void m7027a(Set<C0889j> set) {
        m7026a(set, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7026a(Set<C0889j> set, EnumC0884f enumC0884f) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(((C0936e) this).f3497u.getCurrentPosition());
        C0895n m7207aJ = this.f3475G.m7207aJ();
        Uri m7095a = m7207aJ != null ? m7207aJ.m7095a() : null;
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Firing ");
        m8752j.append(set.size());
        m8752j.append(" tracker(s): ");
        m8752j.append(set);
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        C0891l.m7113a(set, seconds, m7095a, enumC0884f, this.f3426b);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: a */
    public void mo7008a(PointF pointF) {
        m7033a(C0875a.EnumC0879c.VIDEO_CLICK);
        this.f3475G.getAdEventTracker().m6027o();
        super.mo7008a(pointF);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6968a(ViewGroup viewGroup) {
        super.mo6968a(viewGroup);
        ((C0936e) this).f3481A.m6850a("PROGRESS_TRACKING", ((Long) this.f3426b.m5511a(C1314b.f4956ei)).longValue(), new C0998j.AbstractC1000a() { // from class: com.applovin.impl.adview.activity.b.c.1
            @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
            /* renamed from: a */
            public void mo6846a() {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(C0932c.this.f3483C - (((C0936e) C0932c.this).f3497u.getDuration() - ((C0936e) C0932c.this).f3497u.getCurrentPosition()));
                int m7010C = C0932c.this.m7010C();
                HashSet hashSet = new HashSet();
                Iterator it2 = new HashSet(C0932c.this.f3476H).iterator();
                while (it2.hasNext()) {
                    C0889j c0889j = (C0889j) it2.next();
                    if (c0889j.m7128a(seconds, m7010C)) {
                        hashSet.add(c0889j);
                        C0932c.this.f3476H.remove(c0889j);
                    }
                }
                C0932c.this.m7027a(hashSet);
                if (m7010C >= 25 && m7010C < 50) {
                    C0932c.this.f3475G.getAdEventTracker().m6036f();
                } else if (m7010C >= 50 && m7010C < 75) {
                    C0932c.this.f3475G.getAdEventTracker().m6035g();
                } else if (m7010C < 75) {
                } else {
                    C0932c.this.f3475G.getAdEventTracker().m6034h();
                }
            }

            @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
            /* renamed from: b */
            public boolean mo6845b() {
                return !C0932c.this.f3485E;
            }
        });
        ArrayList arrayList = new ArrayList();
        C0897a c0897a = ((C0936e) this).f3498v;
        if (c0897a != null) {
            arrayList.add(new C1259d(c0897a, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        C1011m c1011m = ((C0936e) this).f3499w;
        if (c1011m != null) {
            arrayList.add(new C1259d(c1011m, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        ProgressBar progressBar = ((C0936e) this).f3502z;
        if (progressBar != null) {
            arrayList.add(new C1259d(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ImageView imageView = ((C0936e) this).f3500x;
        if (imageView != null) {
            arrayList.add(new C1259d(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        C1025t c1025t = ((C0936e) this).f3501y;
        if (c1025t != null) {
            arrayList.add(new C1259d(c1025t, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        this.f3475G.getAdEventTracker().mo6046a((View) ((C0936e) this).f3496t, (List<C1259d>) arrayList);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: c */
    public void mo7004c() {
        m7031a(C0875a.EnumC0879c.VIDEO, "skip");
        this.f3475G.getAdEventTracker().m6028n();
        super.mo7004c();
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: c */
    public void mo7003c(long j) {
        super.mo7003c(j);
        this.f3475G.getAdEventTracker().m6047a((float) TimeUnit.MILLISECONDS.toSeconds(j), Utils.isVideoMutedInitially(this.f3426b));
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: c */
    public void mo7002c(String str) {
        m7032a(C0875a.EnumC0879c.ERROR, EnumC0884f.MEDIA_FILE_ERROR);
        this.f3475G.getAdEventTracker().mo6042a(str);
        super.mo7002c(str);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
        ((C0936e) this).f3481A.m6847c();
        super.mo6959e();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: f */
    public void mo7015f() {
        super.mo7015f();
        m7031a(this.f3485E ? C0875a.EnumC0879c.COMPANION : C0875a.EnumC0879c.VIDEO, "resume");
        this.f3475G.getAdEventTracker().m6031k();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: g */
    public void mo7014g() {
        super.mo7014g();
        m7031a(this.f3485E ? C0875a.EnumC0879c.COMPANION : C0875a.EnumC0879c.VIDEO, "pause");
        this.f3475G.getAdEventTracker().m6032j();
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        m7031a(C0875a.EnumC0879c.VIDEO, "close");
        m7031a(C0875a.EnumC0879c.COMPANION, "close");
        this.f3475G.getAdEventTracker().mo6037e();
        super.mo6958h();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    @Override // com.applovin.impl.adview.activity.p037b.C0936e, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: t */
    public void mo6954t() {
        char c;
        char c2 = 0;
        if (this.f3475G.m5968Y() >= 0 || this.f3475G.m5967Z() >= 0) {
            long m5968Y = this.f3475G.m5968Y();
            C0875a c0875a = this.f3475G;
            if (m5968Y >= 0) {
                c = c0875a.m5968Y();
            } else {
                C0892m m7189m = c0875a.m7189m();
                if (m7189m == null || m7189m.m7100b() <= 0) {
                    long j = this.f3483C;
                    if (j > 0) {
                        c2 = 0 + j;
                    }
                } else {
                    c2 = 0 + TimeUnit.SECONDS.toMillis(m7189m.m7100b());
                }
                char c3 = c2;
                if (c0875a.m5950aa()) {
                    int m5901q = (int) c0875a.m5901q();
                    c3 = c2;
                    if (m5901q > 0) {
                        c3 = c2 + TimeUnit.SECONDS.toMillis(m5901q);
                    }
                }
                c = (long) ((this.f3475G.m5967Z() / 100.0d) * c3);
            }
            m7050b(c);
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: u */
    public void mo7000u() {
        super.mo7000u();
        C0875a c0875a = this.f3475G;
        if (c0875a != null) {
            c0875a.getAdEventTracker().m6030l();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: v */
    public void mo6999v() {
        super.mo6999v();
        C0875a c0875a = this.f3475G;
        if (c0875a != null) {
            c0875a.getAdEventTracker().m6029m();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: w */
    public void mo6998w() {
        super.mo6998w();
        m7031a(C0875a.EnumC0879c.VIDEO, ((C0936e) this).f3482B ? "mute" : "unmute");
        this.f3475G.getAdEventTracker().m6041a(((C0936e) this).f3482B);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0936e
    /* renamed from: x */
    public void mo6997x() {
        m7034D();
        if (!C0891l.m7106c(this.f3475G)) {
            this.f3427c.m5116b("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            mo6958h();
        } else if (this.f3485E) {
        } else {
            m7031a(C0875a.EnumC0879c.COMPANION, "creativeView");
            this.f3475G.getAdEventTracker().m6033i();
            C1263g adEventTracker = this.f3475G.getAdEventTracker();
            AppLovinAdView appLovinAdView = this.f3430f;
            adEventTracker.mo6046a(appLovinAdView, Collections.singletonList(new C1259d(appLovinAdView, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
            super.mo6997x();
        }
    }
}
