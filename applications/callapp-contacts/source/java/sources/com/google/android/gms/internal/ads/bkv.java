package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkv.class */
public final class bkv implements art, ash, avw, eir {

    /* renamed from: a */
    private final Context f44161a;

    /* renamed from: b */
    private final cpz f44162b;

    /* renamed from: c */
    private final bli f44163c;

    /* renamed from: d */
    private final cpk f44164d;

    /* renamed from: e */
    private final cov f44165e;

    /* renamed from: f */
    private final brs f44166f;

    /* renamed from: g */
    private Boolean f44167g;

    /* renamed from: h */
    private final boolean f44168h = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42889en)).booleanValue();

    public bkv(Context context, cpz cpzVar, bli bliVar, cpk cpkVar, cov covVar, brs brsVar) {
        this.f44161a = context;
        this.f44162b = cpzVar;
        this.f44163c = bliVar;
        this.f44164d = cpkVar;
        this.f44165e = covVar;
        this.f44166f = brsVar;
    }

    /* renamed from: a */
    private final blh m17781a(String str) {
        blh m17769a = this.f44163c.m17765a().m17768a(this.f44164d.f46319b.f46314b).m17769a(this.f44165e);
        m17769a.m17767a("action", str);
        if (!this.f44165e.f46272s.isEmpty()) {
            m17769a.m17767a("ancn", this.f44165e.f46272s.get(0));
        }
        if (this.f44165e.f46251ad) {
            zzr.zzkv();
            m17769a.m17767a("device_connectivity", zzj.zzbd(this.f44161a) ? "online" : "offline");
            m17769a.m17767a("event_timestamp", String.valueOf(zzr.zzlc().mo19039a()));
            m17769a.m17767a("offline_ad", "1");
        }
        return m17769a;
    }

    /* renamed from: a */
    private final void m17782a(blh blhVar) {
        if (!this.f44165e.f46251ad) {
            blhVar.m17771a();
            return;
        }
        this.f44166f.m17630a(new brz(zzr.zzlc().mo19039a(), this.f44164d.f46319b.f46314b.f46290b, blhVar.m17766b(), brp.f44573b));
    }

    /* renamed from: a */
    private static boolean m17780a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().m13979a(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    /* renamed from: c */
    private final boolean m17779c() {
        if (this.f44167g == null) {
            synchronized (this) {
                if (this.f44167g == null) {
                    AbstractC12172af<String> abstractC12172af = C12187aq.f42663aZ;
                    zzr.zzkv();
                    this.f44167g = Boolean.valueOf(m17780a((String) ekb.m14831e().m18571a(abstractC12172af), zzj.zzbb(this.f44161a)));
                }
            }
        }
        return this.f44167g.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: H_ */
    public final void mo17686H_() {
        if (!m17779c()) {
            return;
        }
        m17781a("adapter_impression").m17771a();
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17685a() {
        if (!this.f44168h) {
            return;
        }
        blh m17781a = m17781a("ifts");
        m17781a.m17767a("reason", "blocked");
        m17781a.m17771a();
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17683a(zzcbq zzcbqVar) {
        if (!this.f44168h) {
            return;
        }
        blh m17781a = m17781a("ifts");
        m17781a.m17767a("reason", "exception");
        if (!TextUtils.isEmpty(zzcbqVar.getMessage())) {
            m17781a.m17767a("msg", zzcbqVar.getMessage());
        }
        m17781a.m17771a();
    }

    @Override // com.google.android.gms.internal.ads.art
    /* renamed from: a */
    public final void mo17682a(zzvh zzvhVar) {
        if (!this.f44168h) {
            return;
        }
        blh m17781a = m17781a("ifts");
        m17781a.m17767a("reason", "adapter");
        int i = zzvhVar.errorCode;
        String str = zzvhVar.zzchs;
        int i2 = i;
        String str2 = str;
        if (zzvhVar.zzcht.equals(MobileAds.ERROR_DOMAIN)) {
            i2 = i;
            str2 = str;
            if (zzvhVar.zzchu != null) {
                i2 = i;
                str2 = str;
                if (!zzvhVar.zzchu.zzcht.equals(MobileAds.ERROR_DOMAIN)) {
                    i2 = zzvhVar.zzchu.errorCode;
                    str2 = zzvhVar.zzchu.zzchs;
                }
            }
        }
        if (i2 >= 0) {
            m17781a.m17767a("arec", String.valueOf(i2));
        }
        String m17344a = this.f44162b.m17344a(str2);
        if (m17344a != null) {
            m17781a.m17767a("areec", m17344a);
        }
        m17781a.m17771a();
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        if (m17779c() || this.f44165e.f46251ad) {
            m17782a(m17781a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.avw
    /* renamed from: i */
    public final void mo17678i() {
        if (!m17779c()) {
            return;
        }
        m17781a("adapter_shown").m17771a();
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if (!this.f44165e.f46251ad) {
            return;
        }
        m17782a(m17781a("click"));
    }
}
