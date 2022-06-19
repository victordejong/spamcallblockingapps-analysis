package org.apache.commons.lang3.p587d;
/* renamed from: org.apache.commons.lang3.d.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/a.class */
public final class C20754a<L, R> extends AbstractC20755b<L, R> {

    /* renamed from: a */
    public static final C20754a<?, ?>[] f67249a = new C20754a[0];

    /* renamed from: e */
    private static final C20754a f67250e = m528a(null, null);

    /* renamed from: b */
    public final L f67251b;

    /* renamed from: c */
    public final R f67252c;

    public C20754a(L l, R r) {
        this.f67251b = l;
        this.f67252c = r;
    }

    /* renamed from: a */
    public static <L, R> C20754a<L, R> m528a(L l, R r) {
        return new C20754a<>(l, r);
    }

    @Override // org.apache.commons.lang3.p587d.AbstractC20755b
    /* renamed from: a */
    public final L mo525a() {
        return this.f67251b;
    }

    @Override // org.apache.commons.lang3.p587d.AbstractC20755b
    /* renamed from: b */
    public final R mo524b() {
        return this.f67252c;
    }

    @Override // java.util.Map.Entry
    public final R setValue(R r) {
        throw new UnsupportedOperationException();
    }
}
