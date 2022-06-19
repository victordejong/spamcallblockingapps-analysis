package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.p263v.C5852a;
import com.google.android.gms.tasks.AbstractC7960d;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gs2.class */
public final class gs2 {

    /* renamed from: a */
    private final Context f23667a;

    /* renamed from: b */
    private final Executor f23668b;

    /* renamed from: c */
    private final mr2 f23669c;

    /* renamed from: d */
    private final or2 f23670d;

    /* renamed from: e */
    private final fs2 f23671e;

    /* renamed from: f */
    private final fs2 f23672f;

    /* renamed from: g */
    private AbstractC7966g<z14> f23673g;

    /* renamed from: h */
    private AbstractC7966g<z14> f23674h;

    gs2(Context context, Executor executor, mr2 mr2Var, or2 or2Var, cs2 cs2Var, ds2 ds2Var) {
        this.f23667a = context;
        this.f23668b = executor;
        this.f23669c = mr2Var;
        this.f23670d = or2Var;
        this.f23671e = cs2Var;
        this.f23672f = ds2Var;
    }

    /* renamed from: a */
    public static gs2 m14821a(Context context, Executor executor, mr2 mr2Var, or2 or2Var) {
        gs2 gs2Var = new gs2(context, executor, mr2Var, or2Var, new cs2(), new ds2());
        if (gs2Var.f23670d.mo10919b()) {
            gs2Var.f23673g = gs2Var.m14815g(new Callable(gs2Var) { // from class: com.google.android.gms.internal.ads.zr2

                /* renamed from: a */
                private final gs2 f33384a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f33384a = gs2Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f33384a.m14816f();
                }
            });
        } else {
            gs2Var.f23673g = C7970j.m5798e(gs2Var.f23671e.zza());
        }
        gs2Var.f23674h = gs2Var.m14815g(new Callable(gs2Var) { // from class: com.google.android.gms.internal.ads.as2

            /* renamed from: a */
            private final gs2 f20113a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20113a = gs2Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f20113a.m14817e();
            }
        });
        return gs2Var;
    }

    /* renamed from: g */
    private final AbstractC7966g<z14> m14815g(Callable<z14> callable) {
        return C7970j.m5800c(this.f23668b, callable).mo5822e(this.f23668b, new AbstractC7960d(this) { // from class: com.google.android.gms.internal.ads.bs2

            /* renamed from: a */
            private final gs2 f20954a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20954a = this;
            }

            @Override // com.google.android.gms.tasks.AbstractC7960d
            /* renamed from: a */
            public final void mo5788a(Exception exc) {
                this.f20954a.m14818d(exc);
            }
        });
    }

    /* renamed from: h */
    private static z14 m14814h(AbstractC7966g<z14> abstractC7966g, z14 z14Var) {
        return !abstractC7966g.mo5810q() ? z14Var : abstractC7966g.mo5814m();
    }

    /* renamed from: b */
    public final z14 m14820b() {
        return m14814h(this.f23673g, this.f23671e.zza());
    }

    /* renamed from: c */
    public final z14 m14819c() {
        return m14814h(this.f23674h, this.f23672f.zza());
    }

    /* renamed from: d */
    public final /* synthetic */ void m14818d(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.f23669c.m13100c(2025, -1L, exc);
    }

    /* renamed from: e */
    public final /* synthetic */ z14 m14817e() {
        Context context = this.f23667a;
        return ur2.m10179a(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    /* renamed from: f */
    public final /* synthetic */ z14 m14816f() {
        Context context = this.f23667a;
        j14 m8561z0 = z14.m8561z0();
        C5852a.C5853a m17753b = C5852a.m17753b(context);
        String m17742a = m17753b.m17742a();
        String str = m17742a;
        if (m17742a != null) {
            str = m17742a;
            if (m17742a.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(m17742a);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            m8561z0.m14231L(str);
            m8561z0.m14230M(m17753b.m17741b());
            m8561z0.m14222W(6);
        }
        return m8561z0.m15512n();
    }
}
