package p020b.p074t.p075a.p076a;

import android.animation.TypeEvaluator;
/* renamed from: b.t.a.a.f */
/* loaded from: classes-dex2jar.jar:b/t/a/a/f.class */
public class C1801f implements TypeEvaluator {

    /* renamed from: a */
    private static final C1801f f6667a = new C1801f();

    /* renamed from: a */
    public static C1801f m28860a() {
        return f6667a;
    }

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
        float pow7 = (float) Math.pow(pow + ((pow4 - pow) * f), 0.45454545454545453d);
        float pow8 = (float) Math.pow(pow2 + ((pow5 - pow2) * f), 0.45454545454545453d);
        float pow9 = (float) Math.pow(pow3 + (f * (pow6 - pow3)), 0.45454545454545453d);
        return Integer.valueOf((Math.round(pow7 * 255.0f) << 16) | (Math.round((f2 + ((f6 - f2) * f)) * 255.0f) << 24) | (Math.round(pow8 * 255.0f) << 8) | Math.round(pow9 * 255.0f));
    }
}
