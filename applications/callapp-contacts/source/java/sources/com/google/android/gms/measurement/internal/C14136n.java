package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n.class */
public final class C14136n {

    /* renamed from: a */
    final String f52055a;

    /* renamed from: b */
    final String f52056b;

    /* renamed from: c */
    final String f52057c;

    /* renamed from: d */
    final long f52058d;

    /* renamed from: e */
    final long f52059e;

    /* renamed from: f */
    final zzaq f52060f;

    public C14136n(C13979es c13979es, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        C12045o.m19160a(str2);
        C12045o.m19160a(str3);
        this.f52055a = str2;
        this.f52056b = str3;
        this.f52057c = true == TextUtils.isEmpty(str) ? null : str;
        this.f52058d = j;
        this.f52059e = j2;
        if (j2 != 0 && j2 > j) {
            c13979es.mo11661c().f51398f.m12091a("Event created with reverse previous/current timestamps. appId", C13947do.m12087a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it2 = bundle2.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next == null) {
                    c13979es.mo11661c().f51395c.m12092a("Param name can't be null");
                    it2.remove();
                } else {
                    Object m11586a = c13979es.m11988g().m11586a(next, bundle2.get(next));
                    if (m11586a == null) {
                        c13979es.mo11661c().f51398f.m12091a("Param value can't be null", c13979es.m11987h().m12094b(next));
                        it2.remove();
                    } else {
                        c13979es.m11988g().m11601a(bundle2, next, m11586a);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.f52060f = zzaqVar;
    }

    private C14136n(C13979es c13979es, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        C12045o.m19160a(str2);
        C12045o.m19160a(str3);
        C12045o.m19162a(zzaqVar);
        this.f52055a = str2;
        this.f52056b = str3;
        this.f52057c = true == TextUtils.isEmpty(str) ? null : str;
        this.f52058d = j;
        this.f52059e = j2;
        if (j2 != 0 && j2 > j) {
            c13979es.mo11661c().f51398f.m12090a("Event created with reverse previous/current timestamps. appId, name", C13947do.m12087a(str2), C13947do.m12087a(str3));
        }
        this.f52060f = zzaqVar;
    }

    /* renamed from: a */
    public final C14136n m11518a(C13979es c13979es, long j) {
        return new C14136n(c13979es, this.f52057c, this.f52055a, this.f52056b, this.f52058d, j, this.f52060f);
    }

    public final String toString() {
        String str = this.f52055a;
        String str2 = this.f52056b;
        String valueOf = String.valueOf(this.f52060f);
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
