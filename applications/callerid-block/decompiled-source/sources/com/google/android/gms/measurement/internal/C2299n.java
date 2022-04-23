package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C1581h;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n.class */
public final class C2299n {

    /* renamed from: a */
    final String f10301a;

    /* renamed from: b */
    final String f10302b;

    /* renamed from: c */
    final String f10303c;

    /* renamed from: d */
    final long f10304d;

    /* renamed from: e */
    final long f10305e;

    /* renamed from: f */
    final zzaq f10306f;

    C2299n(s4 s4Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        C1581h.m8351d(str2);
        C1581h.m8351d(str3);
        this.f10301a = str2;
        this.f10302b = str3;
        this.f10303c = true == TextUtils.isEmpty(str) ? null : str;
        this.f10304d = j;
        this.f10305e = j2;
        if (j2 != 0 && j2 > j) {
            s4Var.t().p().m3875b("Event created with reverse previous/current timestamps. appId", o3.x(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    s4Var.t().m().m3876a("Param name can't be null");
                } else {
                    Object q = s4Var.G().q(next, bundle2.get(next));
                    if (q == null) {
                        s4Var.t().p().m3875b("Param value can't be null", s4Var.H().o(next));
                    } else {
                        s4Var.G().z(bundle2, next, q);
                    }
                }
                it.remove();
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.f10306f = zzaqVar;
    }

    private C2299n(s4 s4Var, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        C1581h.m8351d(str2);
        C1581h.m8351d(str3);
        C1581h.m8347h(zzaqVar);
        this.f10301a = str2;
        this.f10302b = str3;
        this.f10303c = true == TextUtils.isEmpty(str) ? null : str;
        this.f10304d = j;
        this.f10305e = j2;
        if (j2 != 0 && j2 > j) {
            s4Var.t().p().m3874c("Event created with reverse previous/current timestamps. appId, name", o3.x(str2), o3.x(str3));
        }
        this.f10306f = zzaqVar;
    }

    /* renamed from: a */
    final C2299n m3872a(s4 s4Var, long j) {
        return new C2299n(s4Var, this.f10303c, this.f10301a, this.f10302b, this.f10304d, j, this.f10306f);
    }

    public final String toString() {
        String str = this.f10301a;
        String str2 = this.f10302b;
        String valueOf = String.valueOf(this.f10306f);
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
