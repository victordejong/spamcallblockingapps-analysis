package com.google.a.b;
/* loaded from: classes-dex2jar.jar:com/google/a/b/j.class */
final class j<E> extends w<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient k<E> f3699a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Object[] objArr, k<E> kVar) {
        super(objArr, 0, objArr.length);
        this.f3699a = kVar;
    }

    @Override // com.google.a.b.w, com.google.a.b.k, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.f3699a.contains(obj);
    }
}
