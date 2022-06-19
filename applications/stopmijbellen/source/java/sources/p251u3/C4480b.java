package p251u3;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import com.google.android.material.floatingactionbutton.C1782d;
/* renamed from: u3.b */
/* loaded from: classes-dex2jar.jar:u3/b.class */
public class C4480b implements TypeEvaluator<Float> {

    /* renamed from: a */
    public FloatEvaluator f13882a = new FloatEvaluator();

    public C4480b(C1782d c1782d) {
    }

    @Override // android.animation.TypeEvaluator
    public Float evaluate(float f, Float f2, Float f3) {
        float floatValue = this.f13882a.evaluate(f, (Number) f2, (Number) f3).floatValue();
        float f4 = floatValue;
        if (floatValue < 0.1f) {
            f4 = 0.0f;
        }
        return Float.valueOf(f4);
    }
}
