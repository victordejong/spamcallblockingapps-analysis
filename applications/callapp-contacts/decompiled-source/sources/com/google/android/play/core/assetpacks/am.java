package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.h;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/am.class */
public final class am {

    /* renamed from: a  reason: collision with root package name */
    static final h f31113a = new h("ExtractorLooper");

    /* renamed from: b  reason: collision with root package name */
    final ak f31114b;

    /* renamed from: c  reason: collision with root package name */
    final cc f31115c;

    /* renamed from: d  reason: collision with root package name */
    final bn f31116d;
    final bs e;
    final bw f;
    final ba<cs> g;
    final be h;
    final AtomicBoolean i = new AtomicBoolean(false);
    private final bb j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(bb bbVar, ba<cs> baVar, ak akVar, cc ccVar, bn bnVar, bs bsVar, bw bwVar, be beVar) {
        this.j = bbVar;
        this.g = baVar;
        this.f31114b = akVar;
        this.f31115c = ccVar;
        this.f31116d = bnVar;
        this.e = bsVar;
        this.f = bwVar;
        this.h = beVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Exception exc) {
        try {
            this.j.c(i);
            this.j.a(i);
        } catch (al e) {
            f31113a.b("Error during error handling: %s", exc.getMessage());
        }
    }
}
