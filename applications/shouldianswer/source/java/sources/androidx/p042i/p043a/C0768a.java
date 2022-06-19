package androidx.p042i.p043a;
/* renamed from: androidx.i.a.a */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a.class */
public final class C0768a implements AbstractC0785e {

    /* renamed from: a */
    private final String f2529a;

    /* renamed from: b */
    private final Object[] f2530b;

    public C0768a(String str) {
        this(str, null);
    }

    public C0768a(String str, Object[] objArr) {
        this.f2529a = str;
        this.f2530b = objArr;
    }

    /* renamed from: a */
    private static void m5379a(AbstractC0784d abstractC0784d, int i, Object obj) {
        if (obj == null) {
            abstractC0784d.mo4413a(i);
        } else if (obj instanceof byte[]) {
            abstractC0784d.mo4409a(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            abstractC0784d.mo4412a(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            abstractC0784d.mo4412a(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            abstractC0784d.mo4411a(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            abstractC0784d.mo4411a(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            abstractC0784d.mo4411a(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            abstractC0784d.mo4411a(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            abstractC0784d.mo4410a(i, (String) obj);
        } else if (obj instanceof Boolean) {
            abstractC0784d.mo4411a(i, (((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    /* renamed from: a */
    public static void m5378a(AbstractC0784d abstractC0784d, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            i++;
            m5379a(abstractC0784d, i, objArr[i]);
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0785e
    /* renamed from: a */
    public void mo4408a(AbstractC0784d abstractC0784d) {
        m5378a(abstractC0784d, this.f2530b);
    }

    @Override // androidx.p042i.p043a.AbstractC0785e
    /* renamed from: b */
    public String mo4406b() {
        return this.f2529a;
    }
}
