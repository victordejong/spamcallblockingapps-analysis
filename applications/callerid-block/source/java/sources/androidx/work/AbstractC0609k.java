package androidx.work;

import android.content.Context;
import androidx.work.impl.h;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.work.k */
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public abstract class AbstractC0609k {
    protected AbstractC0609k() {
    }

    /* renamed from: d */
    public static AbstractC0609k m11589d(Context context) {
        return h.j(context);
    }

    /* renamed from: e */
    public static void m11588e(Context context, C0545a c0545a) {
        h.e(context, c0545a);
    }

    /* renamed from: a */
    public abstract AbstractC0556h m11592a(String str);

    /* renamed from: b */
    public final AbstractC0556h m11591b(AbstractC0610l abstractC0610l) {
        return m11590c(Collections.singletonList(abstractC0610l));
    }

    /* renamed from: c */
    public abstract AbstractC0556h m11590c(List<? extends AbstractC0610l> list);
}
