package androidx.sqlite.p082db;
/* renamed from: androidx.sqlite.db.a */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a.class */
public final class C2783a implements AbstractC2794d {

    /* renamed from: a */
    private final String f10532a;

    /* renamed from: b */
    private final Object[] f10533b;

    public C2783a(String str) {
        this(str, null);
    }

    public C2783a(String str, Object[] objArr) {
        this.f10532a = str;
        this.f10533b = objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v52 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.sqlite.db.c] */
    @Override // androidx.sqlite.p082db.AbstractC2794d
    /* renamed from: a */
    public final void mo39884a(AbstractC2793c abstractC2793c) {
        Object[] objArr = this.f10533b;
        if (objArr != null) {
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                i++;
                if (obj == null) {
                    abstractC2793c.mo39889a(i);
                } else if (obj instanceof byte[]) {
                    abstractC2793c.mo39885a(i, (byte[]) obj);
                } else if (obj instanceof Float) {
                    abstractC2793c.mo39888a(i, ((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    abstractC2793c.mo39888a(i, ((Double) obj).doubleValue());
                } else if (obj instanceof Long) {
                    abstractC2793c.mo39887a(i, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    abstractC2793c.mo39887a(i, ((Integer) obj).intValue());
                } else if (obj instanceof Short) {
                    abstractC2793c.mo39887a(i, ((Short) obj).shortValue());
                } else if (obj instanceof Byte) {
                    abstractC2793c.mo39887a(i, ((Byte) obj).byteValue());
                } else if (obj instanceof String) {
                    abstractC2793c.mo39886a(i, (String) obj);
                } else if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
                } else {
                    abstractC2793c.mo39887a(i, ((Boolean) obj).booleanValue() ? 1 : 0);
                }
            }
        }
    }

    @Override // androidx.sqlite.p082db.AbstractC2794d
    /* renamed from: b */
    public final String mo39883b() {
        return this.f10532a;
    }
}
