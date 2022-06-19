package p1727n3.p1781e0.p1782a;
/* renamed from: n3.e0.a.a */
/* loaded from: classes-dex2jar.jar:n3/e0/a/a.class */
public final class C26146a implements AbstractC26153e {

    /* renamed from: a */
    public final String f72909a;

    /* renamed from: b */
    public final Object[] f72910b;

    public C26146a(String str) {
        this.f72909a = str;
        this.f72910b = null;
    }

    public C26146a(String str, Object[] objArr) {
        this.f72909a = str;
        this.f72910b = objArr;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26153e
    /* renamed from: b */
    public String mo2675b() {
        return this.f72909a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r6v0, types: [n3.e0.a.d] */
    @Override // p1727n3.p1781e0.p1782a.AbstractC26153e
    /* renamed from: d */
    public void mo2674d(AbstractC26152d abstractC26152d) {
        Object[] objArr = this.f72910b;
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            Object obj = objArr[i];
            i++;
            if (obj == null) {
                abstractC26152d.mo2648y0(i);
            } else if (obj instanceof byte[]) {
                abstractC26152d.mo2649o0(i, (byte[]) obj);
            } else if (obj instanceof Float) {
                abstractC26152d.mo2652T0(i, ((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                abstractC26152d.mo2652T0(i, ((Double) obj).doubleValue());
            } else if (obj instanceof Long) {
                abstractC26152d.mo2650l0(i, ((Long) obj).longValue());
            } else if (obj instanceof Integer) {
                abstractC26152d.mo2650l0(i, ((Integer) obj).intValue());
            } else if (obj instanceof Short) {
                abstractC26152d.mo2650l0(i, ((Short) obj).shortValue());
            } else if (obj instanceof Byte) {
                abstractC26152d.mo2650l0(i, ((Byte) obj).byteValue());
            } else if (obj instanceof String) {
                abstractC26152d.mo2651f0(i, (String) obj);
            } else if (!(obj instanceof Boolean)) {
                throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
            } else {
                abstractC26152d.mo2650l0(i, ((Boolean) obj).booleanValue() ? 1 : 0);
            }
        }
    }
}
