package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.appupdate.j;
import com.google.android.play.core.internal.bc;
import com.google.android.play.core.internal.be;
import com.google.android.play.core.splitinstall.a.a;
import com.google.android.play.core.splitinstall.a.k;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/r.class */
public final class r implements ab {

    /* renamed from: a  reason: collision with root package name */
    private be<Context> f31545a;

    /* renamed from: b  reason: collision with root package name */
    private be<n> f31546b;

    /* renamed from: c  reason: collision with root package name */
    private be<ah> f31547c;

    /* renamed from: d  reason: collision with root package name */
    private be<ae> f31548d;
    private be<o> e;
    private be<ak> f;
    private be<File> g;
    private be<a> h;
    private be<x> i;
    private be<a> j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r(am amVar) {
        an anVar = new an(amVar);
        this.f31545a = anVar;
        this.f31546b = bc.a(new p(anVar, null));
        this.f31547c = bc.a(new f(amVar));
        this.f31548d = bc.a(j.a(this.f31545a));
        be<o> a2 = bc.a(new p(this.f31545a));
        this.e = a2;
        this.f = bc.a(new al(this.f31546b, this.f31547c, this.f31548d, a2));
        be<File> a3 = bc.a(new ao(this.f31545a));
        this.g = a3;
        be<a> a4 = bc.a(new k(this.f31545a, a3, this.f31548d));
        this.h = a4;
        be<x> a5 = bc.a(new y(this.f, a4, this.g));
        this.i = a5;
        this.j = bc.a(new g(amVar, a5));
    }

    @Override // com.google.android.play.core.splitinstall.ab
    public final a a() {
        return this.j.a();
    }
}
