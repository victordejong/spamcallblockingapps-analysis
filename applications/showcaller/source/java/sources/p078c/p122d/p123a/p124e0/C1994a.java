package p078c.p122d.p123a.p124e0;

import p078c.p122d.p123a.p128i0.C2031c;
/* renamed from: c.d.a.e0.a */
/* loaded from: classes2-dex2jar.jar:c/d/a/e0/a.class */
public class C1994a implements C2031c.AbstractC2032a {
    @Override // p078c.p122d.p123a.p128i0.C2031c.AbstractC2032a
    /* renamed from: a */
    public int mo28257a(int i, String str, String str2, long j) {
        if (j < 1048576) {
            return 1;
        }
        if (j < 5242880) {
            return 2;
        }
        if (j < 52428800) {
            return 3;
        }
        return j < 104857600 ? 4 : 5;
    }
}
