package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/h.class */
public final class h implements be<g> {

    /* renamed from: a  reason: collision with root package name */
    private final be<r> f31037a;

    /* renamed from: b  reason: collision with root package name */
    private final be<e> f31038b;

    /* renamed from: c  reason: collision with root package name */
    private final be<Context> f31039c;

    public h(be<r> beVar, be<e> beVar2, be<Context> beVar3) {
        this.f31037a = beVar;
        this.f31038b = beVar2;
        this.f31039c = beVar3;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ g a() {
        return new g(this.f31037a.a(), this.f31038b.a(), ((k) this.f31039c).a());
    }
}
