package p1727n3.p1795i.p1796a.p1798b;

import java.util.HashMap;
/* renamed from: n3.i.a.b.d */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/d.class */
public class C26283d {

    /* renamed from: a */
    public HashMap<Object, HashMap<String, float[]>> f73331a = new HashMap<>();

    /* renamed from: a */
    public float m2217a(Object obj, String str, int i) {
        if (!this.f73331a.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> hashMap = this.f73331a.get(obj);
        if (!hashMap.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = hashMap.get(str);
        if (fArr.length <= i) {
            return Float.NaN;
        }
        return fArr[i];
    }
}
