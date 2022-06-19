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
/* loaded from: classes4-dex2jar.jar:com/google/android/material/badge/a.class */
public final class C14419a {

    /* renamed from: a */
    public static final boolean f52510a;

    static {
        f52510a = Build.VERSION.SDK_INT < 18;
    }

    private C14419a() {
    }

    /* renamed from: a */
    public static SparseArray<BadgeDrawable> m11228a(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeDrawable.SavedState savedState = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i);
            if (savedState == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(keyAt, BadgeDrawable.m11237a(context, savedState));
        }
        return sparseArray;
    }

    /* renamed from: a */
    public static ParcelableSparseArray m11226a(SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            if (valueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(keyAt, valueAt.f52491a);
        }
        return parcelableSparseArray;
    }

    /* renamed from: a */
    public static void m11227a(Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    /* renamed from: a */
    public static void m11225a(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (f52510a || badgeDrawable.m11239a() != null) {
            badgeDrawable.m11239a().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    /* renamed from: a */
    public static void m11224a(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        m11223b(badgeDrawable, view, frameLayout);
        if (badgeDrawable.m11239a() != null) {
            badgeDrawable.m11239a().setForeground(badgeDrawable);
        } else if (f52510a) {
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        } else {
            view.getOverlay().add(badgeDrawable);
        }
    }

    /* renamed from: b */
    public static void m11223b(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.m11235a(view, frameLayout);
    }
}
