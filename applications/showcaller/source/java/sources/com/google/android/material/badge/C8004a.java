package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ParcelableSparseArray;
/* renamed from: com.google.android.material.badge.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/badge/a.class */
public class C8004a {

    /* renamed from: a */
    public static final boolean f36128a;

    static {
        f36128a = Build.VERSION.SDK_INT < 18;
    }

    /* renamed from: a */
    public static void m5605a(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        m5601e(badgeDrawable, view, frameLayout);
        if (badgeDrawable.m5646i() != null) {
            badgeDrawable.m5646i().setForeground(badgeDrawable);
        } else if (f36128a) {
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        } else {
            view.getOverlay().add(badgeDrawable);
        }
    }

    /* renamed from: b */
    public static SparseArray<BadgeDrawable> m5604b(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeDrawable.SavedState savedState = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i);
            if (savedState == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(keyAt, BadgeDrawable.m5650e(context, savedState));
        }
        return sparseArray;
    }

    /* renamed from: c */
    public static ParcelableSparseArray m5603c(SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            if (valueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(keyAt, valueAt.m5643l());
        }
        return parcelableSparseArray;
    }

    /* renamed from: d */
    public static void m5602d(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f36128a || badgeDrawable.m5646i() != null) {
            badgeDrawable.m5646i().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    /* renamed from: e */
    public static void m5601e(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.m5656C(view, frameLayout);
    }

    /* renamed from: f */
    public static void m5600f(Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }
}
