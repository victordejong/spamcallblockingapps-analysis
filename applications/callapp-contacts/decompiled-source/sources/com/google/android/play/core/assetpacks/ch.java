package com.google.android.play.core.assetpacks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.c;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.h;
import com.google.android.play.core.splitinstall.ae;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ch.class */
final class ch {

    /* renamed from: d  reason: collision with root package name */
    private static final h f31237d = new h("AssetPackManager");

    /* renamed from: a  reason: collision with root package name */
    final w f31238a;

    /* renamed from: b  reason: collision with root package name */
    final ba<cs> f31239b;

    /* renamed from: c  reason: collision with root package name */
    final ba<Executor> f31240c;
    private final t e;
    private final ae f;
    private final bb g;
    private final ap h;
    private final af i;
    private final c j;
    private final Handler k = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(w wVar, ba<cs> baVar, t tVar, ae aeVar, bb bbVar, ap apVar, af afVar, ba<Executor> baVar2, c cVar) {
        this.f31238a = wVar;
        this.f31239b = baVar;
        this.e = tVar;
        this.f = aeVar;
        this.g = bbVar;
        this.h = apVar;
        this.i = afVar;
        this.f31240c = baVar2;
        this.j = cVar;
    }

    private final void a() {
        this.f31240c.a().execute(new ce(this, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        boolean a2 = this.e.a();
        this.e.a(z);
        if (z && !a2) {
            a();
        }
    }
}
