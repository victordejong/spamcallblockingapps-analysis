package com.google.android.material.p156n;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
/* renamed from: com.google.android.material.n.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/n/c.class */
public class C4718c {
    /* renamed from: a */
    public static int m2783a(Context context, TypedArray typedArray, int i, int i2) {
        int i3;
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            i3 = typedArray.getDimensionPixelSize(i, i2);
        } else {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
            i3 = obtainStyledAttributes.getDimensionPixelSize(0, i2);
            obtainStyledAttributes.recycle();
        }
        return i3;
    }

    /* renamed from: a */
    public static int m2781a(TypedArray typedArray, int i, int i2) {
        if (!typedArray.hasValue(i)) {
            i = i2;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        if (r4 != null) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m2784a(android.content.Context r4, android.content.res.TypedArray r5, int r6) {
        /*
            r0 = r5
            r1 = r6
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L1f
            r0 = r5
            r1 = r6
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1f
            r0 = r4
            r1 = r7
            android.content.res.ColorStateList r0 = androidx.appcompat.p008a.p009a.C0094a.m22277a(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
        L1d:
            r0 = r4
            return r0
        L1f:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 15
            if (r0 > r1) goto L3b
            r0 = r5
            r1 = r6
            r2 = -1
            int r0 = r0.getColor(r1, r2)
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L3b
            r0 = r7
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r4 = r0
            goto L1d
        L3b:
            r0 = r5
            r1 = r6
            android.content.res.ColorStateList r0 = r0.getColorStateList(r1)
            r4 = r0
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.p156n.C4718c.m2784a(android.content.Context, android.content.res.TypedArray, int):android.content.res.ColorStateList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        if (r4 != null) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m2782a(android.content.Context r4, androidx.appcompat.widget.C0317ap r5, int r6) {
        /*
            r0 = r5
            r1 = r6
            boolean r0 = r0.m21421g(r1)
            if (r0 == 0) goto L1f
            r0 = r5
            r1 = r6
            r2 = 0
            int r0 = r0.m21420g(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1f
            r0 = r4
            r1 = r7
            android.content.res.ColorStateList r0 = androidx.appcompat.p008a.p009a.C0094a.m22277a(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
        L1d:
            r0 = r4
            return r0
        L1f:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 15
            if (r0 > r1) goto L3b
            r0 = r5
            r1 = r6
            r2 = -1
            int r0 = r0.m21430b(r1, r2)
            r7 = r0
            r0 = r7
            r1 = -1
            if (r0 == r1) goto L3b
            r0 = r7
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r4 = r0
            goto L1d
        L3b:
            r0 = r5
            r1 = r6
            android.content.res.ColorStateList r0 = r0.m21425e(r1)
            r4 = r0
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.p156n.C4718c.m2782a(android.content.Context, androidx.appcompat.widget.ap, int):android.content.res.ColorStateList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
        if (r4 != null) goto L8;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.drawable.Drawable m2780b(android.content.Context r4, android.content.res.TypedArray r5, int r6) {
        /*
            r0 = r5
            r1 = r6
            boolean r0 = r0.hasValue(r1)
            if (r0 == 0) goto L1f
            r0 = r5
            r1 = r6
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1f
            r0 = r4
            r1 = r7
            android.graphics.drawable.Drawable r0 = androidx.appcompat.p008a.p009a.C0094a.m22275b(r0, r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1f
        L1d:
            r0 = r4
            return r0
        L1f:
            r0 = r5
            r1 = r6
            android.graphics.drawable.Drawable r0 = r0.getDrawable(r1)
            r4 = r0
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.p156n.C4718c.m2780b(android.content.Context, android.content.res.TypedArray, int):android.graphics.drawable.Drawable");
    }

    /* renamed from: c */
    public static C4719d m2779c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) ? null : new C4719d(context, resourceId);
    }
}
