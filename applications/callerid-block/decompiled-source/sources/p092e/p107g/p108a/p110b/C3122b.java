package p092e.p107g.p108a.p110b;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.TypedValue;
import com.callerid.block.R$attr;
/* renamed from: e.g.a.b.b */
/* loaded from: classes2-dex2jar.jar:e/g/a/b/b.class */
public class C3122b {

    /* renamed from: a */
    private static TypedValue f12932a;

    @TargetApi(21)
    /* renamed from: a */
    public static int m85a(Context context, int i) {
        return m80f(context, Build.VERSION.SDK_INT >= 21 ? 16843829 : R$attr.colorAccent, i);
    }

    @TargetApi(21)
    /* renamed from: b */
    public static int m84b(Context context, int i) {
        return m80f(context, Build.VERSION.SDK_INT >= 21 ? 16843818 : R$attr.colorControlActivated, i);
    }

    @TargetApi(21)
    /* renamed from: c */
    public static int m83c(Context context, int i) {
        return m80f(context, Build.VERSION.SDK_INT >= 21 ? 16843820 : R$attr.colorControlHighlight, i);
    }

    @TargetApi(21)
    /* renamed from: d */
    public static int m82d(Context context, int i) {
        return m80f(context, Build.VERSION.SDK_INT >= 21 ? 16843817 : R$attr.colorControlNormal, i);
    }

    /* renamed from: e */
    public static int m81e(Context context, int i) {
        return (int) (TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    /* renamed from: f */
    private static int m80f(Context context, int i, int i2) {
        if (f12932a == null) {
            f12932a = new TypedValue();
        }
        try {
            Resources.Theme theme = context.getTheme();
            if (theme != null && theme.resolveAttribute(i, f12932a, true)) {
                TypedValue typedValue = f12932a;
                int i3 = typedValue.type;
                if (i3 >= 16 && i3 <= 31) {
                    return typedValue.data;
                }
                if (i3 == 3) {
                    return context.getResources().getColor(f12932a.resourceId);
                }
            }
        } catch (Exception e) {
        }
        return i2;
    }

    /* renamed from: g */
    public static int m79g(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue peekValue = typedArray.peekValue(i);
        return peekValue == null ? 0 : peekValue.type;
    }

    /* renamed from: h */
    public static int m78h(Context context, int i) {
        return m80f(context, 16842836, i);
    }
}
