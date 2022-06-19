package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c.class */
public abstract class AbstractC0177c {

    /* renamed from: e */
    public static int f838e = -1;

    /* renamed from: a */
    int f839a;

    /* renamed from: b */
    int f840b;

    /* renamed from: c */
    String f841c = null;

    /* renamed from: d */
    HashMap<String, ConstraintAttribute> f842d;

    public AbstractC0177c() {
        int i = f838e;
        this.f839a = i;
        this.f840b = i;
    }

    /* renamed from: a */
    public abstract void m14279a(HashMap<String, AbstractC0192r> hashMap);

    /* renamed from: b */
    public abstract void m14278b(HashSet<String> hashSet);

    /* renamed from: c */
    public abstract void m14277c(Context context, AttributeSet attributeSet);

    /* renamed from: d */
    public boolean m14276d(String str) {
        String str2 = this.f841c;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    /* renamed from: e */
    public void m14275e(HashMap<String, Integer> hashMap) {
    }
}
