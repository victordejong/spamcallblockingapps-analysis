package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    final String f29959a;

    /* renamed from: b  reason: collision with root package name */
    final String f29960b;

    /* renamed from: c  reason: collision with root package name */
    final String f29961c;

    /* renamed from: d  reason: collision with root package name */
    final long f29962d;
    final long e;
    final zzaq f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(es esVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaq zzaqVar;
        o.a(str2);
        o.a(str3);
        this.f29959a = str2;
        this.f29960b = str3;
        this.f29961c = true == TextUtils.isEmpty(str) ? null : str;
        this.f29962d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            esVar.c().f.a("Event created with reverse previous/current timestamps. appId", Cdo.a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaqVar = new zzaq(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it2 = bundle2.keySet().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (next == null) {
                    esVar.c().f29506c.a("Param name can't be null");
                    it2.remove();
                } else {
                    Object a2 = esVar.g().a(next, bundle2.get(next));
                    if (a2 == null) {
                        esVar.c().f.a("Param value can't be null", esVar.h().b(next));
                        it2.remove();
                    } else {
                        esVar.g().a(bundle2, next, a2);
                    }
                }
            }
            zzaqVar = new zzaq(bundle2);
        }
        this.f = zzaqVar;
    }

    private n(es esVar, String str, String str2, String str3, long j, long j2, zzaq zzaqVar) {
        o.a(str2);
        o.a(str3);
        o.a(zzaqVar);
        this.f29959a = str2;
        this.f29960b = str3;
        this.f29961c = true == TextUtils.isEmpty(str) ? null : str;
        this.f29962d = j;
        this.e = j2;
        if (j2 != 0 && j2 > j) {
            esVar.c().f.a("Event created with reverse previous/current timestamps. appId, name", Cdo.a(str2), Cdo.a(str3));
        }
        this.f = zzaqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final n a(es esVar, long j) {
        return new n(esVar, this.f29961c, this.f29959a, this.f29960b, this.f29962d, j, this.f);
    }

    public final String toString() {
        String str = this.f29959a;
        String str2 = this.f29960b;
        String valueOf = String.valueOf(this.f);
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
