package p193e.p194a.p1129p5;

import java.util.Objects;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.p5.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/e0.class */
public final /* synthetic */ class C19227e0 extends j implements l<String, Boolean> {
    public C19227e0(C19229f0 c19229f0) {
        super(1, c19229f0, C19229f0.class, "isPackageAvailable", "isPackageAvailable(Ljava/lang/String;)Z", 0);
    }

    /* renamed from: d */
    public Object m13817d(Object obj) {
        String str = (String) obj;
        s1.z.c.l.e(str, "p1");
        C19229f0 c19229f0 = (C19229f0) ((b) this).b;
        Objects.requireNonNull(c19229f0);
        boolean z = false;
        try {
            c19229f0.f53597d.getPackageManager().getPackageInfo(str, 0);
            z = true;
        } catch (Exception e) {
        }
        return Boolean.valueOf(z);
    }
}
