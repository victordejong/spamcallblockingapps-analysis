package androidx.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/DataBindingUtil.class */
public class DataBindingUtil {

    /* renamed from: a */
    private static DataBinderMapper f3517a = new DataBinderMapperImpl();

    /* renamed from: b */
    private static DataBindingComponent f3518b = null;

    private DataBindingUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T extends ViewDataBinding> T m18680a(DataBindingComponent dataBindingComponent, View view, int i) {
        return (T) f3517a.mo7660b(dataBindingComponent, view, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <T extends ViewDataBinding> T m18679b(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        return (T) f3517a.mo7659c(dataBindingComponent, viewArr, i);
    }

    /* renamed from: c */
    private static <T extends ViewDataBinding> T m18678c(DataBindingComponent dataBindingComponent, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) m18680a(dataBindingComponent, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) m18679b(dataBindingComponent, viewArr, i2);
    }

    @Nullable
    /* renamed from: d */
    public static DataBindingComponent m18677d() {
        return f3518b;
    }

    /* renamed from: e */
    public static <T extends ViewDataBinding> T m18676e(@NonNull LayoutInflater layoutInflater, int i, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        int i2 = 0;
        boolean z2 = viewGroup != null && z;
        if (z2) {
            i2 = viewGroup.getChildCount();
        }
        return z2 ? (T) m18678c(dataBindingComponent, viewGroup, i2, i) : (T) m18680a(dataBindingComponent, layoutInflater.inflate(i, viewGroup, z), i);
    }

    /* renamed from: f */
    public static <T extends ViewDataBinding> T m18675f(@NonNull Activity activity, int i) {
        return (T) m18674g(activity, i, f3518b);
    }

    /* renamed from: g */
    public static <T extends ViewDataBinding> T m18674g(@NonNull Activity activity, int i, @Nullable DataBindingComponent dataBindingComponent) {
        activity.setContentView(i);
        return (T) m18678c(dataBindingComponent, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i);
    }
}
