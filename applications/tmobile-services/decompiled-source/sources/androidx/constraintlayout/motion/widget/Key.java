package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/Key.class */
public abstract class Key {

    /* renamed from: e */
    public static int f1667e = -1;

    /* renamed from: a */
    int f1668a;

    /* renamed from: b */
    int f1669b;

    /* renamed from: c */
    String f1670c = null;

    /* renamed from: d */
    HashMap<String, ConstraintAttribute> f1671d;

    public Key() {
        int i = f1667e;
        this.f1668a = i;
        this.f1669b = i;
    }

    /* renamed from: a */
    public abstract void mo20809a(HashMap<String, SplineSet> hashMap);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo20808b(HashSet<String> hashSet);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract void mo20807c(Context context, AttributeSet attributeSet);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m20938d(String str) {
        String str2 = this.f1670c;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    /* renamed from: e */
    public void mo20832e(HashMap<String, Integer> hashMap) {
    }
}
