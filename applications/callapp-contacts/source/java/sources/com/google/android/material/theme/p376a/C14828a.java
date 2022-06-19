package com.google.android.material.theme.p376a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.view.C0244d;
import com.google.android.material.C14376a;
/* renamed from: com.google.android.material.theme.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/theme/a/a.class */
public final class C14828a {

    /* renamed from: a */
    private static final int[] f54158a = {16842752, C14376a.C14378b.theme};

    /* renamed from: b */
    private static final int[] f54159b = {C14376a.C14378b.materialThemeOverlay};

    private C14828a() {
    }

    /* renamed from: a */
    public static Context m9923a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f54159b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z = (context instanceof C0244d) && ((C0244d) context).f693a == resourceId;
        if (resourceId == 0 || z) {
            return context;
        }
        C0244d c0244d = new C0244d(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f54158a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
            resourceId2 = resourceId3;
        }
        if (resourceId2 != 0) {
            c0244d.getTheme().applyStyle(resourceId2, true);
        }
        return c0244d;
    }
}
