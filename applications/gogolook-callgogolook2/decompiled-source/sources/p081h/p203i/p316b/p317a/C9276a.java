package p081h.p203i.p316b.p317a;
/* renamed from: h.i.b.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/a.class */
public final class C9276a<T> extends AbstractC9296h<T> {

    /* renamed from: a */
    public static final C9276a<Object> f21312a = new C9276a<>();

    /* renamed from: d */
    public static <T> AbstractC9296h<T> m15508d() {
        return f21312a;
    }

    private Object readResolve() {
        return f21312a;
    }

    @Override // p081h.p203i.p316b.p317a.AbstractC9296h
    /* renamed from: a */
    public T mo15464a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // p081h.p203i.p316b.p317a.AbstractC9296h
    /* renamed from: b */
    public boolean mo15463b() {
        return false;
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return 2040732332;
    }

    public String toString() {
        return "Optional.absent()";
    }
}
