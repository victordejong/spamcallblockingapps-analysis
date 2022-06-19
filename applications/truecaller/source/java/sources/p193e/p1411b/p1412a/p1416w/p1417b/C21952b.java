package p193e.p1411b.p1412a.p1416w.p1417b;

import android.graphics.Path;
import android.graphics.PathMeasure;
import java.util.ArrayList;
import java.util.List;
import p193e.p1411b.p1412a.p1414b0.C21905e;
/* renamed from: e.b.a.w.b.b */
/* loaded from: classes-dex2jar.jar:e/b/a/w/b/b.class */
public class C21952b {

    /* renamed from: a */
    public List<C21958s> f60945a = new ArrayList();

    /* renamed from: a */
    public void m8873a(Path path) {
        for (int size = this.f60945a.size() - 1; size >= 0; size--) {
            C21958s c21958s = this.f60945a.get(size);
            PathMeasure pathMeasure = C21905e.f60795a;
            if (c21958s != null && !c21958s.f60946a) {
                C21905e.m8920a(path, c21958s.f60949d.j() / 100.0f, c21958s.f60950e.j() / 100.0f, c21958s.f60951f.j() / 360.0f);
            }
        }
    }
}
