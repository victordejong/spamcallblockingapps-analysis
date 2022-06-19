package p1727n3.p1849n;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
/* renamed from: n3.n.g */
/* loaded from: classes-dex2jar.jar:n3/n/g.class */
public class C26866g {

    /* renamed from: a */
    public static AbstractC26863d f75137a = new C26864e();

    /* renamed from: a */
    public static <T extends ViewDataBinding> T m1252a(AbstractC26865f abstractC26865f, View view, int i) {
        return (T) f75137a.getDataBinder(abstractC26865f, view, i);
    }

    /* renamed from: b */
    public static <T extends ViewDataBinding> T m1251b(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) m1250c(layoutInflater, i, viewGroup, z, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.databinding.ViewDataBinding] */
    /* renamed from: c */
    public static <T extends ViewDataBinding> T m1250c(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, AbstractC26865f abstractC26865f) {
        T t;
        boolean z2 = viewGroup != null && z;
        int childCount = z2 ? viewGroup.getChildCount() : 0;
        View inflate = layoutInflater.inflate(i, viewGroup, z);
        if (z2) {
            int childCount2 = viewGroup.getChildCount();
            int i2 = childCount2 - childCount;
            if (i2 == 1) {
                t = m1252a(abstractC26865f, viewGroup.getChildAt(childCount2 - 1), i);
            } else {
                View[] viewArr = new View[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    viewArr[i3] = viewGroup.getChildAt(i3 + childCount);
                }
                t = f75137a.getDataBinder(abstractC26865f, viewArr, i);
            }
            return t;
        }
        return (T) m1252a(abstractC26865f, inflate, i);
    }
}
