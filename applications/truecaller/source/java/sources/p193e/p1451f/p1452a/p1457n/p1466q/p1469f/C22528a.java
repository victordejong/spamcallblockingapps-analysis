package p193e.p1451f.p1452a.p1457n.p1466q.p1469f;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1741e.C25453c;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
/* renamed from: e.f.a.n.q.f.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/f/a.class */
public final class C22528a {

    /* renamed from: a */
    public static volatile boolean f62424a = true;

    /* renamed from: a */
    public static Drawable m8160a(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f62424a) {
                return C25440a.m3540a(theme != null ? new C25453c(context2, theme) : context2, i);
            }
        } catch (Resources.NotFoundException e) {
        } catch (IllegalStateException e2) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e2;
            }
            Object obj = C26467a.f74235a;
            return C26467a.C26470c.m1789b(context2, i);
        } catch (NoClassDefFoundError e3) {
            f62424a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        return resources.getDrawable(i, theme);
    }
}
