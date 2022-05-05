package com.a.a.a.d.a;

import android.util.Pair;
import com.a.a.a.d.d;
import com.a.a.a.e;
import com.google.a.d.a.j;
import com.google.gson.l;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/a/f.class */
public final class f<E> implements l {

    /* renamed from: a  reason: collision with root package name */
    public d<E> f373a;

    /* renamed from: b  reason: collision with root package name */
    private l f374b = new m();

    /* renamed from: a */
    public final f<E> d(String str) {
        this.f374b.d(str);
        return this;
    }

    /* renamed from: a */
    public final f<E> d(String str, String str2) {
        this.f374b.d(str, str2);
        return this;
    }

    public final com.google.a.d.a.f<e<E>> a() {
        final d<E> dVar = this.f373a;
        final j a2 = j.a();
        com.google.a.d.a.e.a(dVar.f401a.a(this), new com.google.a.d.a.d<l>() { // from class: com.a.a.a.d.d.1
            @Override // com.google.a.d.a.d
            public final /* bridge */ /* synthetic */ void a(l lVar) {
                d.a(dVar, lVar, a2);
            }

            @Override // com.google.a.d.a.d
            public final void a(Throwable th) {
                a2.a(th);
            }
        });
        return a2;
    }

    @Override // com.a.a.a.d.a.l
    public final void a(o oVar) {
        this.f374b.a(oVar);
    }

    /* renamed from: b */
    public final f<E> c(String str) {
        this.f374b.c(str);
        return this;
    }

    /* renamed from: b */
    public final f<E> c(String str, String str2) {
        this.f374b.c(str, str2);
        return this;
    }

    @Override // com.a.a.a.d.a.l
    public final o b() {
        return this.f374b.b();
    }

    @Override // com.a.a.a.d.a.l
    public final boolean c() {
        return this.f374b.c();
    }

    @Override // com.a.a.a.d.a.l
    public final boolean d() {
        return this.f374b.d();
    }

    @Override // com.a.a.a.d.a.l
    public final List<Pair<String, u>> e() {
        return this.f374b.e();
    }

    @Override // com.a.a.a.d.a.l
    public final List<String> f() {
        return this.f374b.f();
    }

    @Override // com.a.a.a.d.a.l
    public final List<Pair<String, String>> g() {
        return this.f374b.g();
    }

    @Override // com.a.a.a.d.a.l
    public final int h() {
        return this.f374b.h();
    }

    @Override // com.a.a.a.d.a.l
    public final int i() {
        return this.f374b.i();
    }

    /* renamed from: j */
    public final f<E> k() {
        this.f374b.k();
        return this;
    }
}
