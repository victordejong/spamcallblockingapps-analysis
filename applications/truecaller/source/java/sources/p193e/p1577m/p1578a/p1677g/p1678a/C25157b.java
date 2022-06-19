package p193e.p1577m.p1578a.p1677g.p1678a;

import android.animation.TypeEvaluator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.g.a.b */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/b.class */
public class C25157b implements TypeEvaluator<Integer> {

    /* renamed from: a */
    public static final C25157b f70402a = new C25157b();

    /* renamed from: a */
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        float f3 = ((intValue >> 16) & 255) / 255.0f;
        float f4 = ((intValue >> 8) & 255) / 255.0f;
        float f5 = (intValue & 255) / 255.0f;
        int intValue2 = num2.intValue();
        float f6 = ((intValue2 >> 24) & 255) / 255.0f;
        float f7 = ((intValue2 >> 16) & 255) / 255.0f;
        float f8 = ((intValue2 >> 8) & 255) / 255.0f;
        float f9 = (intValue2 & 255) / 255.0f;
        float pow = (float) Math.pow(f3, 2.2d);
        float pow2 = (float) Math.pow(f4, 2.2d);
        float pow3 = (float) Math.pow(f5, 2.2d);
        float pow4 = (float) Math.pow(f7, 2.2d);
        float pow5 = (float) Math.pow(f8, 2.2d);
        float pow6 = (float) Math.pow(f9, 2.2d);
        float m8646a = C22128a.m8646a(f6, f2, f, f2);
        float m8646a2 = C22128a.m8646a(pow4, pow, f, pow);
        float m8646a3 = C22128a.m8646a(pow5, pow2, f, pow2);
        float m8646a4 = C22128a.m8646a(pow6, pow3, f, pow3);
        float pow7 = (float) Math.pow(m8646a2, 0.45454545454545453d);
        float pow8 = (float) Math.pow(m8646a3, 0.45454545454545453d);
        float pow9 = (float) Math.pow(m8646a4, 0.45454545454545453d);
        int round = Math.round(m8646a * 255.0f);
        return Integer.valueOf(Math.round(pow9 * 255.0f) | (Math.round(pow7 * 255.0f) << 16) | (round << 24) | (Math.round(pow8 * 255.0f) << 8));
    }
}
