package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public be<c> f31072a;

    /* renamed from: b  reason: collision with root package name */
    private be<Context> f31073b;

    /* renamed from: c  reason: collision with root package name */
    private be<t> f31074c;

    /* renamed from: d  reason: collision with root package name */
    private be<r> f31075d;
    private be<e> e;
    private be<g> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ z(i iVar) {
        k kVar = new k(iVar);
        this.f31073b = kVar;
        be<t> a2 = bc.a(new j(kVar, (char[]) null));
        this.f31074c = a2;
        this.f31075d = bc.a(new s(this.f31073b, a2));
        be<e> a3 = bc.a(new j(this.f31073b, (byte[]) null));
        this.e = a3;
        be<g> a4 = bc.a(new h(this.f31075d, a3, this.f31073b));
        this.f = a4;
        this.f31072a = bc.a(new j(a4));
    }
}
