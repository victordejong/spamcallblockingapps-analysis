package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/s.class */
public final class s implements be<r> {

    /* renamed from: a  reason: collision with root package name */
    private final be<Context> f31059a;

    /* renamed from: b  reason: collision with root package name */
    private final be<t> f31060b;

    public s(be<Context> beVar, be<t> beVar2) {
        this.f31059a = beVar;
        this.f31060b = beVar2;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ r a() {
        return new r(((k) this.f31059a).a(), this.f31060b.a());
    }
}
