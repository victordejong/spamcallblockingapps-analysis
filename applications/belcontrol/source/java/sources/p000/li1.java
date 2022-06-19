package p000;
/* renamed from: li1 */
/* loaded from: classes3-dex2jar.jar:li1.class */
public class li1 implements pi1<Integer> {
    /* renamed from: a */
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        return Integer.valueOf((int) (intValue + (f * (num2.intValue() - intValue))));
    }
}
