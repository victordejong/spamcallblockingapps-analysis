package p1727n3.p1834m0;

import android.content.Context;
import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import p1727n3.p1834m0.p1835c0.C26702l;
/* renamed from: n3.m0.y */
/* loaded from: classes-dex2jar.jar:n3/m0/y.class */
public abstract class AbstractC26857y {
    /* renamed from: k */
    public static AbstractC26857y m1277k(Context context) {
        return C26702l.m1431n(context);
    }

    /* renamed from: a */
    public final AbstractC26854w m1287a(String str, EnumC26832h enumC26832h, C26842r c26842r) {
        return mo1286b(str, enumC26832h, Collections.singletonList(c26842r));
    }

    /* renamed from: b */
    public abstract AbstractC26854w mo1286b(String str, EnumC26832h enumC26832h, List<C26842r> list);

    /* renamed from: c */
    public final AbstractC26854w m1285c(C26842r c26842r) {
        return mo1284d(Collections.singletonList(c26842r));
    }

    /* renamed from: d */
    public abstract AbstractC26854w mo1284d(List<C26842r> list);

    /* renamed from: e */
    public abstract AbstractC26844s mo1283e(String str);

    /* renamed from: f */
    public final AbstractC26844s m1282f(AbstractC26858z abstractC26858z) {
        return mo1281g(Collections.singletonList(abstractC26858z));
    }

    /* renamed from: g */
    public abstract AbstractC26844s mo1281g(List<? extends AbstractC26858z> list);

    /* renamed from: h */
    public abstract AbstractC26844s mo1280h(String str, EnumC26831g enumC26831g, C26851u c26851u);

    /* renamed from: i */
    public AbstractC26844s m1279i(String str, EnumC26832h enumC26832h, C26842r c26842r) {
        return mo1278j(str, enumC26832h, Collections.singletonList(c26842r));
    }

    /* renamed from: j */
    public abstract AbstractC26844s mo1278j(String str, EnumC26832h enumC26832h, List<C26842r> list);

    /* renamed from: l */
    public abstract LiveData<C26855x> mo1276l(UUID uuid);

    /* renamed from: m */
    public abstract LiveData<List<C26855x>> mo1275m(String str);
}
