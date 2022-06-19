package com.squareup.tape;

import java.util.LinkedList;
import java.util.Queue;
/* renamed from: com.squareup.tape.b */
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/b.class */
public final class C17156b<T> implements AbstractC17157c<T> {

    /* renamed from: a */
    private final Queue<T> f60729a = new LinkedList();

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: a */
    public final int mo5858a() {
        return this.f60729a.size();
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: a */
    public final void mo5857a(T t) {
        this.f60729a.add(t);
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: b */
    public final T mo5856b() {
        return this.f60729a.peek();
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: c */
    public final void mo5855c() {
        this.f60729a.remove();
    }
}
