package org.apache.commons.lang3.d;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/a.class */
public final class a<L, R> extends b<L, R> {

    /* renamed from: a  reason: collision with root package name */
    public static final a<?, ?>[] f39172a = new a[0];
    private static final a e = a(null, null);

    /* renamed from: b  reason: collision with root package name */
    public final L f39173b;

    /* renamed from: c  reason: collision with root package name */
    public final R f39174c;

    public a(L l, R r) {
        this.f39173b = l;
        this.f39174c = r;
    }

    public static <L, R> a<L, R> a(L l, R r) {
        return new a<>(l, r);
    }

    @Override // org.apache.commons.lang3.d.b
    public final L a() {
        return this.f39173b;
    }

    @Override // org.apache.commons.lang3.d.b
    public final R b() {
        return this.f39174c;
    }

    @Override // java.util.Map.Entry
    public final R setValue(R r) {
        throw new UnsupportedOperationException();
    }
}
