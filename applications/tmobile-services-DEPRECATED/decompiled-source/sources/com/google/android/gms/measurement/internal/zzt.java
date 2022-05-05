package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhz;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzt.class */
public final class zzt {

    /* renamed from: a */
    private zzcd.zzc f9764a;

    /* renamed from: b */
    private Long f9765b;

    /* renamed from: c */
    private long f9766c;

    /* renamed from: d */
    private final /* synthetic */ zzo f9767d;

    private zzt(zzo zzoVar) {
        this.f9767d = zzoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzt(zzo zzoVar, zzr zzrVar) {
        this(zzoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzcd.zzc m10915a(String str, zzcd.zzc zzcVar) {
        List<zzcd.zze> list;
        String str2;
        Object obj;
        String U = zzcVar.m13217U();
        List<zzcd.zze> C = zzcVar.m13234C();
        this.f9767d.m11115m();
        Long l = (Long) zzks.m11015T(zzcVar, "_eid");
        boolean z = l != null;
        if (z && U.equals("_ep")) {
            this.f9767d.m11115m();
            str2 = (String) zzks.m11015T(zzcVar, "_en");
            if (TextUtils.isEmpty(str2)) {
                this.f9767d.mo11081c().m11559E().m11539b("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.f9764a == null || this.f9765b == null || l.longValue() != this.f9765b.longValue()) {
                Pair<zzcd.zzc, Long> z2 = this.f9767d.m11114n().m11739z(str, l);
                if (z2 == null || (obj = z2.first) == null) {
                    this.f9767d.mo11081c().m11559E().m11538c("Extra parameter without existing main event. eventName, eventId", str2, l);
                    return null;
                }
                this.f9764a = (zzcd.zzc) obj;
                this.f9766c = ((Long) z2.second).longValue();
                this.f9767d.m11115m();
                this.f9765b = (Long) zzks.m11015T(this.f9764a, "_eid");
            }
            long j = this.f9766c - 1;
            this.f9766c = j;
            if (j <= 0) {
                zzac n = this.f9767d.m11114n();
                n.mo11316e();
                n.mo11081c().m11552L().m11539b("Clearing complex main event info. appId", str);
                try {
                    n.m11749u().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    n.mo11081c().m11560D().m11539b("Error clearing complex main event", e);
                }
            } else {
                this.f9767d.m11114n().m11773X(str, l, this.f9766c, this.f9764a);
            }
            list = new ArrayList<>();
            for (zzcd.zze zzeVar : this.f9764a.m13234C()) {
                this.f9767d.m11115m();
                if (zzks.m11007x(zzcVar, zzeVar.m13178N()) == null) {
                    list.add(zzeVar);
                }
            }
            if (!list.isEmpty()) {
                list.addAll(C);
            } else {
                this.f9767d.mo11081c().m11559E().m11539b("No unique parameters in main event. eventName", str2);
                list = C;
            }
        } else {
            str2 = U;
            list = C;
            if (z) {
                this.f9765b = l;
                this.f9764a = zzcVar;
                this.f9767d.m11115m();
                Object obj2 = 0L;
                Object T = zzks.m11015T(zzcVar, "_epc");
                if (T != null) {
                    obj2 = T;
                }
                long longValue = ((Long) obj2).longValue();
                this.f9766c = longValue;
                if (longValue <= 0) {
                    this.f9767d.mo11081c().m11559E().m11539b("Complex event with zero extra param count. eventName", U);
                    str2 = U;
                    list = C;
                } else {
                    this.f9767d.m11114n().m11773X(str, l, this.f9766c, zzcVar);
                    list = C;
                    str2 = U;
                }
            }
        }
        zzcd.zzc.zza w = zzcVar.m12423w();
        w.m13203E(str2);
        w.m13197L();
        w.m13204D(list);
        return (zzcd.zzc) ((zzhz) w.mo12321k());
    }
}
