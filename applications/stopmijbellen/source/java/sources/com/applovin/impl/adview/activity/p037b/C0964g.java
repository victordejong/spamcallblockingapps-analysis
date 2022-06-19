package com.applovin.impl.adview.activity.p037b;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.applovin.impl.adview.AbstractC0994g;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.adview.activity.p036a.C0912d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.C1583R;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.adview.activity.b.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/g.class */
public class C0964g extends AbstractC0914a implements AbstractC0994g {

    /* renamed from: u */
    private final C1011m f3562u;

    /* renamed from: v */
    private final ImageView f3563v;

    /* renamed from: w */
    private final C0897a f3564w;

    /* renamed from: x */
    private final boolean f3565x;

    /* renamed from: y */
    private double f3566y;

    /* renamed from: z */
    private double f3567z;

    /* renamed from: t */
    private final C0912d f3561t = new C0912d(this.f3425a, this.f3429e, this.f3426b);

    /* renamed from: A */
    private AtomicBoolean f3556A = new AtomicBoolean();

    /* renamed from: B */
    private AtomicBoolean f3557B = new AtomicBoolean();

    /* renamed from: C */
    private boolean f3558C = Utils.isVideoMutedInitially(this.f3426b);

    /* renamed from: D */
    private long f3559D = -2;

    /* renamed from: E */
    private long f3560E = 0;

    /* renamed from: com.applovin.impl.adview.activity.b.g$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/g$a.class */
    public class View$OnClickListenerC0968a implements View.OnClickListener {
        private View$OnClickListenerC0968a() {
            C0964g.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == C0964g.this.f3562u) {
                if (!C0964g.this.mo6955r()) {
                    C0964g.this.m6953u();
                    return;
                }
                C0964g.this.m7039o();
                C0964g.this.f3441q.m5850b();
            } else if (view == C0964g.this.f3563v) {
                C0964g.this.m6951w();
            } else {
                C1479t c1479t = C0964g.this.f3427c;
                c1479t.m5111e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }
    }

    public C0964g(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        boolean mo5911e = this.f3425a.mo5911e();
        this.f3565x = mo5911e;
        View$OnClickListenerC0968a view$OnClickListenerC0968a = new View$OnClickListenerC0968a();
        if (abstractC1286e.m5903o() >= 0) {
            C1011m c1011m = new C1011m(abstractC1286e.m5897u(), activity);
            this.f3562u = c1011m;
            c1011m.setVisibility(8);
            c1011m.setOnClickListener(view$OnClickListenerC0968a);
        } else {
            this.f3562u = null;
        }
        if (m6965a(this.f3558C, c1408l)) {
            ImageView imageView = new ImageView(activity);
            this.f3563v = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(view$OnClickListenerC0968a);
            m6960d(this.f3558C);
        } else {
            this.f3563v = null;
        }
        if (!mo5911e) {
            this.f3564w = null;
            return;
        }
        C0897a c0897a = new C0897a(activity, ((Integer) c1408l.m5511a(C1314b.f4825cB)).intValue(), 16842874);
        this.f3564w = c0897a;
        c0897a.setColor(Color.parseColor("#75FFFFFF"));
        c0897a.setBackgroundColor(Color.parseColor("#00000000"));
        c0897a.setVisibility(8);
    }

    /* renamed from: a */
    private static boolean m6965a(boolean z, C1408l c1408l) {
        if (!((Boolean) c1408l.m5511a(C1314b.f4866cq)).booleanValue()) {
            return false;
        }
        if (((Boolean) c1408l.m5511a(C1314b.f4867cr)).booleanValue() && !z) {
            return ((Boolean) c1408l.m5511a(C1314b.f4869ct)).booleanValue();
        }
        return true;
    }

