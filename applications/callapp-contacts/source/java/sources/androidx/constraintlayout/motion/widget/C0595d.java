package androidx.constraintlayout.motion.widget;

import java.util.HashMap;
/* renamed from: androidx.constraintlayout.motion.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/d.class */
public final class C0595d {

    /* renamed from: a */
    HashMap<Object, HashMap<String, float[]>> f2579a = new HashMap<>();

    /* renamed from: a */
    public final float m44948a(Object obj, String str) {
        if (!this.f2579a.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> hashMap = this.f2579a.get(obj);
        if (!hashMap.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = hashMap.get(str);
        if (fArr.length <= 0) {
            return Float.NaN;
        }
        return fArr[0];
    }
}
