package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzak.class */
public final class zzak {

    /* renamed from: a */
    final String f8856a;

    /* renamed from: b */
    final String f8857b;

    /* renamed from: c */
    private final String f8858c;

    /* renamed from: d */
    final long f8859d;

    /* renamed from: e */
    final long f8860e;

    /* renamed from: f */
    final zzam f8861f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzak(zzfv zzfvVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzam zzamVar;
        Preconditions.m14527g(str2);
        Preconditions.m14527g(str3);
        this.f8856a = str2;
        this.f8857b = str3;
        this.f8858c = TextUtils.isEmpty(str) ? null : str;
        this.f8859d = j;
        this.f8860e = j2;
        if (j2 != 0 && j2 > j) {
            zzfvVar.mo11081c().m11557G().m11539b("Event created with reverse previous/current timestamps. appId", zzer.m11546v(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzamVar = new zzam(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    zzfvVar.mo11081c().m11560D().m11540a("Param name can't be null");
                    it.remove();
                } else {
                    Object F = zzfvVar.m11381G().m10993F(next, bundle2.get(next));
                    if (F == null) {
                        zzfvVar.mo11081c().m11557G().m11539b("Param value can't be null", zzfvVar.m11380H().m11566x(next));
                        it.remove();
                    } else {
                        zzfvVar.m11381G().m10981L(bundle2, next, F);
                    }
                }
            }
            zzamVar = new zzam(bundle2);
        }
        this.f8861f = zzamVar;
    }

    private zzak(zzfv zzfvVar, String str, String str2, String str3, long j, long j2, zzam zzamVar) {
        Preconditions.m14527g(str2);
        Preconditions.m14527g(str3);
        Preconditions.m14523k(zzamVar);
        this.f8856a = str2;
        this.f8857b = str3;
        this.f8858c = TextUtils.isEmpty(str) ? null : str;
        this.f8859d = j;
        this.f8860e = j2;
        if (j2 != 0 && j2 > j) {
            zzfvVar.mo11081c().m11557G().m11538c("Event created with reverse previous/current timestamps. appId, name", zzer.m11546v(str2), zzer.m11546v(str3));
        }
        this.f8861f = zzamVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzak m11711a(zzfv zzfvVar, long j) {
        return new zzak(zzfvVar, this.f8858c, this.f8856a, this.f8857b, this.f8859d, j, this.f8861f);
    }

    public final String toString() {
        String str = this.f8856a;
        String str2 = this.f8857b;
        String valueOf = String.valueOf(this.f8861f);
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
