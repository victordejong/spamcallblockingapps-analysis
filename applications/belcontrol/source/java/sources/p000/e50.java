package p000;

import android.content.Context;
import java.util.Collections;
import java.util.List;
/* renamed from: e50 */
/* loaded from: classes-dex2jar.jar:e50.class */
public abstract class e50 {
    /* renamed from: d */
    public static e50 m2216d(Context context) {
        return o50.j(context);
    }

    /* renamed from: e */
    public static void m2215e(Context context, r40 r40Var) {
        o50.e(context, r40Var);
    }

    /* renamed from: a */
    public abstract a50 m2219a(String str);

    /* renamed from: b */
    public final a50 m2218b(f50 f50Var) {
        return m2217c(Collections.singletonList(f50Var));
    }

    /* renamed from: c */
    public abstract a50 m2217c(List<? extends f50> list);
}
