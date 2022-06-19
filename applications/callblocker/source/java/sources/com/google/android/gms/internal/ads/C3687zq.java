package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.C2662s;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.zq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zq.class */
public final class C3687zq extends FrameLayout implements AbstractC3682zl {

    /* renamed from: a */
    private final aad f17698a;

    /* renamed from: b */
    private final FrameLayout f17699b;

    /* renamed from: c */
    private final C3373o f17700c;

    /* renamed from: d */
    private final aaf f17701d;

    /* renamed from: e */
    private final long f17702e;

    /* renamed from: f */
    private AbstractC3685zo f17703f;

    /* renamed from: g */
    private boolean f17704g;

    /* renamed from: h */
    private boolean f17705h;

    /* renamed from: i */
    private boolean f17706i;

    /* renamed from: j */
    private boolean f17707j;

    /* renamed from: k */
    private long f17708k;

    /* renamed from: l */
    private long f17709l;

    /* renamed from: m */
    private String f17710m;

    /* renamed from: n */
    private String[] f17711n;

    /* renamed from: o */
    private Bitmap f17712o;

    /* renamed from: p */
    private ImageView f17713p;

    /* renamed from: q */
    private boolean f17714q;

    public C3687zq(Context context, aad aadVar, int i, boolean z, C3373o c3373o, aae aaeVar) {
        super(context);
        this.f17698a = aadVar;
        this.f17700c = c3373o;
        this.f17699b = new FrameLayout(context);
        addView(this.f17699b, new FrameLayout.LayoutParams(-1, -1));
        C2662s.m13981a(aadVar.mo13442g());
        this.f17703f = aadVar.mo13442g().f6629b.mo6652a(context, aadVar, i, z, c3373o, aaeVar);
        if (this.f17703f != null) {
            this.f17699b.addView(this.f17703f, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) dyx.m8158e().m7876a(edi.f16608t)).booleanValue()) {
                m6657m();
            }
        }
        this.f17713p = new ImageView(context);
        this.f17702e = ((Long) dyx.m8158e().m7876a(edi.f16612x)).longValue();
        this.f17707j = ((Boolean) dyx.m8158e().m7876a(edi.f16610v)).booleanValue();
        if (this.f17700c != null) {
            this.f17700c.m7379a("spinner_used", this.f17707j ? "1" : "0");
        }
        this.f17701d = new aaf(this);
        if (this.f17703f != null) {
            this.f17703f.mo6699a(this);
        }
        if (this.f17703f == null) {
            mo6677a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* renamed from: a */
    public static void m6681a(aad aadVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        aadVar.mo7737a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m6680a(aad aadVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        aadVar.mo7737a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m6679a(aad aadVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        aadVar.mo7737a("onVideoEvent", hashMap);
    }

    /* renamed from: b */
    public final void m6672b(String str, String... strArr) {
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
        this.f17698a.mo7737a("onVideoEvent", hashMap);
    }

    /* renamed from: p */
    private final boolean m6654p() {
        return this.f17713p.getParent() != null;
    }

    /* renamed from: q */
    private final void m6653q() {
        if (this.f17698a.mo13444f() != null && this.f17705h && !this.f17706i) {
            this.f17698a.mo13444f().getWindow().clearFlags(128);
            this.f17705h = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: a */
    public final void mo6687a() {
        this.f17701d.m13739b();
        C3567ve.f17498a.post(new RunnableC3688zr(this));
    }

    /* renamed from: a */
    public final void m6686a(float f, float f2) {
        if (this.f17703f != null) {
            this.f17703f.mo6701a(f, f2);
        }
    }

    /* renamed from: a */
    public final void m6685a(int i) {
        if (this.f17703f == null) {
            return;
        }
        this.f17703f.mo6700a(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: a */
    public final void mo6684a(int i, int i2) {
        if (this.f17707j) {
            int max = Math.max(i / ((Integer) dyx.m8158e().m7876a(edi.f16611w)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) dyx.m8158e().m7876a(edi.f16611w)).intValue(), 1);
            if (this.f17712o != null && this.f17712o.getWidth() == max && this.f17712o.getHeight() == max2) {
                return;
            }
            this.f17712o = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.f17714q = false;
        }
    }

    /* renamed from: a */
    public final void m6683a(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.f17699b.setLayoutParams(layoutParams);
        requestLayout();
    }

    @TargetApi(14)
    /* renamed from: a */
    public final void m6682a(MotionEvent motionEvent) {
        if (this.f17703f == null) {
            return;
        }
        this.f17703f.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: a */
    public final void mo6677a(String str, String str2) {
        m6672b("error", "what", str, "extra", str2);
    }

    /* renamed from: a */
    public final void m6676a(String str, String[] strArr) {
        this.f17710m = str;
        this.f17711n = strArr;
    }

    /* renamed from: a */
    public final /* synthetic */ void m6675a(boolean z) {
        m6672b("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: b */
    public final void mo6674b() {
        if (this.f17703f != null && this.f17709l == 0) {
            m6672b("canplaythrough", "duration", String.valueOf(this.f17703f.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.f17703f.getVideoWidth()), "videoHeight", String.valueOf(this.f17703f.getVideoHeight()));
        }
    }

    /* renamed from: b */
    public final void m6673b(int i) {
        this.f17703f.mo6695c(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: c */
    public final void mo6671c() {
        if (this.f17698a.mo13444f() != null && !this.f17705h) {
            this.f17706i = (this.f17698a.mo13444f().getWindow().getAttributes().flags & 128) != 0;
            if (!this.f17706i) {
                this.f17698a.mo13444f().getWindow().addFlags(128);
                this.f17705h = true;
            }
        }
        this.f17704g = true;
    }

    /* renamed from: c */
    public final void m6670c(int i) {
        this.f17703f.mo6693d(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: d */
    public final void mo6669d() {
        m6672b("pause", new String[0]);
        m6653q();
        this.f17704g = false;
    }

    /* renamed from: d */
    public final void m6668d(int i) {
        this.f17703f.mo6691e(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: e */
    public final void mo6667e() {
        m6672b("ended", new String[0]);
        m6653q();
    }

    /* renamed from: e */
    public final void m6666e(int i) {
        this.f17703f.mo6690f(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: f */
    public final void mo6665f() {
        if (this.f17714q && this.f17712o != null && !m6654p()) {
            this.f17713p.setImageBitmap(this.f17712o);
            this.f17713p.invalidate();
            this.f17699b.addView(this.f17713p, new FrameLayout.LayoutParams(-1, -1));
            this.f17699b.bringChildToFront(this.f17713p);
        }
        this.f17701d.m13740a();
        this.f17709l = this.f17708k;
        C3567ve.f17498a.post(new RunnableC3691zu(this));
    }

    /* renamed from: f */
    public final void m6664f(int i) {
        this.f17703f.mo6689g(i);
    }

    public final void finalize() {
        try {
            this.f17701d.m13740a();
            if (this.f17703f != null) {
                AbstractC3685zo abstractC3685zo = this.f17703f;
                crs crsVar = C3650yg.f17646e;
                abstractC3685zo.getClass();
                crsVar.execute(RunnableC3686zp.m6688a(abstractC3685zo));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3682zl
    /* renamed from: g */
    public final void mo6663g() {
        if (this.f17704g && m6654p()) {
            this.f17699b.removeView(this.f17713p);
        }
        if (this.f17712o != null) {
            long mo13861b = C2341q.m14737j().mo13861b();
            if (this.f17703f.getBitmap(this.f17712o) != null) {
                this.f17714q = true;
            }
            long mo13861b2 = C2341q.m14737j().mo13861b() - mo13861b;
            if (C3556uu.m7053a()) {
                C3556uu.m7052a(new StringBuilder(46).append("Spinner frame grab took ").append(mo13861b2).append("ms").toString());
            }
            if (mo13861b2 <= this.f17702e) {
                return;
            }
            C3556uu.m6745e("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.f17707j = false;
            this.f17712o = null;
            if (this.f17700c == null) {
                return;
            }
            this.f17700c.m7379a("spinner_jank", Long.toString(mo13861b2));
        }
    }

    /* renamed from: h */
    public final void m6662h() {
        if (this.f17703f == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f17710m)) {
            this.f17703f.mo6698a(this.f17710m, this.f17711n);
        } else {
            m6672b("no_src", new String[0]);
        }
    }

    /* renamed from: i */
    public final void m6661i() {
        if (this.f17703f == null) {
            return;
        }
        this.f17703f.mo6694d();
    }

    /* renamed from: j */
    public final void m6660j() {
        if (this.f17703f == null) {
            return;
        }
        this.f17703f.mo6696c();
    }

    /* renamed from: k */
    public final void m6659k() {
        if (this.f17703f == null) {
            return;
        }
        AbstractC3685zo abstractC3685zo = this.f17703f;
        abstractC3685zo.f17696b.m13729a(true);
        abstractC3685zo.mo6692e();
    }

    /* renamed from: l */
    public final void m6658l() {
        if (this.f17703f == null) {
            return;
        }
        AbstractC3685zo abstractC3685zo = this.f17703f;
        abstractC3685zo.f17696b.m13729a(false);
        abstractC3685zo.mo6692e();
    }

    @TargetApi(14)
    /* renamed from: m */
    public final void m6657m() {
        if (this.f17703f == null) {
            return;
        }
        TextView textView = new TextView(this.f17703f.getContext());
        String valueOf = String.valueOf(this.f17703f.mo6702a());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f17699b.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f17699b.bringChildToFront(textView);
    }

    /* renamed from: n */
    public final void m6656n() {
        this.f17701d.m13740a();
        if (this.f17703f != null) {
            this.f17703f.mo6697b();
        }
        m6653q();
    }

    /* renamed from: o */
    public final void m6655o() {
        if (this.f17703f == null) {
            return;
        }
        long currentPosition = this.f17703f.getCurrentPosition();
        if (this.f17708k == currentPosition || currentPosition <= 0) {
            return;
        }
        m6672b("timeupdate", "time", String.valueOf(((float) currentPosition) / 1000.0f));
        this.f17708k = currentPosition;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f17701d.m13739b();
        } else {
            this.f17701d.m13740a();
            this.f17709l = this.f17708k;
        }
        C3567ve.f17498a.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zs

            /* renamed from: a */
            private final C3687zq f17716a;

            /* renamed from: b */
            private final boolean f17717b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17716a = this;
                this.f17717b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17716a.m6675a(this.f17717b);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.AbstractC3682zl
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f17701d.m13739b();
            z = true;
        } else {
            this.f17701d.m13740a();
            this.f17709l = this.f17708k;
            z = false;
        }
        C3567ve.f17498a.post(new RunnableC3690zt(this, z));
    }

    public final void setVolume(float f) {
        if (this.f17703f == null) {
            return;
        }
        AbstractC3685zo abstractC3685zo = this.f17703f;
        abstractC3685zo.f17696b.m13730a(f);
        abstractC3685zo.mo6692e();
    }
}
