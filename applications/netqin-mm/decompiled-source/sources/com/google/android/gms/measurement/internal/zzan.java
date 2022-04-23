package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzan.class */
public final class zzan {

    /* renamed from: a */
    public final String f29805a;

    /* renamed from: b */
    public final String f29806b;

    /* renamed from: c */
    public final String f29807c;

    /* renamed from: d */
    public final long f29808d;

    /* renamed from: e */
    public final long f29809e;

    /* renamed from: f */
    public final zzap f29810f;

    public zzan(zzfu zzfuVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzap zzapVar;
        Preconditions.m17281b(str2);
        Preconditions.m17281b(str3);
        this.f29805a = str2;
        this.f29806b = str3;
        this.f29807c = TextUtils.isEmpty(str) ? null : str;
        this.f29808d = j;
        this.f29809e = j2;
        if (j2 != 0 && j2 > j) {
            zzfuVar.mo8789p().m9149t().m9142a("Event created with reverse previous/current timestamps. appId", zzeq.m9157a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzapVar = new zzap(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzfuVar.mo8789p().m9152q().m9143a("Param name can't be null");
                    it.remove();
                } else {
                    Object a = zzfuVar.m9044s().m8712a(next, bundle2.get(next));
                    if (a == null) {
                        zzfuVar.mo8789p().m9149t().m9142a("Param value can't be null", zzfuVar.m9043t().m9168b(next));
                        it.remove();
                    } else {
                        zzfuVar.m9044s().m8731a(bundle2, next, a);
                    }
                }
            }
            zzapVar = new zzap(bundle2);
        }
        this.f29810f = zzapVar;
    }

    public zzan(zzfu zzfuVar, String str, String str2, String str3, long j, long j2, zzap zzapVar) {
        Preconditions.m17281b(str2);
        Preconditions.m17281b(str3);
        Preconditions.m17288a(zzapVar);
        this.f29805a = str2;
        this.f29806b = str3;
        this.f29807c = TextUtils.isEmpty(str) ? null : str;
        this.f29808d = j;
        this.f29809e = j2;
        if (j2 != 0 && j2 > j) {
            zzfuVar.mo8789p().m9149t().m9141a("Event created with reverse previous/current timestamps. appId, name", zzeq.m9157a(str2), zzeq.m9157a(str3));
        }
        this.f29810f = zzapVar;
    }

    /* renamed from: a */
    public final zzan m9295a(zzfu zzfuVar, long j) {
        return new zzan(zzfuVar, this.f29807c, this.f29805a, this.f29806b, this.f29808d, j, this.f29810f);
    }

    public final String toString() {
        String str = this.f29805a;
        String str2 = this.f29806b;
        String valueOf = String.valueOf(this.f29810f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }
}
