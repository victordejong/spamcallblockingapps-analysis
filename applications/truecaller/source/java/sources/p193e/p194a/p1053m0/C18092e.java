package p193e.p194a.p1053m0;
/* renamed from: e.a.m0.e */
/* loaded from: classes8-dex2jar.jar:e/a/m0/e.class */
public final class C18092e {
    /* renamed from: a */
    public static final String m15494a(int i) {
        String str;
        if (i == 2) {
            str = "NON_SPAM";
        } else if (i == 3) {
            str = "SPAM";
        } else if (i != 4) {
            throw new IllegalArgumentException("Cant convert types other than MessageCategory");
        } else {
            str = "PROMOTIONAL";
        }
        return str;
    }
}
