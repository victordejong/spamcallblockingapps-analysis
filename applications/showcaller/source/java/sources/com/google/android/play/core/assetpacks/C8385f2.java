package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.C8461a;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.splitinstall.C8564k;
import com.google.android.play.core.tasks.AbstractC8571c;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.f2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/f2.class */
public final class C8385f2 {

    /* renamed from: a */
    private static final C8466a f37714a = new C8466a("AssetPackManager");

    /* renamed from: b */
    private final C8446v f37715b;

    /* renamed from: c */
    private final AbstractC8509p0<AbstractC8433r2> f37716c;

    /* renamed from: d */
    private final C8434s f37717d;

    /* renamed from: e */
    private final C8564k f37718e;

    /* renamed from: f */
    private final C8459z0 f37719f;

    /* renamed from: g */
    private final C8415n0 f37720g;

    /* renamed from: h */
    private final C8379e0 f37721h;

    /* renamed from: i */
    private final AbstractC8509p0<Executor> f37722i;

    /* renamed from: j */
    private final C8461a f37723j;

    /* renamed from: k */
    private final Handler f37724k = new Handler(Looper.getMainLooper());

    public C8385f2(C8446v c8446v, AbstractC8509p0<AbstractC8433r2> abstractC8509p0, C8434s c8434s, C8564k c8564k, C8459z0 c8459z0, C8415n0 c8415n0, C8379e0 c8379e0, AbstractC8509p0<Executor> abstractC8509p02, C8461a c8461a) {
        this.f37715b = c8446v;
        this.f37716c = abstractC8509p0;
        this.f37717d = c8434s;
        this.f37718e = c8564k;
        this.f37719f = c8459z0;
        this.f37720g = c8415n0;
        this.f37721h = c8379e0;
        this.f37722i = abstractC8509p02;
        this.f37723j = c8461a;
    }

    /* renamed from: f */
    private final void m3753f() {
        this.f37722i.m3482a().execute(new Runnable(this, null) { // from class: com.google.android.play.core.assetpacks.c2

            /* renamed from: d */
            private final C8385f2 f37683d;

            /* renamed from: e */
            private final /* synthetic */ int f37684e = 1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f37683d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (this.f37684e != 0) {
                    this.f37683d.m3756c();
                } else {
                    this.f37683d.m3757b();
                }
            }
        });
    }

    /* renamed from: a */
    public final void m3758a(boolean z) {
        boolean m28429e = this.f37717d.m28429e();
        this.f37717d.m28431c(z);
        if (!z || m28429e) {
            return;
        }
        m3753f();
    }

    /* renamed from: b */
    public final /* synthetic */ void m3757b() {
        this.f37715b.m3664I();
        this.f37715b.m3667F();
        this.f37715b.m3663J();
    }

    /* renamed from: c */
    public final /* synthetic */ void m3756c() {
        AbstractC8571c<List<String>> mo3680f = this.f37716c.m3482a().mo3680f(this.f37715b.m3645q());
        Executor m3482a = this.f37722i.m3482a();
        C8446v c8446v = this.f37715b;
        c8446v.getClass();
        mo3680f.mo3309b(m3482a, C8377d2.m3761a(c8446v));
        mo3680f.mo3310a(this.f37722i.m3482a(), C8381e2.f37707a);
    }
}
