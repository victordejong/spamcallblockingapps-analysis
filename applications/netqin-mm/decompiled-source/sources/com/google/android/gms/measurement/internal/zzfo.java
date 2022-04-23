package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzca;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzlo;
import java.util.ArrayList;
import java.util.Map;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4647b;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4657c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfo.class */
public final class zzfo extends AbstractC4750l7 implements AbstractC4647b {
    @VisibleForTesting

    /* renamed from: j */
    public static int f29982j = 65535;
    @VisibleForTesting

    /* renamed from: k */
    public static int f29983k = 2;

    /* renamed from: d */
    public final Map<String, Map<String, String>> f29984d = new C0780a();

    /* renamed from: e */
    public final Map<String, Map<String, Boolean>> f29985e = new C0780a();

    /* renamed from: f */
    public final Map<String, Map<String, Boolean>> f29986f = new C0780a();

    /* renamed from: g */
    public final Map<String, zzca.zzb> f29987g = new C0780a();

    /* renamed from: i */
    public final Map<String, String> f29989i = new C0780a();

    /* renamed from: h */
    public final Map<String, Map<String, Integer>> f29988h = new C0780a();

    public zzfo(zzkl zzklVar) {
        super(zzklVar);
    }

    /* renamed from: a */
    public static Map<String, String> m9114a(zzca.zzb zzbVar) {
        C0780a aVar = new C0780a();
        if (zzbVar != null) {
            for (zzca.zzc zzcVar : zzbVar.m10327s()) {
                aVar.put(zzcVar.zza(), zzcVar.m10315p());
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public final zzca.zzb m9113a(String str) {
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        m9098i(str);
        return this.f29987g.get(str);
    }

    /* renamed from: a */
    public final zzca.zzb m9110a(String str, byte[] bArr) {
        if (bArr == null) {
            return zzca.zzb.m10321y();
        }
        try {
            zzca.zzb zzbVar = (zzca.zzb) ((zzhy) ((zzca.zzb.zza) zzkr.m8766a(zzca.zzb.m10322x(), bArr)).mo9619b());
            zzes y = mo8789p().m9144y();
            String str2 = null;
            Long valueOf = zzbVar.zza() ? Long.valueOf(zzbVar.m10330p()) : null;
            if (zzbVar.m10329q()) {
                str2 = zzbVar.m10328r();
            }
            y.m9141a("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzbVar;
        } catch (zzij e) {
            mo8789p().m9149t().m9141a("Unable to merge remote config. appId", zzeq.m9157a(str), e);
            return zzca.zzb.m10321y();
        } catch (RuntimeException e2) {
            mo8789p().m9149t().m9141a("Unable to merge remote config. appId", zzeq.m9157a(str), e2);
            return zzca.zzb.m10321y();
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4647b
    /* renamed from: a */
    public final String mo9111a(String str, String str2) {
        mo9085c();
        m9098i(str);
        Map<String, String> map = this.f29984d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    /* renamed from: a */
    public final void m9112a(String str, zzca.zzb.zza zzaVar) {
        C0780a aVar = new C0780a();
        C0780a aVar2 = new C0780a();
        C0780a aVar3 = new C0780a();
        if (zzaVar != null) {
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzca.zza.C10516zza l = zzaVar.m10319a(i).m9662l();
                if (TextUtils.isEmpty(l.zza())) {
                    mo8789p().m9149t().m9143a("EventConfig contained null event name");
                } else {
                    String zza = l.zza();
                    String b = zzgv.m9009b(l.zza());
                    if (!TextUtils.isEmpty(b)) {
                        l.mo9794a(b);
                        zzaVar.m10318a(i, l);
                    }
                    if (!zzlo.m9595a() || !m24897h().m9354a(zzas.f29843N0)) {
                        aVar.put(l.zza(), Boolean.valueOf(l.m10338o()));
                    } else {
                        aVar.put(zza, Boolean.valueOf(l.m10338o()));
                    }
                    aVar2.put(l.zza(), Boolean.valueOf(l.m10337p()));
                    if (l.m10336q()) {
                        if (l.m10335r() < f29983k || l.m10335r() > f29982j) {
                            mo8789p().m9149t().m9141a("Invalid sampling rate. Event name, sample rate", l.zza(), Integer.valueOf(l.m10335r()));
                        } else {
                            aVar3.put(l.zza(), Integer.valueOf(l.m10335r()));
                        }
                    }
                }
            }
        }
        this.f29985e.put(str, aVar);
        this.f29986f.put(str, aVar2);
        this.f29988h.put(str, aVar3);
    }

    /* renamed from: a */
    public final boolean m9109a(String str, byte[] bArr, String str2) {
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        zzca.zzb.zza l = m9110a(str, bArr).m9662l();
        if (l == null) {
            return false;
        }
        m9112a(str, l);
        this.f29987g.put(str, (zzca.zzb) ((zzhy) l.mo9619b()));
        this.f29989i.put(str, str2);
        this.f29984d.put(str, m9114a((zzca.zzb) ((zzhy) l.mo9619b())));
        m24895k().m25069a(str, new ArrayList(l.m10317o()));
        try {
            l.m10316p();
            bArr = ((zzca.zzb) ((zzhy) l.mo9619b())).m9796a();
        } catch (RuntimeException e) {
            mo8789p().m9149t().m9141a("Unable to serialize reduced-size config. Storing full config instead. appId", zzeq.m9157a(str), e);
        }
        C4657c k = m24895k();
        Preconditions.m17281b(str);
        k.mo9085c();
        k.m24903n();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (k.m25044s().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                k.mo8789p().m9152q().m9142a("Failed to update remote config (got 0). appId", zzeq.m9157a(str));
            }
        } catch (SQLiteException e2) {
            k.mo8789p().m9152q().m9141a("Error storing remote config. appId", zzeq.m9157a(str), e2);
        }
        this.f29987g.put(str, (zzca.zzb) ((zzhy) l.mo9619b()));
        return true;
    }

    /* renamed from: b */
    public final String m9108b(String str) {
        mo9085c();
        return this.f29989i.get(str);
    }

    /* renamed from: b */
    public final boolean m9107b(String str, String str2) {
        Boolean bool;
        mo9085c();
        m9098i(str);
        if (m9100g(str) && zzkv.m8680h(str2)) {
            return true;
        }
        if (m9099h(str) && zzkv.m8681g(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f29985e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: c */
    public final void m9106c(String str) {
        mo9085c();
        this.f29989i.put(str, null);
    }

    /* renamed from: c */
    public final boolean m9105c(String str, String str2) {
        Boolean bool;
        mo9085c();
        m9098i(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f29986f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: d */
    public final int m9103d(String str, String str2) {
        Integer num;
        mo9085c();
        m9098i(str);
        Map<String, Integer> map = this.f29988h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* renamed from: d */
    public final void m9104d(String str) {
        mo9085c();
        this.f29987g.remove(str);
    }

    /* renamed from: e */
    public final boolean m9102e(String str) {
        mo9085c();
        zzca.zzb a = m9113a(str);
        if (a == null) {
            return false;
        }
        return a.m10324v();
    }

    /* renamed from: f */
    public final long m9101f(String str) {
        String a = mo9111a(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(a)) {
            return 0L;
        }
        try {
            return Long.parseLong(a);
        } catch (NumberFormatException e) {
            mo8789p().m9149t().m9141a("Unable to parse timezone offset. appId", zzeq.m9157a(str), e);
            return 0L;
        }
    }

    /* renamed from: g */
    public final boolean m9100g(String str) {
        return "1".equals(mo9111a(str, "measurement.upload.blacklist_internal"));
    }

    /* renamed from: h */
    public final boolean m9099h(String str) {
        return "1".equals(mo9111a(str, "measurement.upload.blacklist_public"));
    }

    /* renamed from: i */
    public final void m9098i(String str) {
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        if (this.f29987g.get(str) == null) {
            byte[] d = m24895k().m25057d(str);
            if (d == null) {
                this.f29984d.put(str, null);
                this.f29985e.put(str, null);
                this.f29986f.put(str, null);
                this.f29987g.put(str, null);
                this.f29989i.put(str, null);
                this.f29988h.put(str, null);
                return;
            }
            zzca.zzb.zza l = m9110a(str, d).m9662l();
            m9112a(str, l);
            this.f29984d.put(str, m9114a((zzca.zzb) ((zzhy) l.mo9619b())));
            this.f29987g.put(str, (zzca.zzb) ((zzhy) l.mo9619b()));
            this.f29989i.put(str, null);
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        return false;
    }
}
