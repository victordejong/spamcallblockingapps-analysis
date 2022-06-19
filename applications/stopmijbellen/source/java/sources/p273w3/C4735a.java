package p273w3;
/* renamed from: w3.a */
/* loaded from: classes-dex2jar.jar:w3/a.class */
public class C4735a {
    /* renamed from: a */
    public static float m536a(String[] strArr, int i) {
        float parseFloat = Float.parseFloat(strArr[i]);
        if (parseFloat < 0.0f || parseFloat > 1.0f) {
            throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
        }
        return parseFloat;
    }

    /* renamed from: b */
    public static boolean m535b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("(");
        return str.startsWith(sb.toString()) && str.endsWith(")");
    }
}