    /* renamed from: d */
    private void m6960d(boolean z) {
        if (C1492g.m5071d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f3429e.getDrawable(z ? C1583R.C1585drawable.unmute_to_mute : C1583R.C1585drawable.mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.f3563v.setScaleType(ImageView.ScaleType.FIT_XY);
                this.f3563v.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri m5926ay = z ? this.f3425a.m5926ay() : this.f3425a.m5925az();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.f3563v.setImageURI(m5926ay);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* renamed from: x */
    public void m6950x() {
        if (this.f3557B.compareAndSet(false, true)) {
            m7057a(this.f3562u, this.f3425a.m5903o(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.2
                @Override // java.lang.Runnable
                public void run() {
                    C0964g.this.f3559D = -1L;
                    C0964g.this.f3560E = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: a */
    public void mo5845a() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
    }

    @Override // com.applovin.impl.adview.AbstractC0994g
    /* renamed from: a */
    public void mo6861a(double d) {
        StringBuilder m8752j = C0082b.m8752j("javascript:al_setVideoMuted(");
        m8752j.append(this.f3558C);
        m8752j.append(");");
        m7048b(m8752j.toString());
        C0897a c0897a = this.f3564w;
        if (c0897a != null) {
            c0897a.m7083b();
        }
        if (this.f3562u != null) {
            m6950x();
        }
        this.f3430f.getController().m6903m();
        this.f3567z = d;
        mo6954t();
        if (this.f3425a.m5942ai()) {
            this.f3441q.m5854a(this.f3425a, (Runnable) null);
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6969a(long j) {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: a */
    public void mo6968a(ViewGroup viewGroup) {
        this.f3561t.m7067a(this.f3563v, this.f3562u, this.f3431g, this.f3564w, this.f3430f, viewGroup);
        this.f3430f.getController().m6938a(this);
        m7052a(false);
        C0897a c0897a = this.f3564w;
        if (c0897a != null) {
            c0897a.m7084a();
        }
        this.f3430f.renderAd(this.f3425a);
        if (this.f3562u != null) {
            this.f3426b.m5525R().m5651a(new C1387z(this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.1
                @Override // java.lang.Runnable
                public void run() {
                    C0964g.this.m6950x();
                }
            }), C1362o.EnumC1364a.MAIN, this.f3425a.m5902p(), true);
        }
        super.m7047b(this.f3558C);
    }

    @Override // com.applovin.impl.adview.AbstractC0994g
    /* renamed from: a_ */
    public void mo6860a_() {
        m6952v();
    }

    @Override // com.applovin.impl.sdk.p054b.C1303b.AbstractC1310a
    /* renamed from: b */
    public void mo5844b() {
        this.f3427c.m5116b("AppLovinFullscreenActivity", "Skipping video from prompt");
        m6953u();
    }

    @Override // com.applovin.impl.adview.AbstractC0994g
    /* renamed from: b */
    public void mo6859b(double d) {
        this.f3566y = d;
    }

    @Override // com.applovin.impl.adview.AbstractC0994g
    /* renamed from: b_ */
    public void mo6858b_() {
        C0897a c0897a = this.f3564w;
        if (c0897a != null) {
            c0897a.m7084a();
        }
    }

    @Override // com.applovin.impl.adview.AbstractC0994g
    /* renamed from: c */
    public void mo6857c() {
        C0897a c0897a = this.f3564w;
        if (c0897a != null) {
            c0897a.m7083b();
        }
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: d */
    public void mo6961d() {
        mo6968a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: e */
    public void mo6959e() {
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: h */
    public void mo6958h() {
        mo6957l();
        super.mo6958h();
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: l */
    public void mo6957l() {
        super.m7060a((int) this.f3566y, this.f3565x, mo6956q(), this.f3559D);
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: q */
    public boolean mo6956q() {
        return this.f3566y >= ((double) this.f3425a.m5981L());
    }

    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: r */
    public boolean mo6955r() {
        return m7037s() && !mo6956q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008e, code lost:
        if (r14 > 0) goto L16;
     */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    @Override // com.applovin.impl.adview.activity.p037b.AbstractC0914a
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6954t() {
        /*
            r6 = this;
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            long r0 = r0.m5968Y()
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L1a
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            int r0 = r0.m5967Z()
            if (r0 < 0) goto Lae
        L1a:
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            long r0 = r0.m5968Y()
            r7 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            r11 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L37
            r0 = r11
            long r0 = r0.m5968Y()
            r9 = r0
            goto La9
        L37:
            r0 = r11
            com.applovin.impl.sdk.ad.a r0 = (com.applovin.impl.sdk.p053ad.C1281a) r0
            r11 = r0
            r0 = r6
            double r0 = r0.f3567z
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L57
            r0 = 0
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = r12
            long r2 = (long) r2
            long r1 = r1.toMillis(r2)
            long r0 = r0 + r1
            r9 = r0
        L57:
            r0 = r9
            r7 = r0
            r0 = r11
            boolean r0 = r0.m5950aa()
            if (r0 == 0) goto L94
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            com.applovin.impl.sdk.ad.a r0 = (com.applovin.impl.sdk.p053ad.C1281a) r0
            float r0 = r0.m6019k()
            int r0 = (int) r0
            r14 = r0
            r0 = r14
            if (r0 <= 0) goto L82
        L73:
            r0 = r9
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = r14
            long r2 = (long) r2
            long r1 = r1.toMillis(r2)
            long r0 = r0 + r1
            r7 = r0
            goto L94
        L82:
            r0 = r11
            long r0 = r0.m5901q()
            int r0 = (int) r0
            r14 = r0
            r0 = r9
            r7 = r0
            r0 = r14
            if (r0 <= 0) goto L94
            goto L73
        L94:
            r0 = r7
            double r0 = (double) r0
            r12 = r0
            r0 = r6
            com.applovin.impl.sdk.ad.e r0 = r0.f3425a
            int r0 = r0.m5967Z()
            double r0 = (double) r0
            r1 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 / r1
            r1 = r12
            double r0 = r0 * r1
            long r0 = (long) r0
            r9 = r0
        La9:
            r0 = r6
            r1 = r9
            r0.m7050b(r1)
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.p037b.C0964g.mo6954t():void");
    }

    /* renamed from: u */
    public void m6953u() {
        this.f3559D = SystemClock.elapsedRealtime() - this.f3560E;
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Skipping video with skip time: ");
        m8752j.append(this.f3559D);
        m8752j.append("ms");
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        this.f3428d.m5760f();
        this.f3434j++;
        if (this.f3425a.m5896v()) {
            mo6958h();
        } else {
            m6952v();
        }
    }

    /* renamed from: v */
    public void m6952v() {
        if (this.f3556A.compareAndSet(false, true)) {
            this.f3427c.m5116b("AppLovinFullscreenActivity", "Showing postitial...");
            m7048b("javascript:al_showPostitial();");
            C1011m c1011m = this.f3562u;
            if (c1011m != null) {
                c1011m.setVisibility(8);
            }
            ImageView imageView = this.f3563v;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            C0897a c0897a = this.f3564w;
            if (c0897a != null) {
                c0897a.m7083b();
            }
            if (this.f3431g != null) {
                if (this.f3425a.m5901q() >= 0) {
                    m7057a(this.f3431g, this.f3425a.m5901q(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.3
                        @Override // java.lang.Runnable
                        public void run() {
                            C0964g.this.f3433i = SystemClock.elapsedRealtime();
                        }
                    });
                } else {
                    this.f3431g.setVisibility(0);
                }
            }
            this.f3430f.getController().m6901n();
        }
    }

    /* renamed from: w */
    public void m6951w() {
        this.f3558C = !this.f3558C;
        StringBuilder m8752j = C0082b.m8752j("javascript:al_setVideoMuted(");
        m8752j.append(this.f3558C);
        m8752j.append(");");
        m7048b(m8752j.toString());
        m6960d(this.f3558C);
        m7051a(this.f3558C, 0L);
    }
}
