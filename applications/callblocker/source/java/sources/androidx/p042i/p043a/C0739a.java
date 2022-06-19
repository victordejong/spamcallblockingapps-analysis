package androidx.p042i.p043a;
/* renamed from: androidx.i.a.a */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a.class */
public final class C0739a implements AbstractC0756e {

    /* renamed from: a */
    private final String f2630a;

    /* renamed from: b */
    private final Object[] f2631b;

    public C0739a(String str) {
        this(str, null);
    }

    public C0739a(String str, Object[] objArr) {
        this.f2630a = str;
        this.f2631b = objArr;
    }

    /* renamed from: a */
    private static void m19532a(AbstractC0755d abstractC0755d, int i, Object obj) {
        if (obj == null) {
            abstractC0755d.mo18257a(i);
        } else if (obj instanceof byte[]) {
            abstractC0755d.mo18253a(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            abstractC0755d.mo18256a(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            abstractC0755d.mo18256a(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            abstractC0755d.mo18255a(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            abstractC0755d.mo18255a(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            abstractC0755d.mo18255a(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            abstractC0755d.mo18255a(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            abstractC0755d.mo18254a(i, (String) obj);
        } else if (!(obj instanceof Boolean)) {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        } else {
            abstractC0755d.mo18255a(i, (((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
        }
    }

    /* renamed from: a */
    public static void m19531a(AbstractC0755d abstractC0755d, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            m19532a(abstractC0755d, i + 1, objArr[i]);
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0756e
    /* renamed from: a */
    public void mo18252a(AbstractC0755d abstractC0755d) {
        m19531a(abstractC0755d, this.f2631b);
    }

    @Override // androidx.p042i.p043a.AbstractC0756e
    /* renamed from: b */
    public String mo18250b() {
        return this.f2630a;
    }
}
