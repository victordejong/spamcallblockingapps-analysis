package p081h.p203i.p402h.p412o.p413b;
/* renamed from: h.i.h.o.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/b/b.class */
public enum EnumC10600b {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);
    

    /* renamed from: a */
    public final int[] f24135a;

    /* renamed from: b */
    public final int f24136b;

    EnumC10600b(int[] iArr, int i) {
        this.f24135a = iArr;
        this.f24136b = i;
    }

    /* renamed from: a */
    public int m11286a() {
        return this.f24136b;
    }

    /* renamed from: a */
    public int m11285a(C10601c cVar) {
        int c = cVar.m11280c();
        return this.f24135a[c <= 9 ? (char) 0 : c <= 26 ? (char) 1 : (char) 2];
    }
}
