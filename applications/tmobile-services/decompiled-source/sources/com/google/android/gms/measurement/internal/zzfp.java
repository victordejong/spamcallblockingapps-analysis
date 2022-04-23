package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzca;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zzih;
import com.google.android.gms.internal.measurement.zzlq;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfp.class */
public final class zzfp extends zzkj implements zzaa {
    @VisibleForTesting

    /* renamed from: j */
    private static int f9249j = 65535;
    @VisibleForTesting

    /* renamed from: k */
    private static int f9250k = 2;

    /* renamed from: d */
    private final Map<String, Map<String, String>> f9251d = new ArrayMap();

    /* renamed from: e */
    private final Map<String, Map<String, Boolean>> f9252e = new ArrayMap();

    /* renamed from: f */
    private final Map<String, Map<String, Boolean>> f9253f = new ArrayMap();

    /* renamed from: g */
    private final Map<String, zzca.zzb> f9254g = new ArrayMap();

    /* renamed from: i */
    private final Map<String, String> f9256i = new ArrayMap();

    /* renamed from: h */
    private final Map<String, Map<String, Integer>> f9255h = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfp(zzki zzkiVar) {
        super(zzkiVar);
    }

    @WorkerThread
    /* renamed from: I */
    private final void m11398I(String str) {
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        if (this.f9254g.get(str) == null) {
            byte[] p0 = m11114n().m11755p0(str);
            if (p0 == null) {
                this.f9251d.put(str, null);
                this.f9252e.put(str, null);
                this.f9253f.put(str, null);
                this.f9254g.put(str, null);
                this.f9256i.put(str, null);
                this.f9255h.put(str, null);
                return;
            }
            zzca.zzb.zza w = m11396u(str, p0).m12423w();
            m11394w(str, w);
            this.f9251d.put(str, m11395v((zzca.zzb) ((zzhz) w.mo12321k())));
            this.f9254g.put(str, (zzca.zzb) ((zzhz) w.mo12321k()));
            this.f9256i.put(str, null);
        }
    }

    @WorkerThread
    /* renamed from: u */
    private final zzca.zzb m11396u(String str, byte[] bArr) {
        if (bArr == null) {
            return zzca.zzb.m13279P();
        }
        try {
            zzca.zzb zzbVar = (zzca.zzb) ((zzhz) ((zzca.zzb.zza) zzks.m11006y(zzca.zzb.m13280O(), bArr)).mo12321k());
            zzet L = mo11081c().m11552L();
            String str2 = null;
            Long valueOf = zzbVar.m13288F() ? Long.valueOf(zzbVar.m13287G()) : null;
            if (zzbVar.m13286H()) {
                str2 = zzbVar.m13285J();
            }
            L.m11538c("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzbVar;
        } catch (zzih e) {
            mo11081c().m11557G().m11538c("Unable to merge remote config. appId", zzer.m11546v(str), e);
            return zzca.zzb.m13279P();
        } catch (RuntimeException e2) {
            mo11081c().m11557G().m11538c("Unable to merge remote config. appId", zzer.m11546v(str), e2);
            return zzca.zzb.m13279P();
        }
    }

    /* renamed from: v */
    private static Map<String, String> m11395v(zzca.zzb zzbVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzbVar != null) {
            for (zzca.zzc zzcVar : zzbVar.m13284K()) {
                arrayMap.put(zzcVar.m13271A(), zzcVar.m13270C());
            }
        }
        return arrayMap;
    }

