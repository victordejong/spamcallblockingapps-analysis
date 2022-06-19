package p164m1;

import android.animation.TypeEvaluator;
import androidx.recyclerview.widget.C0608b;
/* renamed from: m1.d */
/* loaded from: classes-dex2jar.jar:m1/d.class */
public class C3622d implements TypeEvaluator {

    /* renamed from: a */
    public static final C3622d f11831a = new C3622d();

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
        float m7621n = C0608b.m7621n(f6, f2, f, f2);
        float m7621n2 = C0608b.m7621n(pow4, pow, f, pow);
        float m7621n3 = C0608b.m7621n(pow5, pow2, f, pow2);
        float m7621n4 = C0608b.m7621n(pow6, pow3, f, pow3);
        float pow7 = (float) Math.pow(m7621n2, 0.45454545454545453d);
        float pow8 = (float) Math.pow(m7621n3, 0.45454545454545453d);
        float pow9 = (float) Math.pow(m7621n4, 0.45454545454545453d);
        int round = Math.round(m7621n * 255.0f);
        return Integer.valueOf(Math.round(pow9 * 255.0f) | (Math.round(pow7 * 255.0f) << 16) | (round << 24) | (Math.round(pow8 * 255.0f) << 8));
    }
}
