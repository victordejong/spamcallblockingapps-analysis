package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.C15002c;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.splitinstall.C15139ae;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.ch */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ch.class */
public final class C14961ch {

    /* renamed from: d */
    private static final C15072h f54610d = new C15072h("AssetPackManager");

    /* renamed from: a */
    final C14996w f54611a;

    /* renamed from: b */
    final AbstractC15037ba<AbstractC14972cs> f54612b;

    /* renamed from: c */
    final AbstractC15037ba<Executor> f54613c;

    /* renamed from: e */
    private final C14993t f54614e;

    /* renamed from: f */
    private final C15139ae f54615f;

    /* renamed from: g */
    private final C14928bb f54616g;

    /* renamed from: h */
    private final C14915ap f54617h;

    /* renamed from: i */
    private final C14905af f54618i;

    /* renamed from: j */
    private final C15002c f54619j;

    /* renamed from: k */
    private final Handler f54620k = new Handler(Looper.getMainLooper());

    public C14961ch(C14996w c14996w, AbstractC15037ba<AbstractC14972cs> abstractC15037ba, C14993t c14993t, C15139ae c15139ae, C14928bb c14928bb, C14915ap c14915ap, C14905af c14905af, AbstractC15037ba<Executor> abstractC15037ba2, C15002c c15002c) {
        this.f54611a = c14996w;
        this.f54612b = abstractC15037ba;
        this.f54614e = c14993t;
        this.f54615f = c15139ae;
        this.f54616g = c14928bb;
        this.f54617h = c14915ap;
        this.f54618i = c14905af;
        this.f54613c = abstractC15037ba2;
        this.f54619j = c15002c;
    }

    /* renamed from: a */
    private final void m9707a() {
        this.f54613c.mo9335a().execute(new RunnableC14958ce(this, null));
    }

    /* renamed from: a */
    public final void m9704a(boolean z) {
        boolean m9833a = this.f54614e.m9833a();
        this.f54614e.m9830a(z);
        if (!z || m9833a) {
            return;
        }
        m9707a();
    }
}
