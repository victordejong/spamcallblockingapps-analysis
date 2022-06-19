package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.internal.C6155o;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcip.class */
public final class zzcip extends FrameLayout implements rj0 {

    /* renamed from: d */
    private final kk0 f33880d;

    /* renamed from: e */
    private final FrameLayout f33881e;

    /* renamed from: f */
    private final View f33882f;

    /* renamed from: g */
    private final C6308ax f33883g;

    /* renamed from: h */
    private final mk0 f33884h;

    /* renamed from: i */
    private final long f33885i;

    /* renamed from: j */
    private final zzcii f33886j;

    /* renamed from: k */
    private boolean f33887k;

    /* renamed from: l */
    private boolean f33888l;

    /* renamed from: m */
    private boolean f33889m;

    /* renamed from: n */
    private boolean f33890n;

    /* renamed from: o */
    private long f33891o;

    /* renamed from: p */
    private long f33892p;

    /* renamed from: q */
    private String f33893q;

    /* renamed from: r */
    private String[] f33894r;

    /* renamed from: s */
    private Bitmap f33895s;

    /* renamed from: t */
    private final ImageView f33896t;

    /* renamed from: u */
    private boolean f33897u;

    public zzcip(Context context, kk0 kk0Var, int i, boolean z, C6308ax c6308ax, jk0 jk0Var) {
        super(context);
        zzcjs zzcjsVar;
        this.f33880d = kk0Var;
        this.f33883g = c6308ax;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f33881e = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        C6155o.m17018j(kk0Var.mo7906h());
        sj0 sj0Var = kk0Var.mo7906h().f18276a;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null || applicationInfo.targetSdkVersion >= 11) {
            zzcjsVar = i == 2 ? new zzcjs(context, new lk0(context, kk0Var.zzt(), kk0Var.mo7903j(), c6308ax, kk0Var.zzi()), kk0Var, z, sj0.m11004a(kk0Var), jk0Var) : new zzcig(context, kk0Var, z, sj0.m11004a(kk0Var), jk0Var, new lk0(context, kk0Var.zzt(), kk0Var.mo7903j(), c6308ax, kk0Var.zzi()));
        } else {
            zzcjsVar = null;
        }
        this.f33886j = zzcjsVar;
        View view = new View(context);
        this.f33882f = view;
        view.setBackgroundColor(0);
        if (zzcjsVar != null) {
            frameLayout.addView(zzcjsVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25435A)).booleanValue()) {
                frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.bringChildToFront(view);
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25830x)).booleanValue()) {
                m8035l();
            }
        }
        this.f33896t = new ImageView(context);
        this.f33885i = ((Long) C7192yr.m8714c().m14263c(C6679kw.f25451C)).longValue();
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25846z)).booleanValue();
        this.f33890n = booleanValue;
        if (c6308ax != null) {
            c6308ax.m16472d("spinner_used", true != booleanValue ? "0" : "1");
        }
        this.f33884h = new mk0(this);
        if (zzcjsVar != null) {
            zzcjsVar.mo7984i(this);
        }
        if (zzcjsVar == null) {
            mo8038i("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* renamed from: q */
    private final boolean m8030q() {
        return this.f33896t.getParent() != null;
    }

    /* renamed from: r */
    public final void m8029r(String str, String... strArr) {
        String str2;
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str3 = null;
        for (String str4 : strArr) {
            if (str3 == null) {
                str2 = str4;
            } else {
                hashMap.put(str3, str4);
                str2 = null;
            }
            str3 = str2;
        }
        this.f33880d.mo7959D0("onVideoEvent", hashMap);
    }

    /* renamed from: s */
    private final void m8028s() {
        if (this.f33880d.mo7908g() != null && this.f33888l && !this.f33889m) {
            this.f33880d.mo7908g().getWindow().clearFlags(128);
            this.f33888l = false;
        }
    }

    /* renamed from: A */
    public final void m8054A(int i) {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.mo7977p(i);
    }

    /* renamed from: B */
    public final void m8053B() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.f33879e.m12642a(true);
        zzciiVar.zzt();
    }

    /* renamed from: C */
    public final void m8052C() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.f33879e.m12642a(false);
        zzciiVar.zzt();
    }

    /* renamed from: D */
    public final void m8051D(float f) {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.f33879e.m12641b(f);
        zzciiVar.zzt();
    }

    /* renamed from: E */
    public final void m8050E(int i) {
        this.f33886j.mo7967z(i);
    }

    /* renamed from: F */
    public final void m8049F(int i) {
        this.f33886j.mo8020A(i);
    }

    /* renamed from: G */
    public final void m8048G(int i) {
        this.f33886j.mo8019B(i);
    }

    /* renamed from: H */
    public final void m8047H(int i) {
        this.f33886j.mo7992b(i);
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: a */
    public final void mo8046a() {
        m8029r("ended", new String[0]);
        m8028s();
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: b */
    public final void mo8045b() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar != null && this.f33892p == 0) {
            m8029r("canplaythrough", "duration", String.valueOf(zzciiVar.mo7979n() / 1000.0f), "videoWidth", String.valueOf(this.f33886j.mo7975r()), "videoHeight", String.valueOf(this.f33886j.mo7974s()));
        }
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: c */
    public final void mo8044c() {
        if (this.f33880d.mo7908g() != null && !this.f33888l) {
            boolean z = (this.f33880d.mo7908g().getWindow().getAttributes().flags & 128) != 0;
            this.f33889m = z;
            if (!z) {
                this.f33880d.mo7908g().getWindow().addFlags(128);
                this.f33888l = true;
            }
        }
        this.f33887k = true;
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: d */
    public final void mo8043d(int i, int i2) {
        if (!this.f33890n) {
            return;
        }
        AbstractC6381cw<Integer> abstractC6381cw = C6679kw.f25443B;
        int max = Math.max(i / ((Integer) C7192yr.m8714c().m14263c(abstractC6381cw)).intValue(), 1);
        int max2 = Math.max(i2 / ((Integer) C7192yr.m8714c().m14263c(abstractC6381cw)).intValue(), 1);
        Bitmap bitmap = this.f33895s;
        if (bitmap != null && bitmap.getWidth() == max && this.f33895s.getHeight() == max2) {
            return;
        }
        this.f33895s = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
        this.f33897u = false;
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: e */
    public final void mo8042e() {
        m8029r("pause", new String[0]);
        m8028s();
        this.f33887k = false;
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: f */
    public final void mo8041f() {
        if (this.f33897u && this.f33895s != null && !m8030q()) {
            this.f33896t.setImageBitmap(this.f33895s);
            this.f33896t.invalidate();
            this.f33881e.addView(this.f33896t, new FrameLayout.LayoutParams(-1, -1));
            this.f33881e.bringChildToFront(this.f33896t);
        }
        this.f33884h.m13174a();
        this.f33892p = this.f33891o;
        C5679c2.f18451a.post(new wj0(this));
    }

    public final void finalize() {
        try {
            this.f33884h.m13174a();
            zzcii zzciiVar = this.f33886j;
            if (zzciiVar != null) {
                qi0.f28499e.execute(tj0.m10649a(zzciiVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: g */
    public final void mo8040g(String str, String str2) {
        m8029r("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: h */
    public final void mo8039h() {
        this.f33882f.setVisibility(4);
    }

    @Override // com.google.android.gms.internal.ads.rj0
    /* renamed from: i */
    public final void mo8038i(String str, String str2) {
        m8029r("error", "what", str, "extra", str2);
    }

    /* renamed from: j */
    public final void m8037j(int i) {
        this.f33886j.mo7987f(i);
    }

    @TargetApi(14)
    /* renamed from: k */
    public final void m8036k(MotionEvent motionEvent) {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.dispatchTouchEvent(motionEvent);
    }

    @TargetApi(14)
    /* renamed from: l */
    public final void m8035l() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        TextView textView = new TextView(zzciiVar.getContext());
        String valueOf = String.valueOf(this.f33886j.mo7985h());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f33881e.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f33881e.bringChildToFront(textView);
    }

    /* renamed from: m */
    public final void m8034m() {
        this.f33884h.m13174a();
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar != null) {
            zzciiVar.mo7982k();
        }
        m8028s();
    }

    /* renamed from: n */
    public final void m8033n() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        long mo7978o = zzciiVar.mo7978o();
        if (this.f33891o == mo7978o || mo7978o <= 0) {
            return;
        }
        float f = ((float) mo7978o) / 1000.0f;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue()) {
            m8029r("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.f33886j.mo7970w()), "qoeCachedBytes", String.valueOf(this.f33886j.mo7971v()), "qoeLoadedBytes", String.valueOf(this.f33886j.mo7972u()), "droppedFrames", String.valueOf(this.f33886j.mo7969x()), "reportTime", String.valueOf(C5667s.m18153k().mo16807a()));
        } else {
            m8029r("timeupdate", "time", String.valueOf(f));
        }
        this.f33891o = mo7978o;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f33884h.m13173b();
        } else {
            this.f33884h.m13174a();
            this.f33892p = this.f33891o;
        }
        C5679c2.f18451a.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.uj0

            /* renamed from: d */
            private final zzcip f30644d;

            /* renamed from: e */
            private final boolean f30645e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30644d = this;
                this.f30645e = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30644d.m8031p(this.f30645e);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.rj0
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f33884h.m13173b();
            z = true;
        } else {
            this.f33884h.m13174a();
            this.f33892p = this.f33891o;
            z = false;
        }
        C5679c2.f18451a.post(new xj0(this, z));
    }

    /* renamed from: p */
    public final /* synthetic */ void m8031p(boolean z) {
        m8029r("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    /* renamed from: t */
    public final void m8027t(int i) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25435A)).booleanValue()) {
            this.f33881e.setBackgroundColor(i);
            this.f33882f.setBackgroundColor(i);
        }
    }

    /* renamed from: u */
    public final void m8026u(int i, int i2, int i3, int i4) {
        if (C5722o1.m17988m()) {
            StringBuilder sb = new StringBuilder(75);
            sb.append("Set video bounds to x:");
            sb.append(i);
            sb.append(";y:");
            sb.append(i2);
            sb.append(";w:");
            sb.append(i3);
            sb.append(";h:");
            sb.append(i4);
            C5722o1.m17990k(sb.toString());
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.f33881e.setLayoutParams(layoutParams);
        requestLayout();
    }

    /* renamed from: v */
    public final void m8025v(String str, String[] strArr) {
        this.f33893q = str;
        this.f33894r = strArr;
    }

    /* renamed from: w */
    public final void m8024w(float f, float f2) {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar != null) {
            zzciiVar.mo7976q(f, f2);
        }
    }

    /* renamed from: x */
    public final void m8023x() {
        if (this.f33886j == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f33893q)) {
            this.f33886j.mo7968y(this.f33893q, this.f33894r);
        } else {
            m8029r("no_src", new String[0]);
        }
    }

    /* renamed from: y */
    public final void m8022y() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.mo7980m();
    }

    /* renamed from: z */
    public final void m8021z() {
        zzcii zzciiVar = this.f33886j;
        if (zzciiVar == null) {
            return;
        }
        zzciiVar.mo7981l();
    }

    @Override // com.google.android.gms.internal.ads.rj0
    public final void zza() {
        this.f33884h.m13173b();
        C5679c2.f18451a.post(new vj0(this));
    }

    @Override // com.google.android.gms.internal.ads.rj0
    public final void zzi() {
        if (this.f33887k && m8030q()) {
            this.f33881e.removeView(this.f33896t);
        }
        if (this.f33895s == null) {
            return;
        }
        long mo16806b = C5667s.m18153k().mo16806b();
        if (this.f33886j.getBitmap(this.f33895s) != null) {
            this.f33897u = true;
        }
        long mo16806b2 = C5667s.m18153k().mo16806b() - mo16806b;
        if (C5722o1.m17988m()) {
            StringBuilder sb = new StringBuilder(46);
            sb.append("Spinner frame grab took ");
            sb.append(mo16806b2);
            sb.append("ms");
            C5722o1.m17990k(sb.toString());
        }
        if (mo16806b2 <= this.f33885i) {
            return;
        }
        ei0.m15464f("Spinner frame grab crossed jank threshold! Suspending spinner.");
        this.f33890n = false;
        this.f33895s = null;
        C6308ax c6308ax = this.f33883g;
        if (c6308ax == null) {
            return;
        }
        c6308ax.m16472d("spinner_jank", Long.toString(mo16806b2));
    }
}
