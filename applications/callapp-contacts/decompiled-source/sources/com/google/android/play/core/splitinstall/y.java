package com.google.android.play.core.splitinstall;

import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.a.a;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/y.class */
public final class y implements be<x> {

    /* renamed from: a  reason: collision with root package name */
    private final be<ak> f31554a;

    /* renamed from: b  reason: collision with root package name */
    private final be<a> f31555b;

    /* renamed from: c  reason: collision with root package name */
    private final be<File> f31556c;

    public y(be<ak> beVar, be<a> beVar2, be<File> beVar3) {
        this.f31554a = beVar;
        this.f31555b = beVar2;
        this.f31556c = beVar3;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ x a() {
        return new x(bc.b(this.f31554a), bc.b(this.f31555b), bc.b(this.f31556c));
    }
}
