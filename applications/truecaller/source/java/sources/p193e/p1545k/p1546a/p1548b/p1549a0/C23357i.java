package p193e.p1545k.p1546a.p1548b.p1549a0;

import p193e.p1545k.p1546a.p1548b.EnumC23386r;
import p193e.p1545k.p1546a.p1548b.p1549a0.AbstractC23356h;
/* renamed from: e.k.a.b.a0.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/i.class */
public final class C23357i<F extends AbstractC23356h> {

    /* renamed from: a */
    public int f64582a;

    public C23357i(int i) {
        this.f64582a = i;
    }

    /* renamed from: a */
    public static <F extends AbstractC23356h> C23357i<F> m7243a(F[] fArr) {
        int i = 0;
        if (fArr.length <= 31) {
            int length = fArr.length;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    return new C23357i<>(i3);
                }
                F f = fArr[i];
                int i4 = i3;
                if (f.mo7192c()) {
                    i4 = i3 | f.mo7193a();
                }
                i++;
                i2 = i4;
            }
        } else {
            throw new IllegalArgumentException(String.format("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", fArr[0].getClass().getName(), Integer.valueOf(fArr.length)));
        }
    }

    /* renamed from: b */
    public C23357i<F> m7242b(F f) {
        int i = this.f64582a;
        int i2 = ((EnumC23386r) f).f64724b | i;
        return i2 == i ? this : new C23357i<>(i2);
    }
}
