package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.motion.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c.class */
public abstract class AbstractC0380c {

    /* renamed from: a */
    public static int f1675a = -1;

    /* renamed from: b */
    int f1676b;

    /* renamed from: c */
    int f1677c;

    /* renamed from: d */
    String f1678d = null;

    /* renamed from: e */
    protected int f1679e;

    /* renamed from: f */
    HashMap<String, ConstraintAttribute> f1680f;

    public AbstractC0380c() {
        int i = f1675a;
        this.f1676b = i;
        this.f1677c = i;
    }

    /* renamed from: a */
    public abstract void mo34359a(HashMap<String, AbstractC0419r> hashMap);

    /* renamed from: b */
    public abstract void mo34358b(HashSet<String> hashSet);

    /* renamed from: c */
    public abstract void mo34357c(Context context, AttributeSet attributeSet);

    /* renamed from: d */
    public boolean m34488d(String str) {
        String str2 = this.f1678d;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    /* renamed from: e */
    public void mo34382e(HashMap<String, Integer> hashMap) {
    }
}
