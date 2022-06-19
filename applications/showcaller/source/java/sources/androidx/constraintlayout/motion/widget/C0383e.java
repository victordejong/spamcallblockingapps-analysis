package androidx.constraintlayout.motion.widget;

import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.motion.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e.class */
public class C0383e {

    /* renamed from: a */
    HashMap<Object, HashMap<String, float[]>> f1699a = new HashMap<>();

    /* renamed from: a */
    public float m34455a(Object obj, String str, int i) {
        if (!this.f1699a.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> hashMap = this.f1699a.get(obj);
        if (!hashMap.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = hashMap.get(str);
        if (fArr.length <= i) {
            return Float.NaN;
        }
        return fArr[i];
    }

    /* renamed from: b */
    public void m34454b(Object obj, String str, int i, float f) {
        if (!this.f1699a.containsKey(obj)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            float[] fArr = new float[i + 1];
            fArr[i] = f;
            hashMap.put(str, fArr);
            this.f1699a.put(obj, hashMap);
            return;
        }
        HashMap<String, float[]> hashMap2 = this.f1699a.get(obj);
        if (!hashMap2.containsKey(str)) {
            float[] fArr2 = new float[i + 1];
            fArr2[i] = f;
            hashMap2.put(str, fArr2);
            this.f1699a.put(obj, hashMap2);
            return;
        }
        float[] fArr3 = hashMap2.get(str);
        float[] fArr4 = fArr3;
        if (fArr3.length <= i) {
            fArr4 = Arrays.copyOf(fArr3, i + 1);
        }
        fArr4[i] = f;
        hashMap2.put(str, fArr4);
    }
}
