package androidx.constraintlayout.motion.widget;

import java.util.Arrays;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.motion.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e.class */
public class C0178e {

    /* renamed from: a */
    HashMap<Object, HashMap<String, float[]>> f844a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public float m14273a(Object obj, String str, int i) {
        if (!this.f844a.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> hashMap = this.f844a.get(obj);
        if (!hashMap.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = hashMap.get(str);
        if (fArr.length > i) {
            return fArr[i];
        }
        return Float.NaN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m14272b(Object obj, String str, int i, float f) {
        HashMap<String, float[]> hashMap;
        if (!this.f844a.containsKey(obj)) {
            HashMap<String, float[]> hashMap2 = new HashMap<>();
            float[] fArr = new float[i + 1];
            fArr[i] = f;
            hashMap2.put(str, fArr);
            hashMap = hashMap2;
        } else {
            HashMap<String, float[]> hashMap3 = this.f844a.get(obj);
            if (!hashMap3.containsKey(str)) {
                float[] fArr2 = new float[i + 1];
                fArr2[i] = f;
                hashMap3.put(str, fArr2);
                hashMap = hashMap3;
            } else {
                float[] fArr3 = hashMap3.get(str);
                float[] fArr4 = fArr3;
                if (fArr3.length <= i) {
                    fArr4 = Arrays.copyOf(fArr3, i + 1);
                }
                fArr4[i] = f;
                hashMap3.put(str, fArr4);
                return;
            }
        }
        this.f844a.put(obj, hashMap);
    }
}
