package p102g4;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import me.zhanghai.android.materialprogressbar.C3681R;
import p140k.C3298c;
/* renamed from: g4.a */
/* loaded from: classes-dex2jar.jar:g4/a.class */
public class C2811a {

    /* renamed from: a */
    public static final int[] f9550a = {16842752, C3681R.attr.theme};

    /* renamed from: b */
    public static final int[] f9551b = {2130969305};

    /* renamed from: a */
    public static Context m2970a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f9551b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z = (context instanceof C3298c) && ((C3298c) context).f11149a == resourceId;
        if (resourceId == 0 || z) {
            return context;
        }
        C3298c c3298c = new C3298c(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f9550a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c3298c.getTheme().applyStyle(resourceId2, true);
        }
        return c3298c;
    }
}
