package androidx.sqlite.db;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a.class */
public final class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final String f5628a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f5629b;

    public a(String str) {
        this(str, null);
    }

    public a(String str, Object[] objArr) {
        this.f5628a = str;
        this.f5629b = objArr;
    }

    @Override // androidx.sqlite.db.d
    public final void a(c cVar) {
        Object[] objArr = this.f5629b;
        if (objArr != null) {
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                i++;
                if (obj == null) {
                    cVar.a(i);
                } else if (obj instanceof byte[]) {
                    cVar.a(i, (byte[]) obj);
                } else if (obj instanceof Float) {
                    cVar.a(i, ((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    cVar.a(i, ((Double) obj).doubleValue());
                } else if (obj instanceof Long) {
                    cVar.a(i, ((Long) obj).longValue());
                } else if (obj instanceof Integer) {
                    cVar.a(i, ((Integer) obj).intValue());
                } else if (obj instanceof Short) {
                    cVar.a(i, ((Short) obj).shortValue());
                } else if (obj instanceof Byte) {
                    cVar.a(i, ((Byte) obj).byteValue());
                } else if (obj instanceof String) {
                    cVar.a(i, (String) obj);
                } else if (obj instanceof Boolean) {
                    cVar.a(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
                } else {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
                }
            }
        }
    }

    @Override // androidx.sqlite.db.d
    public final String b() {
        return this.f5628a;
    }
}
