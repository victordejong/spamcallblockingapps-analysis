package p000;
/* renamed from: fa */
/* loaded from: classes-dex2jar.jar:fa.class */
public final class C1406fa {

    /* renamed from: a */
    public static final AbstractC1356ea f6550a = new e((AbstractC1407c) null, false);

    /* renamed from: b */
    public static final AbstractC1356ea f6551b = new e((AbstractC1407c) null, true);

    /* renamed from: c */
    public static final AbstractC1356ea f6552c;

    /* renamed from: d */
    public static final AbstractC1356ea f6553d;

    /* renamed from: fa$c */
    /* loaded from: classes-dex2jar.jar:fa$c.class */
    public interface AbstractC1407c {
        /* renamed from: a */
        int m1910a(CharSequence charSequence, int i, int i2);
    }

    static {
        b bVar = b.a;
        f6552c = new e(bVar, false);
        f6553d = new e(bVar, true);
        a aVar = a.b;
        f fVar = f.b;
    }

    /* renamed from: a */
    public static int m1912a(int i) {
        if (i != 0) {
            return (i == 1 || i == 2) ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    public static int m1911b(int i) {
        if (i != 0) {
            if (i == 1 || i == 2) {
                return 0;
            }
            switch (i) {
                case 14:
                case 15:
                    return 1;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
