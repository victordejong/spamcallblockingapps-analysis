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
import com.google.android.gms.common.internal.C12045o;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbcb.class */
public final class zzbcb extends FrameLayout implements aak {

    /* renamed from: a */
    final abd f50171a;

    /* renamed from: b */
    zzbbz f50172b;

    /* renamed from: c */
    String f50173c;

    /* renamed from: d */
    String[] f50174d;

    /* renamed from: e */
    private final abb f50175e;

    /* renamed from: f */
    private final FrameLayout f50176f;

    /* renamed from: g */
    private final C12241bi f50177g;

    /* renamed from: h */
    private final long f50178h;

    /* renamed from: i */
    private boolean f50179i;

    /* renamed from: j */
    private boolean f50180j;

    /* renamed from: k */
    private boolean f50181k;

    /* renamed from: l */
    private boolean f50182l;

    /* renamed from: m */
    private long f50183m;

    /* renamed from: n */
    private long f50184n;

    /* renamed from: o */
    private Bitmap f50185o;

    /* renamed from: p */
    private ImageView f50186p;

    /* renamed from: q */
    private boolean f50187q;

    public zzbcb(Context context, abb abbVar, int i, boolean z, C12241bi c12241bi, aay aayVar) {
        super(context);
        this.f50175e = abbVar;
        this.f50177g = c12241bi;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f50176f = frameLayout;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42615E)).booleanValue()) {
            frameLayout.setBackgroundResource(17170444);
        }
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        C12045o.m19162a(abbVar.mo13748e());
        zzbbz mo18946a = abbVar.mo13748e().zzbov.mo18946a(context, abbVar, i, z, c12241bi, aayVar);
        this.f50172b = mo18946a;
        if (mo18946a != null) {
            frameLayout.addView(mo18946a, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42996v)).booleanValue()) {
                m13853l();
            }
        }
        this.f50186p = new ImageView(context);
        this.f50178h = ((Long) ekb.m14831e().m18571a(C12187aq.f43000z)).longValue();
        boolean booleanValue = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42998x)).booleanValue();
        this.f50182l = booleanValue;
        if (c12241bi != null) {
            c12241bi.m17831a("spinner_used", booleanValue ? "1" : "0");
        }
        this.f50171a = new abd(this);
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar != null) {
            zzbbzVar.mo13843a(this);
        }
        if (this.f50172b == null) {
            mo13866a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    /* renamed from: a */
    public static void m13870a(abb abbVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        abbVar.mo13770a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m13869a(abb abbVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        abbVar.mo13770a("onVideoEvent", hashMap);
    }

    /* renamed from: a */
    public static void m13868a(abb abbVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        abbVar.mo13770a("onVideoEvent", hashMap);
    }

    /* renamed from: o */
    private final boolean m13850o() {
        return this.f50186p.getParent() != null;
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: a */
    public final void mo13873a() {
        this.f50171a.m18912b();
        zzj.zzegq.post(new aap(this));
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: a */
    public final void mo13872a(int i, int i2) {
        if (this.f50182l) {
            int max = Math.max(i / ((Integer) ekb.m14831e().m18571a(C12187aq.f42999y)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) ekb.m14831e().m18571a(C12187aq.f42999y)).intValue(), 1);
            Bitmap bitmap = this.f50185o;
            if (bitmap != null && bitmap.getWidth() == max && this.f50185o.getHeight() == max2) {
                return;
            }
            this.f50185o = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.f50187q = false;
        }
    }

    /* renamed from: a */
    public final void m13871a(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.f50176f.setLayoutParams(layoutParams);
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: a */
    public final void mo13866a(String str, String str2) {
        m13865a("error", "what", str, "extra", str2);
    }

    /* renamed from: a */
    public final void m13865a(String str, String... strArr) {
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
        this.f50175e.mo13770a("onVideoEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: b */
    public final void mo13864b() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar != null && this.f50184n == 0) {
            m13865a("canplaythrough", VastIconXmlManager.DURATION, String.valueOf(zzbbzVar.mo13830e() / 1000.0f), "videoWidth", String.valueOf(this.f50172b.mo13826g()), "videoHeight", String.valueOf(this.f50172b.mo13824h()));
        }
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: b */
    public final void mo13863b(String str, String str2) {
        m13865a("exception", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: c */
    public final void mo13862c() {
        if (this.f50175e.mo13751d() != null && !this.f50180j) {
            boolean z = (this.f50175e.mo13751d().getWindow().getAttributes().flags & 128) != 0;
            this.f50181k = z;
            if (!z) {
                this.f50175e.mo13751d().getWindow().addFlags(128);
                this.f50180j = true;
            }
        }
        this.f50179i = true;
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: d */
    public final void mo13861d() {
        m13865a("pause", new String[0]);
        m13851n();
        this.f50179i = false;
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: e */
    public final void mo13860e() {
        m13865a("ended", new String[0]);
        m13851n();
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: f */
    public final void mo13859f() {
        if (this.f50187q && this.f50185o != null && !m13850o()) {
            this.f50186p.setImageBitmap(this.f50185o);
            this.f50186p.invalidate();
            this.f50176f.addView(this.f50186p, new FrameLayout.LayoutParams(-1, -1));
            this.f50176f.bringChildToFront(this.f50186p);
        }
        this.f50171a.m18913a();
        this.f50184n = this.f50183m;
        zzj.zzegq.post(new aao(this));
    }

    public final void finalize() throws Throwable {
        try {
            this.f50171a.m18913a();
            zzbbz zzbbzVar = this.f50172b;
            if (zzbbzVar != null) {
                dbs dbsVar = C13091zd.f50122e;
                zzbbzVar.getClass();
                dbsVar.execute(aan.m18949a(zzbbzVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.aak
    /* renamed from: g */
    public final void mo13858g() {
        if (this.f50179i && m13850o()) {
            this.f50176f.removeView(this.f50186p);
        }
        if (this.f50185o != null) {
            long mo19038b = zzr.zzlc().mo19038b();
            if (this.f50172b.getBitmap(this.f50185o) != null) {
                this.f50187q = true;
            }
            long mo19038b2 = zzr.zzlc().mo19038b() - mo19038b;
            if (zzd.zzyz()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(mo19038b2);
                sb.append("ms");
                zzd.zzed(sb.toString());
            }
            if (mo19038b2 <= this.f50178h) {
                return;
            }
            zzd.zzez("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.f50182l = false;
            this.f50185o = null;
            C12241bi c12241bi = this.f50177g;
            if (c12241bi == null) {
                return;
            }
            c12241bi.m17831a("spinner_jank", Long.toString(mo19038b2));
        }
    }

    /* renamed from: h */
    public final void m13857h() {
        if (this.f50172b == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f50173c)) {
            this.f50172b.mo13841a(this.f50173c, this.f50174d);
        } else {
            m13865a("no_src", new String[0]);
        }
    }

    /* renamed from: i */
    public final void m13856i() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        zzbbzVar.mo13832d();
    }

    /* renamed from: j */
    public final void m13855j() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        zzbbzVar.f50170c.m18917a(true);
        zzbbzVar.mo13819m();
    }

    /* renamed from: k */
    public final void m13854k() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        zzbbzVar.f50170c.m18917a(false);
        zzbbzVar.mo13819m();
    }

    /* renamed from: l */
    public final void m13853l() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        TextView textView = new TextView(zzbbzVar.getContext());
        String valueOf = String.valueOf(this.f50172b.mo13849a());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f50176f.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f50176f.bringChildToFront(textView);
    }

    /* renamed from: m */
    public final void m13852m() {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        long mo13828f = zzbbzVar.mo13828f();
        if (this.f50183m == mo13828f || mo13828f <= 0) {
            return;
        }
        float f = ((float) mo13828f) / 1000.0f;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue()) {
            m13865a("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.f50172b.mo13821k()), "qoeCachedBytes", String.valueOf(this.f50172b.mo13822j()), "qoeLoadedBytes", String.valueOf(this.f50172b.mo13823i()), "droppedFrames", String.valueOf(this.f50172b.mo13820l()), "reportTime", String.valueOf(zzr.zzlc().mo19039a()));
        } else {
            m13865a("timeupdate", "time", String.valueOf(f));
        }
        this.f50183m = mo13828f;
    }

    /* renamed from: n */
    public final void m13851n() {
        if (this.f50175e.mo13751d() != null && this.f50180j && !this.f50181k) {
            this.f50175e.mo13751d().getWindow().clearFlags(128);
            this.f50180j = false;
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f50171a.m18912b();
        } else {
            this.f50171a.m18913a();
            this.f50184n = this.f50183m;
        }
        zzj.zzegq.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.aam

            /* renamed from: a */
            private final zzbcb f39711a;

            /* renamed from: b */
            private final boolean f39712b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39711a = this;
                this.f39712b = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f39711a.m13865a("windowFocusChanged", "hasWindowFocus", String.valueOf(this.f39712b));
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.aak
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f50171a.m18912b();
            z = true;
        } else {
            this.f50171a.m18913a();
            this.f50184n = this.f50183m;
            z = false;
        }
        zzj.zzegq.post(new aar(this, z));
    }

    public final void setVolume(float f) {
        zzbbz zzbbzVar = this.f50172b;
        if (zzbbzVar == null) {
            return;
        }
        abc abcVar = zzbbzVar.f50170c;
        abcVar.f39792a = f;
        abcVar.m18914d();
        zzbbzVar.mo13819m();
    }
}
