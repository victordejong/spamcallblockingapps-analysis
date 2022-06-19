package p1727n3.p1792h0.p1793a.p1794a;

import android.animation.TypeEvaluator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.h0.a.a.e */
/* loaded from: classes-dex2jar.jar:n3/h0/a/a/e.class */
public class C26259e implements TypeEvaluator {

    /* renamed from: a */
    public static final C26259e f73199a = new C26259e();

    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f2 = ((intValue >> 24) & 255) / 255.0f;
        float f3 = ((intValue >> 16) & 255) / 255.0f;
        float f4 = ((intValue >> 8) & 255) / 255.0f;
        float f5 = (intValue & 255) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
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
