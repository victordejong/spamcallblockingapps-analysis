package androidx.work;

import android.content.Context;
import androidx.work.impl.C3068j;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: androidx.work.u */
/* loaded from: classes-dex2jar.jar:androidx/work/u.class */
public abstract class AbstractC3165u {
    /* renamed from: a */
    public static AbstractC3165u m39267a(Context context) {
        return C3068j.m39359b(context);
    }

    /* renamed from: a */
    public static void m39266a(Context context, Configuration configuration) {
        C3068j.m39358b(context, configuration);
    }

    /* renamed from: a */
    public abstract AbstractC3150n mo39268a();

    /* renamed from: a */
    public final AbstractC3150n m39265a(AbstractC3166v abstractC3166v) {
        return mo39263a(Collections.singletonList(abstractC3166v));
    }

    /* renamed from: a */
    public abstract AbstractC3150n mo39264a(String str);

    /* renamed from: a */
    public abstract AbstractC3150n mo39263a(List<? extends AbstractC3166v> list);

    /* renamed from: a */
    public abstract AbstractC3150n mo39262a(UUID uuid);

    /* renamed from: b */
    public abstract AbstractFutureC15579a<List<C3163t>> mo39261b(String str);
}
