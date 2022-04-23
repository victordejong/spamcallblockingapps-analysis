package com.criteo.publisher.f;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/o.class */
final class o<T> implements p<T> {

    /* renamed from: a  reason: collision with root package name */
    private final p<T> f17296a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f17297b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f17298c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(p<T> pVar, b<T> bVar) {
        this.f17296a = pVar;
        this.f17298c = bVar;
    }

    @Override // com.criteo.publisher.f.p
    public final int a() {
        return this.f17296a.a();
    }

    @Override // com.criteo.publisher.f.p
    public final List<T> a(int i) {
        List<T> a2;
        synchronized (this.f17297b) {
            a2 = this.f17296a.a(i);
        }
        return a2;
    }

    @Override // com.criteo.publisher.f.p
    public final boolean a(T t) {
        boolean a2;
        synchronized (this.f17297b) {
            if (a() >= this.f17298c.a()) {
                this.f17296a.a(1);
            }
            a2 = this.f17296a.a((p<T>) t);
        }
        return a2;
    }
}
