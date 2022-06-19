package androidx.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.databinding.f */
/* loaded from: classes-dex2jar.jar:androidx/databinding/f.class */
public class C0651f {

    /* renamed from: a */
    private static AbstractC0648c f2126a = new C0649d();

    /* renamed from: b */
    private static AbstractC0650e f2127b = null;

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5845a(Activity activity, int i) {
        return (T) m5844a(activity, i, f2127b);
    }

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5844a(Activity activity, int i, AbstractC0650e abstractC0650e) {
        activity.setContentView(i);
        return (T) m5840a(abstractC0650e, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i);
    }

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5843a(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) m5842a(layoutInflater, i, viewGroup, z, f2127b);
    }

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5842a(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, AbstractC0650e abstractC0650e) {
        int i2 = 0;
        boolean z2 = viewGroup != null && z;
        if (z2) {
            i2 = viewGroup.getChildCount();
        }
        return z2 ? (T) m5840a(abstractC0650e, viewGroup, i2, i) : (T) m5841a(abstractC0650e, layoutInflater.inflate(i, viewGroup, z), i);
    }

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5841a(AbstractC0650e abstractC0650e, View view, int i) {
        return (T) f2126a.mo1797a(abstractC0650e, view, i);
    }

    /* renamed from: a */
    private static <T extends ViewDataBinding> T m5840a(AbstractC0650e abstractC0650e, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) m5841a(abstractC0650e, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) m5839a(abstractC0650e, viewArr, i2);
    }

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m5839a(AbstractC0650e abstractC0650e, View[] viewArr, int i) {
        return (T) f2126a.mo1795a(abstractC0650e, viewArr, i);
    }
}