    /* renamed from: w */
    private final void m11394w(String str, zzca.zzb.zza zzaVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzaVar != null) {
            for (int i = 0; i < zzaVar.m13274x(); i++) {
                zzca.zza.C2484zza w = zzaVar.m13273y(i).m12423w();
                if (TextUtils.isEmpty(w.m13294y())) {
                    mo11081c().m11557G().m11540a("EventConfig contained null event name");
                } else {
                    String y = w.m13294y();
                    String b = zzgs.m11305b(w.m13294y());
                    if (!TextUtils.isEmpty(b)) {
                        w.m13295x(b);
                        zzaVar.m13272z(i, w);
                    }
                    if (!zzlq.m11973a() || !m11311l().m10880r(zzat.f8914N0)) {
                        arrayMap.put(w.m13294y(), Boolean.valueOf(w.m13293z()));
                    } else {
                        arrayMap.put(y, Boolean.valueOf(w.m13293z()));
                    }
                    arrayMap2.put(w.m13294y(), Boolean.valueOf(w.m13298A()));
                    if (w.m13297C()) {
                        if (w.m13296D() < f9250k || w.m13296D() > f9249j) {
                            mo11081c().m11557G().m11538c("Invalid sampling rate. Event name, sample rate", w.m13294y(), Integer.valueOf(w.m13296D()));
                        } else {
                            arrayMap3.put(w.m13294y(), Integer.valueOf(w.m13296D()));
                        }
                    }
                }
            }
        }
        this.f9252e.put(str, arrayMap);
        this.f9253f.put(str, arrayMap2);
        this.f9255h.put(str, arrayMap3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: A */
    public final void m11406A(String str) {
        mo11316e();
        this.f9256i.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: B */
    public final boolean m11405B(String str, String str2) {
        Boolean bool;
        mo11316e();
        m11398I(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2) || FirebaseAnalytics.Event.PURCHASE.equals(str2) || FirebaseAnalytics.Event.REFUND.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f9253f.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: C */
    public final int m11404C(String str, String str2) {
        Integer num;
        mo11316e();
        m11398I(str);
        Map<String, Integer> map = this.f9255h.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: D */
    public final void m11403D(String str) {
        mo11316e();
        this.f9254g.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: E */
    public final boolean m11402E(String str) {
        mo11316e();
        zzca.zzb t = m11397t(str);
        if (t == null) {
            return false;
        }
        return t.m13281N();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: F */
    public final long m11401F(String str) {
        String zza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(zza)) {
            return 0L;
        }
        try {
            return Long.parseLong(zza);
        } catch (NumberFormatException e) {
            mo11081c().m11557G().m11538c("Unable to parse timezone offset. appId", zzer.m11546v(str), e);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public final boolean m11400G(String str) {
        return TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public final boolean m11399H(String str) {
        return TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: t */
    public final zzca.zzb m11397t(String str) {
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        m11398I(str);
        return this.f9254g.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: x */
    public final boolean m11393x(String str, byte[] bArr, String str2) {
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        zzca.zzb.zza w = m11396u(str, bArr).m12423w();
        if (w == null) {
            return false;
        }
        m11394w(str, w);
        this.f9254g.put(str, (zzca.zzb) ((zzhz) w.mo12321k()));
        this.f9256i.put(str, str2);
        this.f9251d.put(str, m11395v((zzca.zzb) ((zzhz) w.mo12321k())));
        m11114n().m11782O(str, new ArrayList(w.m13276A()));
        try {
            w.m13275C();
            bArr = ((zzca.zzb) ((zzhz) w.mo12321k())).m12660g();
        } catch (RuntimeException e) {
            mo11081c().m11557G().m11538c("Unable to serialize reduced-size config. Storing full config instead. appId", zzer.m11546v(str), e);
        }
        zzac n = m11114n();
        Preconditions.m14527g(str);
        n.mo11316e();
        n.m11038q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (n.m11749u().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                n.mo11081c().m11560D().m11539b("Failed to update remote config (got 0). appId", zzer.m11546v(str));
            }
        } catch (SQLiteException e2) {
            n.mo11081c().m11560D().m11538c("Error storing remote config. appId", zzer.m11546v(str), e2);
        }
        this.f9254g.put(str, (zzca.zzb) ((zzhz) w.mo12321k()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    /* renamed from: y */
    public final String m11392y(String str) {
        mo11316e();
        return this.f9256i.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: z */
    public final boolean m11391z(String str, String str2) {
        Boolean bool;
        mo11316e();
        m11398I(str);
        if (m11400G(str) && zzkw.m11002A0(str2)) {
            return true;
        }
        if (m11399H(str) && zzkw.m10963c0(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.f9252e.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzaa
    @WorkerThread
    public final String zza(String str, String str2) {
        mo11316e();
        m11398I(str);
        Map<String, String> map = this.f9251d.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }
}
