package com.google.firebase.components;

import com.google.firebase.d.a;
import com.google.firebase.d.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/w.class */
public final class w<T> implements a<T>, b<T> {

    /* renamed from: b  reason: collision with root package name */
    a.AbstractC0517a<T> f32290b;

    /* renamed from: c  reason: collision with root package name */
    volatile b<T> f32291c;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0517a<Object> f32289d = x.b();

    /* renamed from: a  reason: collision with root package name */
    static final b<Object> f32288a = y.b();

    private w(a.AbstractC0517a<T> aVar, b<T> bVar) {
        this.f32290b = aVar;
        this.f32291c = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> w<T> b() {
        return new w<>(f32289d, f32288a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object c() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void d() {
    }

    @Override // com.google.firebase.d.b
    public final T a() {
        return this.f32291c.a();
    }
}
