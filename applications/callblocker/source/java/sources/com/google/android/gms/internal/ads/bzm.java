package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzm.class */
public final class bzm implements cah<bzn> {

    /* renamed from: a */
    private final C3509ta f12551a;

    /* renamed from: b */
    private final crs f12552b;

    /* renamed from: c */
    private final Context f12553c;

    public bzm(C3509ta c3509ta, crs crsVar, Context context) {
        this.f12551a = c3509ta;
        this.f12552b = crsVar;
        this.f12553c = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bzn> mo11479a() {
        return this.f12552b.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bzp

            /* renamed from: a */
            private final bzm f12562a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12562a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12562a.m11535b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bzn m11535b() {
        Long l;
        bzn bznVar;
        if (!this.f12551a.m7166a(this.f12553c)) {
            bznVar = new bzn(null, null, null, null, null);
        } else {
            String m7149c = this.f12551a.m7149c(this.f12553c);
            if (m7149c == null) {
                m7149c = "";
            }
            String m7147d = this.f12551a.m7147d(this.f12553c);
            String str = m7147d;
            if (m7147d == null) {
                str = "";
            }
            String m7145e = this.f12551a.m7145e(this.f12553c);
            String str2 = m7145e;
            if (m7145e == null) {
                str2 = "";
            }
            String m7143f = this.f12551a.m7143f(this.f12553c);
            String str3 = m7143f;
            if (m7143f == null) {
                str3 = "";
            }
            if ("TIME_OUT".equals(str)) {
                l = (Long) dyx.m8158e().m7876a(edi.f16336V);
            } else {
                l = null;
            }
            bznVar = new bzn(m7149c, str, str2, str3, l);
        }
        return bznVar;
    }
}
