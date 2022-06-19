package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
public final class zzap {

    /* renamed from: a */
    public final String f6271a;

    /* renamed from: b */
    public final String f6272b;

    /* renamed from: c */
    public final String f6273c;

    /* renamed from: d */
    public final long f6274d;

    /* renamed from: e */
    public final long f6275e;

    /* renamed from: f */
    public final zzas f6276f;

    public zzap(zzfr zzfrVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzas zzasVar;
        Preconditions.m38901g(str2);
        Preconditions.m38901g(str3);
        this.f6271a = str2;
        this.f6272b = str3;
        this.f6273c = true == TextUtils.isEmpty(str) ? null : str;
        this.f6274d = j;
        this.f6275e = j2;
        if (j2 != 0 && j2 > j) {
            zzfrVar.zzay().i.m38589b("Event created with reverse previous/current timestamps. appId", zzeh.p(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzasVar = new zzas(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzfrVar.zzay().f.m38590a("Param name can't be null");
                    it.remove();
                } else {
                    Object k = zzfrVar.w().k(next, bundle2.get(next));
                    if (k == null) {
                        zzfrVar.zzay().i.m38589b("Param value can't be null", zzfrVar.m.m38593e(next));
                        it.remove();
                    } else {
                        zzfrVar.w().w(bundle2, next, k);
                    }
                }
            }
            zzasVar = new zzas(bundle2);
        }
        this.f6276f = zzasVar;
    }

    public zzap(zzfr zzfrVar, String str, String str2, String str3, long j, long j2, zzas zzasVar) {
        Preconditions.m38901g(str2);
        Preconditions.m38901g(str3);
        Objects.requireNonNull(zzasVar, "null reference");
        this.f6271a = str2;
        this.f6272b = str3;
        this.f6273c = true == TextUtils.isEmpty(str) ? null : str;
        this.f6274d = j;
        this.f6275e = j2;
        if (j2 != 0 && j2 > j) {
            zzfrVar.zzay().i.m38588c("Event created with reverse previous/current timestamps. appId, name", zzeh.p(str2), zzeh.p(str3));
        }
        this.f6276f = zzasVar;
    }

    /* renamed from: a */
    public final zzap m38617a(zzfr zzfrVar, long j) {
        return new zzap(zzfrVar, this.f6273c, this.f6271a, this.f6272b, this.f6274d, j, this.f6276f);
    }

    public final String toString() {
        String str = this.f6271a;
        String str2 = this.f6272b;
        String zzasVar = this.f6276f.toString();
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(zzasVar.length() + length + 33 + String.valueOf(str2).length());
        C22128a.m8666T0(sb, "Event{appId='", str, "', name='", str2);
        sb.append("', params=");
        sb.append(zzasVar);
        sb.append('}');
        return sb.toString();
    }
}
