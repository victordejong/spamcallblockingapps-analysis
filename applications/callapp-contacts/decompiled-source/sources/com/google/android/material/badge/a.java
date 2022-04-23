package com.google.android.material.badge;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.ParcelableSparseArray;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/badge/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f30251a;

    static {
        f30251a = Build.VERSION.SDK_INT < 18;
    }

    private a() {
    }

    public static SparseArray<BadgeDrawable> a(Context context, ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeDrawable.SavedState savedState = (BadgeDrawable.SavedState) parcelableSparseArray.valueAt(i);
            if (savedState != null) {
                sparseArray.put(keyAt, BadgeDrawable.a(context, savedState));
            } else {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
        }
        return sparseArray;
    }

    public static ParcelableSparseArray a(SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            if (valueAt != null) {
                parcelableSparseArray.put(keyAt, valueAt.f30246a);
            } else {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
        }
        return parcelableSparseArray;
    }

    public static void a(Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    public static void a(BadgeDrawable badgeDrawable, View view) {
        if (badgeDrawable != null) {
            if (f30251a || badgeDrawable.a() != null) {
                badgeDrawable.a().setForeground(null);
            } else {
                view.getOverlay().remove(badgeDrawable);
            }
        }
    }

    public static void a(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        b(badgeDrawable, view, frameLayout);
        if (badgeDrawable.a() != null) {
            badgeDrawable.a().setForeground(badgeDrawable);
        } else if (!f30251a) {
            view.getOverlay().add(badgeDrawable);
        } else {
            throw new IllegalArgumentException("Trying to reference null customBadgeParent");
        }
    }

    public static void b(BadgeDrawable badgeDrawable, View view, FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.a(view, frameLayout);
    }
}
