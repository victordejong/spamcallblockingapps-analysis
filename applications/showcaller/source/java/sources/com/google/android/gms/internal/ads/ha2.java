package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ha2.class */
public final class ha2 implements wa2<ia2> {

    /* renamed from: a */
    private final lg0 f23836a;

    /* renamed from: b */
    private final s03 f23837b;

    /* renamed from: c */
    private final Context f23838c;

    public ha2(lg0 lg0Var, s03 s03Var, Context context) {
        this.f23836a = lg0Var;
        this.f23837b = s03Var;
        this.f23838c = context;
    }

    /* renamed from: a */
    public final /* synthetic */ ia2 m14719a() {
        Long l;
        if (!this.f23836a.m13546g(this.f23838c)) {
            return new ia2(null, null, null, null, null);
        }
        String m13538o = this.f23836a.m13538o(this.f23838c);
        if (m13538o == null) {
            m13538o = "";
        }
        String m13537p = this.f23836a.m13537p(this.f23838c);
        if (m13537p == null) {
            m13537p = "";
        }
        String m13536q = this.f23836a.m13536q(this.f23838c);
        if (m13536q == null) {
            m13536q = "";
        }
        String m13535r = this.f23836a.m13535r(this.f23838c);
        if (m13535r == null) {
            m13535r = "";
        }
        if ("TIME_OUT".equals(m13537p)) {
            l = (Long) C7192yr.m8714c().m14263c(C6679kw.f25644a0);
        } else {
            l = null;
        }
        return new ia2(m13538o, m13537p, m13536q, m13535r, l);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<ia2> zza() {
        return this.f23837b.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ga2

            /* renamed from: a */
            private final ha2 f23279a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23279a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f23279a.m14719a();
            }
        });
    }
}
