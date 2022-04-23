package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.a;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    public static int f1492a = -1;

    /* renamed from: b  reason: collision with root package name */
    int f1493b;

    /* renamed from: c  reason: collision with root package name */
    int f1494c;

    /* renamed from: d  reason: collision with root package name */
    String f1495d = null;
    protected int e;
    HashMap<String, a> f;

    public b() {
        int i = f1492a;
        this.f1493b = i;
        this.f1494c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Context context, AttributeSet attributeSet);

    public abstract void a(HashMap<String, q> hashMap);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(HashSet<String> hashSet);

    public void b(HashMap<String, Integer> hashMap) {
    }
}
