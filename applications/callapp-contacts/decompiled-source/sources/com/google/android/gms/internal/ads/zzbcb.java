package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbcb.class */
public final class zzbcb extends FrameLayout implements aak {

    /* renamed from: a  reason: collision with root package name */
    final abd f28607a;

    /* renamed from: b  reason: collision with root package name */
    zzbbz f28608b;

    /* renamed from: c  reason: collision with root package name */
    String f28609c;

    /* renamed from: d  reason: collision with root package name */
    String[] f28610d;
    private final abb e;
    private final FrameLayout f;
    private final bi g;
    private final long h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private long m;
    private long n;
    private Bitmap o;
    private ImageView p;
    private boolean q;

    public zzbcb(Context context, abb abbVar, int i, boolean z, bi biVar, aay aayVar) {
        super(context);
        this.e = abbVar;
        this.g = biVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f = frameLayout;
        if (((Boolean) ekb.e().a(aq.E)).booleanValue()) {
            frameLayout.setBackgroundResource(17170444);
        }
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        o.a(abbVar.e());
        zzbbz a2 = abbVar.e().zzbov.a(context, abbVar, i, z, biVar, aayVar);
        this.f28608b = a2;
        if (a2 != null) {
            frameLayout.addView(a2, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) ekb.e().a(aq.v)).booleanValue()) {
                l();
            }
        }
        this.p = new ImageView(context);
        this.h = ((Long) ekb.e().a(aq.z)).longValue();
        boolean booleanValue = ((Boolean) ekb.e().a(aq.x)).booleanValue();
        this.l = booleanValue;
        if (biVar != null) {
            biVar.a("spinner_used", booleanValue ? "1" : "0");
        }
        this.f28607a = new abd(this);
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            zzbbzVar.a(this);
        }
        if (this.f28608b == null) {
            a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void a(abb abbVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        abbVar.a("onVideoEvent", hashMap);
    }

    public static void a(abb abbVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        abbVar.a("onVideoEvent", hashMap);
    }

    public static void a(abb abbVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        abbVar.a("onVideoEvent", hashMap);
    }

    private final boolean o() {
        return this.p.getParent() != null;
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void a() {
        this.f28607a.b();
        zzj.zzegq.post(new aap(this));
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void a(int i, int i2) {
        if (this.l) {
            int max = Math.max(i / ((Integer) ekb.e().a(aq.y)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) ekb.e().a(aq.y)).intValue(), 1);
            Bitmap bitmap = this.o;
            if (bitmap == null || bitmap.getWidth() != max || this.o.getHeight() != max2) {
                this.o = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
                this.q = false;
            }
        }
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.f.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void a(String str, String str2) {
        a("error", "what", str, "extra", str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.e.a("onVideoEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void b() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null && this.n == 0) {
            a("canplaythrough", VastIconXmlManager.DURATION, String.valueOf(zzbbzVar.e() / 1000.0f), "videoWidth", String.valueOf(this.f28608b.g()), "videoHeight", String.valueOf(this.f28608b.h()));
        }
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void b(String str, String str2) {
        a("exception", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void c() {
        if (this.e.d() != null && !this.j) {
            boolean z = (this.e.d().getWindow().getAttributes().flags & 128) != 0;
            this.k = z;
            if (!z) {
                this.e.d().getWindow().addFlags(128);
                this.j = true;
            }
        }
        this.i = true;
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void d() {
        a("pause", new String[0]);
        n();
        this.i = false;
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void e() {
        a("ended", new String[0]);
        n();
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void f() {
        if (this.q && this.o != null && !o()) {
            this.p.setImageBitmap(this.o);
            this.p.invalidate();
            this.f.addView(this.p, new FrameLayout.LayoutParams(-1, -1));
            this.f.bringChildToFront(this.p);
        }
        this.f28607a.a();
        this.n = this.m;
        zzj.zzegq.post(new aao(this));
    }

    public final void finalize() throws Throwable {
        try {
            this.f28607a.a();
            zzbbz zzbbzVar = this.f28608b;
            if (zzbbzVar != null) {
                dbs dbsVar = zd.e;
                zzbbzVar.getClass();
                dbsVar.execute(aan.a(zzbbzVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.aak
    public final void g() {
        if (this.i && o()) {
            this.f.removeView(this.p);
        }
        if (this.o != null) {
            long b2 = zzr.zzlc().b();
            if (this.f28608b.getBitmap(this.o) != null) {
                this.q = true;
            }
            long b3 = zzr.zzlc().b() - b2;
            if (zzd.zzyz()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(b3);
                sb.append("ms");
                zzd.zzed(sb.toString());
            }
            if (b3 > this.h) {
                zzd.zzez("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.l = false;
                this.o = null;
                bi biVar = this.g;
                if (biVar != null) {
                    biVar.a("spinner_jank", Long.toString(b3));
                }
            }
        }
    }

    public final void h() {
        if (this.f28608b != null) {
            if (!TextUtils.isEmpty(this.f28609c)) {
                this.f28608b.a(this.f28609c, this.f28610d);
            } else {
                a("no_src", new String[0]);
            }
        }
    }

    public final void i() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            zzbbzVar.d();
        }
    }

    public final void j() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            zzbbzVar.f28606c.a(true);
            zzbbzVar.m();
        }
    }

    public final void k() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            zzbbzVar.f28606c.a(false);
            zzbbzVar.m();
        }
    }

    public final void l() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            TextView textView = new TextView(zzbbzVar.getContext());
            String valueOf = String.valueOf(this.f28608b.a());
            textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-256);
            this.f.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            this.f.bringChildToFront(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            long f = zzbbzVar.f();
            if (this.m != f && f > 0) {
                float f2 = ((float) f) / 1000.0f;
                if (((Boolean) ekb.e().a(aq.bl)).booleanValue()) {
                    a("timeupdate", "time", String.valueOf(f2), "totalBytes", String.valueOf(this.f28608b.k()), "qoeCachedBytes", String.valueOf(this.f28608b.j()), "qoeLoadedBytes", String.valueOf(this.f28608b.i()), "droppedFrames", String.valueOf(this.f28608b.l()), "reportTime", String.valueOf(zzr.zzlc().a()));
                } else {
                    a("timeupdate", "time", String.valueOf(f2));
                }
                this.m = f;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        if (this.e.d() != null && this.j && !this.k) {
            this.e.d().getWindow().clearFlags(128);
            this.j = false;
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f28607a.b();
        } else {
            this.f28607a.a();
            this.n = this.m;
        }
        zzj.zzegq.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.aam

            /* renamed from: a  reason: collision with root package name */
            private final zzbcb f23008a;

            /* renamed from: b  reason: collision with root package name */
            private final boolean f23009b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23008a = this;
                this.f23009b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23008a.a("windowFocusChanged", "hasWindowFocus", String.valueOf(this.f23009b));
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.aak
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f28607a.b();
            z = true;
        } else {
            this.f28607a.a();
            this.n = this.m;
            z = false;
        }
        zzj.zzegq.post(new aar(this, z));
    }

    public final void setVolume(float f) {
        zzbbz zzbbzVar = this.f28608b;
        if (zzbbzVar != null) {
            abc abcVar = zzbbzVar.f28606c;
            abcVar.f23040a = f;
            abcVar.d();
            zzbbzVar.m();
        }
    }
}
