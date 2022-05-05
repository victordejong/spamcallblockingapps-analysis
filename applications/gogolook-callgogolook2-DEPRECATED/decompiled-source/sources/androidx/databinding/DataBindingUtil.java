package androidx.databinding;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/DataBindingUtil.class */
public class DataBindingUtil {
    public static DataBinderMapper sMapper = new DataBinderMapperImpl();
    public static DataBindingComponent sDefaultComponent = null;

    @Nullable
    public static <T extends ViewDataBinding> T bind(@NonNull View view) {
        return (T) bind(view, sDefaultComponent);
    }

    @Nullable
    public static <T extends ViewDataBinding> T bind(@NonNull View view, DataBindingComponent dataBindingComponent) {
        T t = (T) getBinding(view);
        if (t != null) {
            return t;
        }
        Object tag = view.getTag();
        if (tag instanceof String) {
            int layoutId = sMapper.getLayoutId((String) tag);
            if (layoutId != 0) {
                return (T) sMapper.getDataBinder(dataBindingComponent, view, layoutId);
            }
            throw new IllegalArgumentException("View is not a binding layout. Tag: " + tag);
        }
        throw new IllegalArgumentException("View is not a binding layout");
    }

    public static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View view, int i) {
        return (T) sMapper.getDataBinder(dataBindingComponent, view, i);
    }

    public static <T extends ViewDataBinding> T bind(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        return (T) sMapper.getDataBinder(dataBindingComponent, viewArr, i);
    }

    public static <T extends ViewDataBinding> T bindToAddedViews(DataBindingComponent dataBindingComponent, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) bind(dataBindingComponent, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) bind(dataBindingComponent, viewArr, i2);
    }

    @Nullable
    public static String convertBrIdToString(int i) {
        return sMapper.convertBrIdToString(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r0 == (-1)) goto L_0x0054;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007b, code lost:
        if (r0.indexOf(47, r0 + 1) == (-1)) goto L_0x0054;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T extends androidx.databinding.ViewDataBinding> T findBinding(@androidx.annotation.NonNull android.view.View r5) {
        /*
        L_0x0000:
            r0 = r5
            if (r0 == 0) goto L_0x00a1
            r0 = r5
            androidx.databinding.ViewDataBinding r0 = androidx.databinding.ViewDataBinding.getBinding(r0)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x000f
            r0 = r6
            return r0
        L_0x000f:
            r0 = r5
            java.lang.Object r0 = r0.getTag()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L_0x0088
            r0 = r6
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r6
            java.lang.String r1 = "layout"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0088
            r0 = r6
            java.lang.String r1 = "_0"
            boolean r0 = r0.endsWith(r1)
            if (r0 == 0) goto L_0x0088
            r0 = r6
            r1 = 6
            char r0 = r0.charAt(r1)
            r7 = r0
            r0 = r6
            r1 = 47
            r2 = 7
            int r0 = r0.indexOf(r1, r2)
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 47
            if (r0 != r1) goto L_0x005a
            r0 = r9
            r10 = r0
            r0 = r8
            r1 = -1
            if (r0 != r1) goto L_0x0081
        L_0x0054:
            r0 = 1
            r10 = r0
            goto L_0x0081
        L_0x005a:
            r0 = r9
            r10 = r0
            r0 = r7
            r1 = 45
            if (r0 != r1) goto L_0x0081
            r0 = r9
            r10 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0081
            r0 = r9
            r10 = r0
            r0 = r6
            r1 = 47
            r2 = r8
            r3 = 1
            int r2 = r2 + r3
            int r0 = r0.indexOf(r1, r2)
            r1 = -1
            if (r0 != r1) goto L_0x0081
            goto L_0x0054
        L_0x0081:
            r0 = r10
            if (r0 == 0) goto L_0x0088
            r0 = 0
            return r0
        L_0x0088:
            r0 = r5
            android.view.ViewParent r0 = r0.getParent()
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.view.View
            if (r0 == 0) goto L_0x009c
            r0 = r5
            android.view.View r0 = (android.view.View) r0
            r5 = r0
            goto L_0x0000
        L_0x009c:
            r0 = 0
            r5 = r0
            goto L_0x0000
        L_0x00a1:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.DataBindingUtil.findBinding(android.view.View):androidx.databinding.ViewDataBinding");
    }

    @Nullable
    public static <T extends ViewDataBinding> T getBinding(@NonNull View view) {
        return (T) ViewDataBinding.getBinding(view);
    }

    @Nullable
    public static DataBindingComponent getDefaultComponent() {
        return sDefaultComponent;
    }

    public static <T extends ViewDataBinding> T inflate(@NonNull LayoutInflater layoutInflater, int i, @Nullable ViewGroup viewGroup, boolean z) {
        return (T) inflate(layoutInflater, i, viewGroup, z, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T inflate(@NonNull LayoutInflater layoutInflater, int i, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        int i2 = 0;
        boolean z2 = viewGroup != null && z;
        if (z2) {
            i2 = viewGroup.getChildCount();
        }
        return z2 ? (T) bindToAddedViews(dataBindingComponent, viewGroup, i2, i) : (T) bind(dataBindingComponent, layoutInflater.inflate(i, viewGroup, z), i);
    }

    public static <T extends ViewDataBinding> T setContentView(@NonNull Activity activity, int i) {
        return (T) setContentView(activity, i, sDefaultComponent);
    }

    public static <T extends ViewDataBinding> T setContentView(@NonNull Activity activity, int i, @Nullable DataBindingComponent dataBindingComponent) {
        activity.setContentView(i);
        return (T) bindToAddedViews(dataBindingComponent, (ViewGroup) activity.getWindow().getDecorView().findViewById(16908290), 0, i);
    }

    public static void setDefaultComponent(@Nullable DataBindingComponent dataBindingComponent) {
        sDefaultComponent = dataBindingComponent;
    }
}
