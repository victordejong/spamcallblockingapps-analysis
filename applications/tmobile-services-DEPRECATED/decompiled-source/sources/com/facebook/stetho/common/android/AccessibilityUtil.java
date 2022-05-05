package com.facebook.stetho.common.android;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.Spinner;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/android/AccessibilityUtil.class */
public final class AccessibilityUtil {
    private AccessibilityUtil() {
    }

    /* JADX WARN: Finally extract failed */
    public static boolean hasFocusableAncestor(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        if (accessibilityNodeInfoCompat == null || view == null) {
            return false;
        }
        ViewParent H = ViewCompat.m19230H(view);
        if (!(H instanceof View)) {
            return false;
        }
        AccessibilityNodeInfoCompat O = AccessibilityNodeInfoCompat.m19043O();
        try {
            ViewCompat.m19209a0((View) H, O);
            if (O == null) {
                O.m19039S();
                return false;
            } else if (isAccessibilityFocusable(O, (View) H)) {
                O.m19039S();
                return true;
            } else if (hasFocusableAncestor(O, (View) H)) {
                O.m19039S();
                return true;
            } else {
                O.m19039S();
                return false;
            }
        } catch (Throwable th) {
            O.m19039S();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean hasNonActionableSpeakingDescendants(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        if (accessibilityNodeInfoCompat == null || view == null || !(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != null) {
                AccessibilityNodeInfoCompat O = AccessibilityNodeInfoCompat.m19043O();
                try {
                    ViewCompat.m19209a0(childAt, O);
                    if (!isAccessibilityFocusable(O, childAt) && isSpeakingNode(O, childAt)) {
                        O.m19039S();
                        return true;
                    }
                    O.m19039S();
                } catch (Throwable th) {
                    O.m19039S();
                    throw th;
                }
            }
        }
        return false;
    }

    public static boolean hasText(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        boolean z = false;
        if (accessibilityNodeInfoCompat == null) {
            return false;
        }
        if (!TextUtils.isEmpty(accessibilityNodeInfoCompat.m18985x()) || !TextUtils.isEmpty(accessibilityNodeInfoCompat.m18997r())) {
            z = true;
        }
        return z;
    }

    public static boolean isAccessibilityFocusable(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        boolean z = false;
        if (accessibilityNodeInfoCompat != null) {
            if (view == null) {
                z = false;
            } else if (!accessibilityNodeInfoCompat.m19044N()) {
                return false;
            } else {
                if (isActionableForAccessibility(accessibilityNodeInfoCompat)) {
                    return true;
                }
                z = false;
                if (isTopLevelScrollItem(accessibilityNodeInfoCompat, view)) {
                    z = false;
                    if (isSpeakingNode(accessibilityNodeInfoCompat, view)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static boolean isActionableForAccessibility(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        boolean z = false;
        if (accessibilityNodeInfoCompat == null) {
            return false;
        }
        if (accessibilityNodeInfoCompat.m19056E() || accessibilityNodeInfoCompat.m19049I() || accessibilityNodeInfoCompat.m19052G()) {
            return true;
        }
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> i = accessibilityNodeInfoCompat.m19015i();
        if (i.contains(16) || i.contains(32) || i.contains(1)) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (hasNonActionableSpeakingDescendants(r3, r4) != false) goto L_0x0052;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSpeakingNode(@androidx.annotation.Nullable androidx.core.view.accessibility.AccessibilityNodeInfoCompat r3, @androidx.annotation.Nullable android.view.View r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0054
            r0 = r4
            if (r0 != 0) goto L_0x0011
            r0 = r5
            r6 = r0
            goto L_0x0054
        L_0x0011:
            r0 = r3
            boolean r0 = r0.m19044N()
            if (r0 != 0) goto L_0x001a
            r0 = 0
            return r0
        L_0x001a:
            r0 = r4
            int r0 = androidx.core.view.ViewCompat.m19162y(r0)
            r7 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 4
            if (r0 == r1) goto L_0x0054
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x003a
            r0 = r3
            int r0 = r0.m19003o()
            if (r0 > 0) goto L_0x003a
            r0 = r5
            r6 = r0
            goto L_0x0054
        L_0x003a:
            r0 = r3
            boolean r0 = r0.m19060C()
            if (r0 != 0) goto L_0x0052
            r0 = r3
            boolean r0 = hasText(r0)
            if (r0 != 0) goto L_0x0052
            r0 = r5
            r6 = r0
            r0 = r3
            r1 = r4
            boolean r0 = hasNonActionableSpeakingDescendants(r0, r1)
            if (r0 == 0) goto L_0x0054
        L_0x0052:
            r0 = 1
            r6 = r0
        L_0x0054:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.stetho.common.android.AccessibilityUtil.isSpeakingNode(androidx.core.view.accessibility.AccessibilityNodeInfoCompat, android.view.View):boolean");
    }

    public static boolean isTopLevelScrollItem(@Nullable AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, @Nullable View view) {
        View view2;
        boolean z = false;
        if (accessibilityNodeInfoCompat == null || view == null || (view2 = (View) ViewCompat.m19230H(view)) == null) {
            return false;
        }
        if (accessibilityNodeInfoCompat.m19047K()) {
            return true;
        }
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> i = accessibilityNodeInfoCompat.m19015i();
        if (i.contains(Integer.valueOf((int) CodedOutputStream.DEFAULT_BUFFER_SIZE)) || i.contains(8192)) {
            return true;
        }
        if (view2 instanceof Spinner) {
            return false;
        }
        if ((view2 instanceof AdapterView) || (view2 instanceof ScrollView) || (view2 instanceof HorizontalScrollView)) {
            z = true;
        }
        return z;
    }
}
