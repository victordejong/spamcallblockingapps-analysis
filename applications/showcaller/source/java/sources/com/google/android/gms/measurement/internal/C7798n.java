package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n.class */
public final class C7798n {

    /* renamed from: a */
    final String f35472a;

    /* renamed from: b */
    final String f35473b;

    /* renamed from: c */
    final String f35474c;

    /* renamed from: d */
    final long f35475d;

    /* renamed from: e */
    final long f35476e;

    /* renamed from: f */
    final zzaq f35477f;

    public C7798n(C7858s4 c7858s4, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        C6155o.m17022f(str2);
        C6155o.m17022f(str3);
        this.f35472a = str2;
        this.f35473b = str3;
        this.f35474c = true == TextUtils.isEmpty(str) ? null : str;
        this.f35475d = j;
        this.f35476e = j2;
        if (j2 != 0 && j2 > j) {
            c7858s4.mo6047C().m6192p().m6215b("Event created with reverse previous/current timestamps. appId", C7813o3.m6186v(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    c7858s4.mo6047C().m6195m().m6216a("Param name can't be null");
                    it.remove();
                } else {
                    Object m5954q = c7858s4.m6043G().m5954q(next, bundle2.get(next));
                    if (m5954q == null) {
                        c7858s4.mo6047C().m6192p().m6215b("Param value can't be null", c7858s4.m6042H().m6344o(next));
                        it.remove();
                    } else {
                        c7858s4.m6043G().m5941y(bundle2, next, m5954q);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.f35477f = zzaqVar;
    }

    private C7798n(C7858s4 c7858s4, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        C6155o.m17022f(str2);
        C6155o.m17022f(str3);
        C6155o.m17018j(zzaqVar);
        this.f35472a = str2;
        this.f35473b = str3;
        this.f35474c = true == TextUtils.isEmpty(str) ? null : str;
        this.f35475d = j;
        this.f35476e = j2;
        if (j2 != 0 && j2 > j) {
            c7858s4.mo6047C().m6192p().m6214c("Event created with reverse previous/current timestamps. appId, name", C7813o3.m6186v(str2), C7813o3.m6186v(str3));
        }
        this.f35477f = zzaqVar;
    }

    /* renamed from: a */
    public final C7798n m6212a(C7858s4 c7858s4, long j) {
        return new C7798n(c7858s4, this.f35474c, this.f35472a, this.f35473b, this.f35475d, j, this.f35477f);
    }

    public final String toString() {
        String str = this.f35472a;
        String str2 = this.f35473b;
        String valueOf = String.valueOf(this.f35477f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + valueOf.length());
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
