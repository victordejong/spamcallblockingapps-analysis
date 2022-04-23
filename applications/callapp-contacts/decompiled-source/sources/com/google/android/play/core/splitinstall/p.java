package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/p.class */
public final class p implements be<o> {

    /* renamed from: a  reason: collision with root package name */
    private final be f31542a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f31543b = 0;

    public p(be<Context> beVar) {
        this.f31542a = beVar;
    }

    public p(be<Context> beVar, byte[] bArr) {
        this.f31542a = beVar;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.play.core.splitinstall.n, com.google.android.play.core.splitinstall.o] */
    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ o a() {
        return this.f31543b != 0 ? new n(((an) this.f31542a).a()) : new o(((an) this.f31542a).a());
    }
}
