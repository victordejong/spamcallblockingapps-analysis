package kotlinx.coroutines;
/* renamed from: kotlinx.coroutines.ax */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ax.class */
public final class C1815ax implements AbstractC1845bf {

    /* renamed from: a */
    private final boolean f4507a;

    public C1815ax(boolean z) {
        this.f4507a = z;
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: b */
    public boolean mo2732b() {
        return this.f4507a;
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: m_ */
    public C1867bv mo2731m_() {
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(mo2732b() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
