package com.applovin.impl.adview;

import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.p483a.C6905k;
import com.applovin.impl.p483a.EnumC6899d;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p137a.C2034d;
import p131c.p135b.p136a.p137a.C2035e;
import p131c.p135b.p136a.p137a.C2036f;
import p131c.p135b.p136a.p138b.C2082h;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: com.applovin.impl.adview.r */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/r.class */
public class ActivityC6965r extends AbstractActivityC6931n {

    /* renamed from: S */
    public final Set<C2034d> f21379S = new HashSet();

    /* renamed from: com.applovin.impl.adview.r$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/r$a.class */
    public class C6966a implements C2082h.AbstractC2084b {
        public C6966a() {
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: a */
        public void mo19212a() {
            ActivityC6965r.this.handleCountdownStep();
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: b */
        public boolean mo19211b() {
            return ActivityC6965r.this.shouldContinueFullLengthVideoCountdown();
        }
    }

    /* renamed from: a */
    public final void m19220a(C6894a.EnumC6897c cVar) {
        m19219a(cVar, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m19219a(C6894a.EnumC6897c cVar, EnumC6899d dVar) {
        m19217a(cVar, "", dVar);
    }

    /* renamed from: a */
    public final void m19218a(C6894a.EnumC6897c cVar, String str) {
        m19217a(cVar, str, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m19217a(C6894a.EnumC6897c cVar, String str, EnumC6899d dVar) {
        if (isVastAd()) {
            m19215a(((C6894a) this.currentAd).m19455a(cVar, str), dVar);
        }
    }

    /* renamed from: a */
    public final void m19216a(Set<C2034d> set) {
        m19215a(set, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m19215a(Set<C2034d> set, EnumC6899d dVar) {
        if (isVastAd() && set != null && !set.isEmpty()) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(this.videoView.getCurrentPosition());
            C6905k X0 = mo19213r().m19459X0();
            Uri a = X0 != null ? X0.m19409a() : null;
            C2374t tVar = this.logger;
            tVar.m30044b("InterstitialActivity", "Firing " + set.size() + " tracker(s): " + set);
            C2036f.m31215a(set, seconds, a, dVar, this.sdk);
        }
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void clickThroughFromVideo(PointF pointF) {
        super.clickThroughFromVideo(pointF);
        m19220a(C6894a.EnumC6897c.VIDEO_CLICK);
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n, p131c.p135b.p136a.p138b.AbstractC2086i, android.content.DialogInterface
    public void dismiss() {
        if (isVastAd()) {
            m19218a(C6894a.EnumC6897c.VIDEO, "close");
            m19218a(C6894a.EnumC6897c.COMPANION, "close");
        }
        super.dismiss();
    }

    public void handleCountdownStep() {
        if (isVastAd()) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(this.videoView.getDuration() - this.videoView.getCurrentPosition());
            long j = this.computedLengthSeconds;
            HashSet hashSet = new HashSet();
            for (C2034d dVar : new HashSet(this.f21379S)) {
                if (dVar.m31230a(j - seconds, getVideoPercentViewed())) {
                    hashSet.add(dVar);
                    this.f21379S.remove(dVar);
                }
            }
            m19216a(hashSet);
        }
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void handleMediaError(String str) {
        m19219a(C6894a.EnumC6897c.ERROR, EnumC6899d.MEDIA_FILE_ERROR);
        super.handleMediaError(str);
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isVastAd()) {
            this.f21379S.addAll(mo19213r().m19454a(C6894a.EnumC6897c.VIDEO, C2035e.f7940a));
            m19220a(C6894a.EnumC6897c.IMPRESSION);
            m19218a(C6894a.EnumC6897c.VIDEO, "creativeView");
        }
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n, android.app.Activity
    public void onPause() {
        super.onPause();
        m19218a(this.postitialWasDisplayed ? C6894a.EnumC6897c.COMPANION : C6894a.EnumC6897c.VIDEO, "pause");
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n, android.app.Activity
    public void onResume() {
        super.onResume();
        m19218a(this.postitialWasDisplayed ? C6894a.EnumC6897c.COMPANION : C6894a.EnumC6897c.VIDEO, "resume");
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void playVideo() {
        this.countdownManager.m31101a("PROGRESS_TRACKING", ((Long) this.sdk.m30291a(C2251d.C2256e.f8551I3)).longValue(), new C6966a());
        super.playVideo();
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    /* renamed from: q */
    public final void mo19214q() {
        if (isFullyWatched() && !this.f21379S.isEmpty()) {
            C2374t tVar = this.logger;
            tVar.m30040d("InterstitialActivity", "Firing " + this.f21379S.size() + " un-fired video progress trackers when video was completed.");
            m19216a(this.f21379S);
        }
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    /* renamed from: r */
    public final C6894a mo19213r() {
        return this.currentAd instanceof C6894a ? (C6894a) this.currentAd : null;
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void showPostitial() {
        if (isVastAd()) {
            mo19214q();
            if (!C2036f.m31208c(mo19213r())) {
                dismiss();
                return;
            } else if (!this.postitialWasDisplayed) {
                m19218a(C6894a.EnumC6897c.COMPANION, "creativeView");
            } else {
                return;
            }
        }
        super.showPostitial();
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void skipVideo() {
        m19218a(C6894a.EnumC6897c.VIDEO, "skip");
        super.skipVideo();
    }

    @Override // com.applovin.impl.adview.AbstractActivityC6931n
    public void toggleMute() {
        super.toggleMute();
        m19218a(C6894a.EnumC6897c.VIDEO, this.videoMuted ? "mute" : "unmute");
    }
}
