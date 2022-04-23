package androidx.constraintlayout.motion.widget;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    HashMap<Object, HashMap<String, float[]>> f1497a = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float a(Object obj, String str) {
        if (!this.f1497a.containsKey(obj)) {
            return Float.NaN;
        }
        HashMap<String, float[]> hashMap = this.f1497a.get(obj);
        if (!hashMap.containsKey(str)) {
            return Float.NaN;
        }
        float[] fArr = hashMap.get(str);
        if (fArr.length > 0) {
            return fArr[0];
        }
        return Float.NaN;
    }
}
