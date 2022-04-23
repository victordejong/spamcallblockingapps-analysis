package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bkv.class */
public final class bkv implements art, ash, avw, eir {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24607a;

    /* renamed from: b  reason: collision with root package name */
    private final cpz f24608b;

    /* renamed from: c  reason: collision with root package name */
    private final bli f24609c;

    /* renamed from: d  reason: collision with root package name */
    private final cpk f24610d;
    private final cov e;
    private final brs f;
    private Boolean g;
    private final boolean h = ((Boolean) ekb.e().a(aq.en)).booleanValue();

    public bkv(Context context, cpz cpzVar, bli bliVar, cpk cpkVar, cov covVar, brs brsVar) {
        this.f24607a = context;
        this.f24608b = cpzVar;
        this.f24609c = bliVar;
        this.f24610d = cpkVar;
        this.e = covVar;
        this.f = brsVar;
    }

    private final blh a(String str) {
        blh a2 = this.f24609c.a().a(this.f24610d.f26222b.f26217b).a(this.e);
        a2.a("action", str);
        if (!this.e.s.isEmpty()) {
            a2.a("ancn", this.e.s.get(0));
        }
        if (this.e.ad) {
            zzr.zzkv();
            a2.a("device_connectivity", zzj.zzbd(this.f24607a) ? "online" : "offline");
            a2.a("event_timestamp", String.valueOf(zzr.zzlc().a()));
            a2.a("offline_ad", "1");
        }
        return a2;
    }

    private final void a(blh blhVar) {
        if (this.e.ad) {
            this.f.a(new brz(zzr.zzlc().a(), this.f24610d.f26222b.f26217b.f26197b, blhVar.b(), brp.f24957b));
            return;
        }
        blhVar.a();
    }

    private static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().a(e, "CsiActionsListener.isPatternMatched");
            return false;
        }
    }

    private final boolean c() {
        if (this.g == null) {
            synchronized (this) {
                if (this.g == null) {
                    af<String> afVar = aq.aZ;
                    zzr.zzkv();
                    this.g = Boolean.valueOf(a((String) ekb.e().a(afVar), zzj.zzbb(this.f24607a)));
                }
            }
        }
        return this.g.booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void H_() {
        if (c()) {
            a("adapter_impression").a();
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a() {
        if (this.h) {
            blh a2 = a("ifts");
            a2.a("reason", "blocked");
            a2.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(zzcbq zzcbqVar) {
        if (this.h) {
            blh a2 = a("ifts");
            a2.a("reason", "exception");
            if (!TextUtils.isEmpty(zzcbqVar.getMessage())) {
                a2.a("msg", zzcbqVar.getMessage());
            }
            a2.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(zzvh zzvhVar) {
        if (this.h) {
            blh a2 = a("ifts");
            a2.a("reason", "adapter");
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
                a2.a("arec", String.valueOf(i2));
            }
            String a3 = this.f24608b.a(str2);
            if (a3 != null) {
                a2.a("areec", a3);
            }
            a2.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        if (c() || this.e.ad) {
            a(a("impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.avw
    public final void i() {
        if (c()) {
            a("adapter_shown").a();
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public final void onAdClicked() {
        if (this.e.ad) {
            a(a("click"));
        }
    }
}
