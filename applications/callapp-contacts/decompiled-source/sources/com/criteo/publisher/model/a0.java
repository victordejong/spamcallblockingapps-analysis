package com.criteo.publisher.model;

import com.criteo.publisher.j0.g;
import com.criteo.publisher.l.d;
import com.criteo.publisher.l.e;
import com.criteo.publisher.m0.u;
import com.criteo.publisher.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/a0.class */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private String f17530a = "";

    /* renamed from: b  reason: collision with root package name */
    private u f17531b = u.NONE;

    /* renamed from: c  reason: collision with root package name */
    private final t f17532c;

    /* renamed from: d  reason: collision with root package name */
    private final g f17533d;

    public a0(t tVar, g gVar) {
        this.f17532c = tVar;
        this.f17533d = gVar;
    }

    public void a() {
        this.f17531b = u.FAILED;
    }

    public void a(String str) {
        this.f17530a = this.f17532c.b().replace(this.f17532c.a(), str);
    }

    public void a(String str, u uVar, d dVar) {
        q.a().h().execute(new e(str, this, uVar, dVar, this.f17533d));
    }

    public void b() {
        this.f17531b = u.LOADING;
    }

    public void c() {
        this.f17531b = u.LOADED;
    }

    public String d() {
        return this.f17530a;
    }

    public boolean e() {
        return this.f17531b == u.LOADED;
    }

    public boolean f() {
        return this.f17531b == u.LOADING;
    }

    public void g() {
        this.f17531b = u.NONE;
        this.f17530a = "";
    }
}
