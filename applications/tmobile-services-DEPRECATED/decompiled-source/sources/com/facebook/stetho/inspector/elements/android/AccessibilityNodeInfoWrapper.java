package com.facebook.stetho.inspector.elements.android;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.facebook.stetho.common.android.AccessibilityUtil;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import okhttp3.internal.http2.Http2;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/AccessibilityNodeInfoWrapper.class */
public final class AccessibilityNodeInfoWrapper {
    public static AccessibilityNodeInfoCompat createNodeInfoFromView(View view) {
        AccessibilityNodeInfoCompat O = AccessibilityNodeInfoCompat.m19043O();
        ViewCompat.m19209a0(view, O);
        return O;
    }

    @Nullable
    public static String getActions(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            StringBuilder sb = new StringBuilder();
            for (AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat : createNodeInfoFromView.m19015i()) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                int b = accessibilityActionCompat.m18978b();
                if (b == 1) {
                    sb.append("focus");
                } else if (b != 2) {
                    switch (b) {
                        case 4:
                            sb.append("select");
                            continue;
                        case 8:
                            sb.append("clear-selection");
                            continue;
                        case 16:
                            sb.append("click");
                            continue;
                        case 32:
                            sb.append("long-click");
                            continue;
                        case 64:
                            sb.append("accessibility-focus");
                            continue;
                        case 128:
                            sb.append("clear-accessibility-focus");
                            continue;
                        case Indexable.MAX_URL_LENGTH /* 256 */:
                            sb.append("next-at-movement-granularity");
                            continue;
                        case 512:
                            sb.append("previous-at-movement-granularity");
                            continue;
                        case 1024:
                            sb.append("next-html-element");
                            continue;
                        case 2048:
                            sb.append("previous-html-element");
                            continue;
                        case CodedOutputStream.DEFAULT_BUFFER_SIZE /* 4096 */:
                            sb.append("scroll-forward");
                            continue;
                        case 8192:
                            sb.append("scroll-backward");
                            continue;
                        case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
                            sb.append("copy");
                            continue;
                        case 32768:
                            sb.append("paste");
                            continue;
                        case 65536:
                            sb.append("cut");
                            continue;
                        case 131072:
                            sb.append("set-selection");
                            continue;
                        default:
                            CharSequence c = accessibilityActionCompat.m18977c();
                            if (c == null) {
                                sb.append("unknown");
                                break;
                            } else {
                                sb.append(c);
                                continue;
                            }
                    }
                } else {
                    sb.append("clear-focus");
                }
            }
            return sb.length() > 0 ? sb.toString() : null;
        } finally {
            createNodeInfoFromView.m19039S();
        }
    }

    @Nullable
    public static CharSequence getDescription(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            CharSequence r = createNodeInfoFromView.m18997r();
            CharSequence x = createNodeInfoFromView.m18985x();
            boolean z = !TextUtils.isEmpty(x);
            boolean z2 = view instanceof EditText;
            if (!(TextUtils.isEmpty(r) || (z2 && z))) {
                return r;
            }
            if (z) {
                return x;
            }
            boolean z3 = view instanceof ViewGroup;
            String str = null;
            if (z3) {
                StringBuilder sb = new StringBuilder();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    AccessibilityNodeInfoCompat O = AccessibilityNodeInfoCompat.m19043O();
                    ViewCompat.m19209a0(childAt, O);
                    CharSequence description = (!AccessibilityUtil.isSpeakingNode(O, childAt) || AccessibilityUtil.isAccessibilityFocusable(O, childAt)) ? null : getDescription(childAt);
                    if (!TextUtils.isEmpty(description)) {
                        if (sb.length() > 0) {
                            sb.append(", ");
                        }
                        sb.append(description);
                    }
                    O.m19039S();
                }
                if (sb.length() > 0) {
                    str = sb.toString();
                }
                return str;
            }
            createNodeInfoFromView.m19039S();
            return null;
        } finally {
            createNodeInfoFromView.m19039S();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    public static String getFocusableReasons(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            boolean hasText = AccessibilityUtil.hasText(createNodeInfoFromView);
            boolean C = createNodeInfoFromView.m19060C();
            boolean hasNonActionableSpeakingDescendants = AccessibilityUtil.hasNonActionableSpeakingDescendants(createNodeInfoFromView, view);
            if (AccessibilityUtil.isActionableForAccessibility(createNodeInfoFromView)) {
                if (createNodeInfoFromView.m19003o() <= 0) {
                    createNodeInfoFromView.m19039S();
                    return "View is actionable and has no children.";
                } else if (hasText) {
                    createNodeInfoFromView.m19039S();
                    return "View is actionable and has a description.";
                } else if (C) {
                    createNodeInfoFromView.m19039S();
                    return "View is actionable and checkable.";
                } else if (hasNonActionableSpeakingDescendants) {
                    createNodeInfoFromView.m19039S();
                    return "View is actionable and has non-actionable descendants with descriptions.";
                }
            }
            if (AccessibilityUtil.isTopLevelScrollItem(createNodeInfoFromView, view)) {
                if (hasText) {
                    createNodeInfoFromView.m19039S();
                    return "View is a direct child of a scrollable container and has a description.";
                } else if (C) {
                    createNodeInfoFromView.m19039S();
                    return "View is a direct child of a scrollable container and is checkable.";
                } else if (hasNonActionableSpeakingDescendants) {
                    createNodeInfoFromView.m19039S();
                    return "View is a direct child of a scrollable container and has non-actionable descendants with descriptions.";
                }
            }
            if (hasText) {
                createNodeInfoFromView.m19039S();
                return "View has a description and is not actionable, but has no actionable ancestor.";
            }
            createNodeInfoFromView.m19039S();
            return null;
        } catch (Throwable th) {
            createNodeInfoFromView.m19039S();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static boolean getIgnored(View view) {
        int y = ViewCompat.m19162y(view);
        if (y == 2 || y == 4) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (ViewCompat.m19162y((View) parent) == 4) {
                return true;
            }
        }
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            if (!createNodeInfoFromView.m19044N()) {
                createNodeInfoFromView.m19039S();
                return true;
            } else if (AccessibilityUtil.isAccessibilityFocusable(createNodeInfoFromView, view)) {
                if (createNodeInfoFromView.m19003o() <= 0) {
                    createNodeInfoFromView.m19039S();
                    return false;
                } else if (AccessibilityUtil.isSpeakingNode(createNodeInfoFromView, view)) {
                    createNodeInfoFromView.m19039S();
                    return false;
                } else {
                    createNodeInfoFromView.m19039S();
                    return true;
                }
            } else if (AccessibilityUtil.hasFocusableAncestor(createNodeInfoFromView, view) || !AccessibilityUtil.hasText(createNodeInfoFromView)) {
                createNodeInfoFromView.m19039S();
                return true;
            } else {
                createNodeInfoFromView.m19039S();
                return false;
            }
        } catch (Throwable th) {
            createNodeInfoFromView.m19039S();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public static String getIgnoredReasons(View view) {
        int y = ViewCompat.m19162y(view);
        if (y == 2) {
            return "View has importantForAccessibility set to 'NO'.";
        }
        if (y == 4) {
            return "View has importantForAccessibility set to 'NO_HIDE_DESCENDANTS'.";
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (ViewCompat.m19162y((View) parent) == 4) {
                return "An ancestor View has importantForAccessibility set to 'NO_HIDE_DESCENDANTS'.";
            }
        }
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        try {
            if (!createNodeInfoFromView.m19044N()) {
                createNodeInfoFromView.m19039S();
                return "View is not visible.";
            } else if (AccessibilityUtil.isAccessibilityFocusable(createNodeInfoFromView, view)) {
                createNodeInfoFromView.m19039S();
                return "View is actionable, but has no description.";
            } else if (AccessibilityUtil.hasText(createNodeInfoFromView)) {
                createNodeInfoFromView.m19039S();
                return "View is not actionable, and an ancestor View has co-opted its description.";
            } else {
                createNodeInfoFromView.m19039S();
                return "View is not actionable and has no description.";
            }
        } catch (Throwable th) {
            createNodeInfoFromView.m19039S();
            throw th;
        }
    }

    public static boolean getIsAccessibilityFocused(View view) {
        AccessibilityNodeInfoCompat createNodeInfoFromView = createNodeInfoFromView(view);
        boolean B = createNodeInfoFromView.m19062B();
        createNodeInfoFromView.m19039S();
        return B;
    }
}
