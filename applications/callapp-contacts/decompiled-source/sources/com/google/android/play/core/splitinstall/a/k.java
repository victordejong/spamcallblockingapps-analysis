package com.google.android.play.core.splitinstall.a;

import android.content.Context;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.ae;
import com.google.android.play.core.splitinstall.an;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/k.class */
public final class k implements be<a> {

    /* renamed from: a  reason: collision with root package name */
    private final be<Context> f31480a;

    /* renamed from: b  reason: collision with root package name */
    private final be<File> f31481b;

    /* renamed from: c  reason: collision with root package name */
    private final be<ae> f31482c;

    public k(be<Context> beVar, be<File> beVar2, be<ae> beVar3) {
        this.f31480a = beVar;
        this.f31481b = beVar2;
        this.f31482c = beVar3;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ a a() {
        return new a(((an) this.f31480a).a(), this.f31481b.a(), this.f31482c.a());
    }
}
