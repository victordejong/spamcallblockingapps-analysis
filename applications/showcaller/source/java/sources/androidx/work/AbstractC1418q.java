package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.impl.C1289j;
import java.util.Collections;
import java.util.List;
@SuppressLint({"AddedAbstractMethod"})
/* renamed from: androidx.work.q */
/* loaded from: classes-dex2jar.jar:androidx/work/q.class */
public abstract class AbstractC1418q {
    /* renamed from: d */
    public static AbstractC1418q m30143d(Context context) {
        return C1289j.m30392k(context);
    }

    /* renamed from: e */
    public static void m30142e(Context context, C1230a c1230a) {
        C1289j.m30398e(context, c1230a);
    }

    /* renamed from: a */
    public abstract AbstractC1408l mo30146a(String str);

    /* renamed from: b */
    public final AbstractC1408l m30145b(AbstractC1419r abstractC1419r) {
        return mo30144c(Collections.singletonList(abstractC1419r));
    }

    /* renamed from: c */
    public abstract AbstractC1408l mo30144c(List<? extends AbstractC1419r> list);
}
