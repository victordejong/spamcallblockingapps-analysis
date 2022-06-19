package p000;
/* renamed from: ji1 */
/* loaded from: classes3-dex2jar.jar:ji1.class */
public class ji1 implements pi1<Number> {
    /* renamed from: a */
    public Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (f * (number2.floatValue() - floatValue)));
    }
}
