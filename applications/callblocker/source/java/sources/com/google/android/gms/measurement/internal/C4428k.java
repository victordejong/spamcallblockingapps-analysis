package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
public final class C4428k {

    /* renamed from: a */
    final String f19293a;

    /* renamed from: b */
    final String f19294b;

    /* renamed from: c */
    final long f19295c;

    /* renamed from: d */
    final long f19296d;

    /* renamed from: e */
    final C4445m f19297e;

    /* renamed from: f */
    private final String f19298f;

    public C4428k(C4296fd c4296fd, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        C4445m c4445m;
        C2662s.m13979a(str2);
        C2662s.m13979a(str3);
        this.f19293a = str2;
        this.f19294b = str3;
        this.f19298f = TextUtils.isEmpty(str) ? null : str;
        this.f19295c = j;
        this.f19296d = j2;
        if (this.f19296d != 0 && this.f19296d > this.f19295c) {
            c4296fd.mo4030v().m4662e().m4653a("Event created with reverse previous/current timestamps. appId", C4263dy.m4669a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            c4445m = new C4445m(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    c4296fd.mo4030v().m4655x_().m4654a("Param name can't be null");
                    it.remove();
                } else {
                    Object m4117a = c4296fd.m4547i().m4117a(next, bundle2.get(next));
                    if (m4117a == null) {
                        c4296fd.mo4030v().m4662e().m4653a("Param value can't be null", c4296fd.m4546j().m4679b(next));
                        it.remove();
                    } else {
                        c4296fd.m4547i().m4134a(bundle2, next, m4117a);
                    }
                }
            }
            c4445m = new C4445m(bundle2);
        }
        this.f19297e = c4445m;
    }

    private C4428k(C4296fd c4296fd, String str, String str2, String str3, long j, long j2, C4445m c4445m) {
        C2662s.m13979a(str2);
        C2662s.m13979a(str3);
        C2662s.m13981a(c4445m);
        this.f19293a = str2;
        this.f19294b = str3;
        this.f19298f = TextUtils.isEmpty(str) ? null : str;
        this.f19295c = j;
        this.f19296d = j2;
        if (this.f19296d != 0 && this.f19296d > this.f19295c) {
            c4296fd.mo4030v().m4662e().m4652a("Event created with reverse previous/current timestamps. appId, name", C4263dy.m4669a(str2), C4263dy.m4669a(str3));
        }
        this.f19297e = c4445m;
    }

    /* renamed from: a */
    public final C4428k m4074a(C4296fd c4296fd, long j) {
        return new C4428k(c4296fd, this.f19298f, this.f19293a, this.f19294b, this.f19295c, j, this.f19297e);
    }

    public final String toString() {
        String str = this.f19293a;
        String str2 = this.f19294b;
        String valueOf = String.valueOf(this.f19297e);
        return new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length()).append("Event{appId='").append(str).append("', name='").append(str2).append("', params=").append(valueOf).append('}').toString();
    }
}
