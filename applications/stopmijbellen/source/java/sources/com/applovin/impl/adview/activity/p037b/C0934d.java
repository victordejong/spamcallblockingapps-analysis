package com.applovin.impl.adview.activity.p037b;

import android.app.Activity;
import android.graphics.PointF;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
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
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* renamed from: com.applovin.impl.adview.activity.b.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/d.class */
public class C0934d extends C0949f {

    /* renamed from: D */
    private final C0875a f3478D;

    /* renamed from: E */
    private final Set<C0889j> f3479E;

    public C0934d(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.f3479E = hashSet;
        C0875a c0875a = (C0875a) abstractC1286e;
        this.f3478D = c0875a;
        C0875a.EnumC0879c enumC0879c = C0875a.EnumC0879c.VIDEO;
        hashSet.addAll(c0875a.m7209a(enumC0879c, C0890k.f3346a));
        m7024a(C0875a.EnumC0879c.IMPRESSION);
        m7022a(enumC0879c, "creativeView");
        c0875a.getAdEventTracker().mo6038d();
    }

    /* renamed from: a */
    private void m7024a(C0875a.EnumC0879c enumC0879c) {
        m7023a(enumC0879c, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7023a(C0875a.EnumC0879c enumC0879c, EnumC0884f enumC0884f) {
        m7021a(enumC0879c, "", enumC0884f);
    }

    /* renamed from: a */
    private void m7022a(C0875a.EnumC0879c enumC0879c, String str) {
        m7021a(enumC0879c, str, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7021a(C0875a.EnumC0879c enumC0879c, String str, EnumC0884f enumC0884f) {
        m7017a(this.f3478D.m7210a(enumC0879c, str), enumC0884f);
    }

    /* renamed from: a */
    public void m7018a(Set<C0889j> set) {
        m7017a(set, EnumC0884f.UNSPECIFIED);
    }

    /* renamed from: a */
    private void m7017a(Set<C0889j> set, EnumC0884f enumC0884f) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(((C0949f) this).f3533t.getCurrentPosition());
        C0895n m7207aJ = this.f3478D.m7207aJ();
        Uri m7095a = m7207aJ != null ? m7207aJ.m7095a() : null;
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Firing ");
        m8752j.append(set.size());
        m8752j.append(" tracker(s): ");
        m8752j.append(set);
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        C0891l.m7113a(set, seconds, m7095a, enumC0884f, this.f3426b);
    }

    /* renamed from: z */
    private void m7013z() {
        if (!mo6956q() || this.f3479E.isEmpty()) {
            return;
        }
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Firing ");
        m8752j.append(this.f3479E.size());
        m8752j.append(" un-fired video progress trackers when video was completed.");
        c1479t.m5112d("AppLovinFullscreenActivity", m8752j.toString());
        m7018a(this.f3479E);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: a */
    public void mo6992a(PointF pointF) {
        m7024a(C0875a.EnumC0879c.VIDEO_CLICK);
        this.f3478D.getAdEventTracker().m6027o();
        super.mo6992a(pointF);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6968a(ViewGroup viewGroup) {
        super.mo6968a(viewGroup);
        ((C0949f) this).f3539z.m6850a("PROGRESS_TRACKING", ((Long) this.f3426b.m5511a(C1314b.f4956ei)).longValue(), new C0998j.AbstractC1000a() { // from class: com.applovin.impl.adview.activity.b.d.1
            @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
            /* renamed from: a */
            public void mo6846a() {
                long seconds = TimeUnit.MILLISECONDS.toSeconds(((C0949f) C0934d.this).f3518B - (((C0949f) C0934d.this).f3533t.getDuration() - ((C0949f) C0934d.this).f3533t.getCurrentPosition()));
                int m6971y = C0934d.this.m6971y();
                HashSet hashSet = new HashSet();
                Iterator it2 = new HashSet(C0934d.this.f3479E).iterator();
                while (it2.hasNext()) {
                    C0889j c0889j = (C0889j) it2.next();
                    if (c0889j.m7128a(seconds, m6971y)) {
                        hashSet.add(c0889j);
                        C0934d.this.f3479E.remove(c0889j);
                    }
                }
                C0934d.this.m7018a(hashSet);
                if (m6971y >= 25 && m6971y < 50) {
                    C0934d.this.f3478D.getAdEventTracker().m6036f();
                } else if (m6971y >= 50 && m6971y < 75) {
                    C0934d.this.f3478D.getAdEventTracker().m6035g();
                } else if (m6971y < 75) {
                } else {
                    C0934d.this.f3478D.getAdEventTracker().m6034h();
                }
            }

            @Override // com.applovin.impl.adview.C0998j.AbstractC1000a
            /* renamed from: b */
            public boolean mo6845b() {
                return !C0934d.this.f3519C;
            }
        });
        ArrayList arrayList = new ArrayList();
        C0897a c0897a = ((C0949f) this).f3534u;
        if (c0897a != null) {
            arrayList.add(new C1259d(c0897a, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        C1011m c1011m = ((C0949f) this).f3535v;
        if (c1011m != null) {
            arrayList.add(new C1259d(c1011m, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        ProgressBar progressBar = ((C0949f) this).f3538y;
        if (progressBar != null) {
            arrayList.add(new C1259d(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ImageView imageView = ((C0949f) this).f3536w;
        if (imageView != null) {
            arrayList.add(new C1259d(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        C1025t c1025t = ((C0949f) this).f3537x;
        if (c1025t != null) {
            arrayList.add(new C1259d(c1025t, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        this.f3478D.getAdEventTracker().mo6046a(((C0949f) this).f3533t, arrayList);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: c */
    public void mo6984c() {
        m7022a(C0875a.EnumC0879c.VIDEO, "skip");
        this.f3478D.getAdEventTracker().m6028n();
        super.mo6984c();
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: c */
    public void mo6983c(long j) {
        super.mo6983c(j);
        this.f3478D.getAdEventTracker().m6047a((float) TimeUnit.MILLISECONDS.toSeconds(j), Utils.isVideoMutedInitially(this.f3426b));
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: c */
    public void mo6981c(String str) {
        m7023a(C0875a.EnumC0879c.ERROR, EnumC0884f.MEDIA_FILE_ERROR);
        this.f3478D.getAdEventTracker().mo6042a(str);
        super.mo6981c(str);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
        ((C0949f) this).f3539z.m6847c();
        super.mo6959e();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: f */
    public void mo7015f() {
        super.mo7015f();
        m7022a(this.f3519C ? C0875a.EnumC0879c.COMPANION : C0875a.EnumC0879c.VIDEO, "resume");
        this.f3478D.getAdEventTracker().m6031k();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: g */
    public void mo7014g() {
        super.mo7014g();
        m7022a(this.f3519C ? C0875a.EnumC0879c.COMPANION : C0875a.EnumC0879c.VIDEO, "pause");
        this.f3478D.getAdEventTracker().m6032j();
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        m7022a(C0875a.EnumC0879c.VIDEO, "close");
        m7022a(C0875a.EnumC0879c.COMPANION, "close");
        this.f3478D.getAdEventTracker().mo6037e();
        super.mo6958h();
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    @Override // com.applovin.impl.adview.activity.p037b.C0949f, com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: t */
    public void mo6954t() {
        char c;
        char c2 = 0;
        if (this.f3478D.m5968Y() >= 0 || this.f3478D.m5967Z() >= 0) {
            long m5968Y = this.f3478D.m5968Y();
            C0875a c0875a = this.f3478D;
            if (m5968Y >= 0) {
                c = c0875a.m5968Y();
            } else {
                C0892m m7189m = c0875a.m7189m();
                if (m7189m == null || m7189m.m7100b() <= 0) {
                    long j = ((C0949f) this).f3518B;
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
                c = (long) ((this.f3478D.m5967Z() / 100.0d) * c3);
            }
            m7050b(c);
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: u */
    public void mo6975u() {
        super.mo6975u();
        C0875a c0875a = this.f3478D;
        if (c0875a != null) {
            c0875a.getAdEventTracker().m6030l();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: v */
    public void mo6974v() {
        super.mo6974v();
        C0875a c0875a = this.f3478D;
        if (c0875a != null) {
            c0875a.getAdEventTracker().m6029m();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: w */
    public void mo6973w() {
        super.mo6973w();
        m7022a(C0875a.EnumC0879c.VIDEO, ((C0949f) this).f3517A ? "mute" : "unmute");
        this.f3478D.getAdEventTracker().m6041a(((C0949f) this).f3517A);
    }

    @Override // com.applovin.impl.adview.activity.p037b.C0949f
    /* renamed from: x */
    public void mo6972x() {
        m7013z();
        if (!C0891l.m7106c(this.f3478D)) {
            this.f3427c.m5116b("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            mo6958h();
        } else if (this.f3519C) {
        } else {
            m7022a(C0875a.EnumC0879c.COMPANION, "creativeView");
            this.f3478D.getAdEventTracker().m6033i();
            C1263g adEventTracker = this.f3478D.getAdEventTracker();
            AppLovinAdView appLovinAdView = this.f3430f;
            adEventTracker.mo6046a(appLovinAdView, Collections.singletonList(new C1259d(appLovinAdView, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
            super.mo6972x();
        }
    }
}
