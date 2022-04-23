package com.facebook.internal.c.a;

import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static b f19909a;

    /* renamed from: d  reason: collision with root package name */
    private static Method f19910d;

    /* renamed from: b  reason: collision with root package name */
    public final com.facebook.internal.c.a.a f19911b = new com.facebook.internal.c.a.a();

    /* renamed from: c  reason: collision with root package name */
    public final d f19912c = new d();
    private Method e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static Field f19913a;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mKeyedTags");
                f19913a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
        }

        private a() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0077 -> B:22:0x0065). Please submit an issue!!! */
        private static JSONObject a(View view) {
            JSONObject jSONObject;
            try {
                if (f19913a == null) {
                    Field declaredField = View.class.getDeclaredField("mKeyedTags");
                    f19913a = declaredField;
                    declaredField.setAccessible(true);
                }
                SparseArray sparseArray = (SparseArray) f19913a.get(view);
                jSONObject = null;
                if (sparseArray != null) {
                    jSONObject = null;
                    if (sparseArray.size() > 0) {
                        jSONObject = new JSONObject();
                        try {
                            int size = sparseArray.size();
                            for (int i = 0; i < size; i++) {
                                try {
                                    jSONObject.put(c.a(view.getResources(), sparseArray.keyAt(i)), sparseArray.valueAt(i));
                                } catch (JSONException e) {
                                }
                            }
                        } catch (Exception e2) {
                        }
                    }
                }
            } catch (Exception e3) {
                jSONObject = null;
            }
            return jSONObject;
        }

        static void a(PrintWriter printWriter, View view) {
            AccessibilityNodeInfo a2;
            if (Build.VERSION.SDK_INT >= 21 && (a2 = b.a(view)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        jSONObject.put("textColor", textView.getTextColors().getDefaultColor());
                        jSONObject.put("textSize", textView.getTextSize());
                        jSONObject.put("hint", b.a(textView.getHint(), 100));
                    }
                    JSONObject a3 = a(view);
                    if (a3 != null) {
                        jSONObject.put("keyedTags", a3);
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (AccessibilityNodeInfo.AccessibilityAction accessibilityAction : a2.getActionList()) {
                        String str = (String) accessibilityAction.getLabel();
                        if (str != null) {
                            jSONArray.put(b.a(str, 50));
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("actions", jSONArray);
                    }
                    String a4 = b.a(a2.getContentDescription(), 50);
                    if (a4 != null && a4.length() > 0) {
                        jSONObject.put("content-description", a4);
                    }
                    jSONObject.put("accessibility-focused", a2.isAccessibilityFocused()).put("checkable", a2.isCheckable()).put("checked", a2.isChecked()).put("class-name", b.a(a2.getClassName(), 50)).put("clickable", a2.isClickable()).put("content-invalid", a2.isContentInvalid()).put("dismissable", a2.isDismissable()).put("editable", a2.isEditable()).put("enabled", a2.isEnabled()).put("focusable", a2.isFocusable()).put("focused", a2.isFocused()).put("long-clickable", a2.isLongClickable()).put("multiline", a2.isMultiLine()).put("password", a2.isPassword()).put("scrollable", a2.isScrollable()).put("selected", a2.isSelected()).put("visible-to-user", a2.isVisibleToUser());
                    if (Build.VERSION.SDK_INT >= 24 && Build.VERSION.SDK_INT >= 24) {
                        jSONObject.put("context-clickable", a2.isContextClickable()).put("drawing-order", a2.getDrawingOrder()).put("important-for-accessibility", a2.isImportantForAccessibility());
                    }
                } catch (Exception e) {
                    try {
                        jSONObject.put("DUMP-ERROR", b.a(e.getMessage(), 50));
                    } catch (JSONException e2) {
                    }
                }
                printWriter.append(" props=\"").append((CharSequence) jSONObject.toString()).append("\"");
            }
        }
    }

    static AccessibilityNodeInfo a(View view) {
        if (view == null) {
            return null;
        }
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        try {
            view.onInitializeAccessibilityNodeInfo(obtain);
            return obtain;
        } catch (NullPointerException e) {
            if (obtain == null) {
                return null;
            }
            obtain.recycle();
            return null;
        }
    }

    static String a(CharSequence charSequence, int i) {
        String replace;
        String str = "";
        if (charSequence != null) {
            if (charSequence.length() <= 0) {
                str = "";
            } else {
                str = charSequence.toString().replace(" \n", StringUtils.SPACE).replace(StringUtils.LF, StringUtils.SPACE).replace("\"", "");
                if (charSequence.length() > i) {
                    str = replace.substring(0, i) + "...";
                }
            }
        }
        return str;
    }

    private static void a(PrintWriter printWriter, View view) {
        Object tag = view.getTag();
        if (tag instanceof String) {
            String str = (String) tag;
            if (str.length() > 0) {
                printWriter.print(" app:tag/");
                printWriter.print(a(str, 60));
            }
        }
    }

    public static boolean a(String[] strArr, String str) {
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x031a, code lost:
        if (r19.isEmpty() != false) goto L_0x031d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r10, java.io.PrintWriter r11, android.view.View r12, int r13, int r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 1334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.c.a.b.a(java.lang.String, java.io.PrintWriter, android.view.View, int, int, boolean, boolean):void");
    }
}
