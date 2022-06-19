package p020b.p070r.p071a;
/* renamed from: b.r.a.a */
/* loaded from: classes-dex2jar.jar:b/r/a/a.class */
public final class C1771a implements AbstractC1779e {

    /* renamed from: d */
    private final String f6607d;

    /* renamed from: e */
    private final Object[] f6608e;

    public C1771a(String str) {
        this(str, null);
    }

    public C1771a(String str, Object[] objArr) {
        this.f6607d = str;
        this.f6608e = objArr;
    }

    /* renamed from: b */
    private static void m28935b(AbstractC1778d abstractC1778d, int i, Object obj) {
        if (obj == null) {
            abstractC1778d.mo28899T(i);
        } else if (obj instanceof byte[]) {
            abstractC1778d.mo28900J(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            abstractC1778d.mo28897v(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            abstractC1778d.mo28897v(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            abstractC1778d.mo28901F(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            abstractC1778d.mo28901F(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            abstractC1778d.mo28901F(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            abstractC1778d.mo28901F(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            abstractC1778d.mo28898o(i, (String) obj);
        } else if (obj instanceof Boolean) {
            abstractC1778d.mo28901F(i, (((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    /* renamed from: c */
    public static void m28934c(AbstractC1778d abstractC1778d, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            i++;
            m28935b(abstractC1778d, i, objArr[i]);
        }
    }

    @Override // p020b.p070r.p071a.AbstractC1779e
    /* renamed from: a */
    public String mo28921a() {
        return this.f6607d;
    }

    @Override // p020b.p070r.p071a.AbstractC1779e
    /* renamed from: e */
    public void mo28920e(AbstractC1778d abstractC1778d) {
        m28934c(abstractC1778d, this.f6608e);
    }
}
