package p092e.p096e.p097a.p098d0;

import p092e.p096e.p097a.p102h0.C3056c;
/* renamed from: e.e.a.d0.a */
/* loaded from: classes2-dex2jar.jar:e/e/a/d0/a.class */
public class C3019a implements C3056c.AbstractC3057a {
    @Override // p092e.p096e.p097a.p102h0.C3056c.AbstractC3057a
    /* renamed from: a */
    public int mo421a(int i, String str, String str2, long j) {
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
