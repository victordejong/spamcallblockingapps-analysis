package com.squareup.tape;

import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/b.class */
public final class b<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<T> f35008a = new LinkedList();

    @Override // com.squareup.tape.c
    public final int a() {
        return this.f35008a.size();
    }

    @Override // com.squareup.tape.c
    public final void a(T t) {
        this.f35008a.add(t);
    }

    @Override // com.squareup.tape.c
    public final T b() {
        return this.f35008a.peek();
    }

    @Override // com.squareup.tape.c
    public final void c() {
        this.f35008a.remove();
    }
}
