package com.facebook.internal.p304c.p305a;

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
/* renamed from: com.facebook.internal.c.a.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/b.class */
public final class C10270b {

    /* renamed from: a */
    public static C10270b f33783a;

    /* renamed from: d */
    private static Method f33784d;

    /* renamed from: b */
    public final C10267a f33785b = new C10267a();

    /* renamed from: c */
    public final C10273d f33786c = new C10273d();

    /* renamed from: e */
    private Method f33787e;

    /* renamed from: com.facebook.internal.c.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/b$a.class */
    public static final class C10271a {

        /* renamed from: a */
        private static Field f33788a;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mKeyedTags");
                f33788a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
        }

        private C10271a() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0077 -> B:22:0x0065). Please submit an issue!!! */
        /* renamed from: a */
        private static JSONObject m23079a(View view) {
            JSONObject jSONObject;
            try {
                if (f33788a == null) {
                    Field declaredField = View.class.getDeclaredField("mKeyedTags");
                    f33788a = declaredField;
                    declaredField.setAccessible(true);
                }
                SparseArray sparseArray = (SparseArray) f33788a.get(view);
                jSONObject = null;
                if (sparseArray != null) {
                    jSONObject = null;
                    if (sparseArray.size() > 0) {
                        jSONObject = new JSONObject();
                        try {
                            int size = sparseArray.size();
                            for (int i = 0; i < size; i++) {
                                try {
                                    jSONObject.put(C10272c.m23076a(view.getResources(), sparseArray.keyAt(i)), sparseArray.valueAt(i));
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

        /* renamed from: a */
        static void m23078a(PrintWriter printWriter, View view) {
            AccessibilityNodeInfo m23084a;
            if (Build.VERSION.SDK_INT >= 21 && (m23084a = C10270b.m23084a(view)) != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        jSONObject.put("textColor", textView.getTextColors().getDefaultColor());
                        jSONObject.put("textSize", textView.getTextSize());
                        jSONObject.put("hint", C10270b.m23082a(textView.getHint(), 100));
                    }
                    JSONObject m23079a = m23079a(view);
                    if (m23079a != null) {
                        jSONObject.put("keyedTags", m23079a);
                    }
                    JSONArray jSONArray = new JSONArray();
                    for (AccessibilityNodeInfo.AccessibilityAction accessibilityAction : m23084a.getActionList()) {
                        String str = (String) accessibilityAction.getLabel();
                        if (str != null) {
                            jSONArray.put(C10270b.m23082a(str, 50));
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("actions", jSONArray);
                    }
                    String m23082a = C10270b.m23082a(m23084a.getContentDescription(), 50);
                    if (m23082a != null && m23082a.length() > 0) {
                        jSONObject.put("content-description", m23082a);
                    }
                    jSONObject.put("accessibility-focused", m23084a.isAccessibilityFocused()).put("checkable", m23084a.isCheckable()).put("checked", m23084a.isChecked()).put("class-name", C10270b.m23082a(m23084a.getClassName(), 50)).put("clickable", m23084a.isClickable()).put("content-invalid", m23084a.isContentInvalid()).put("dismissable", m23084a.isDismissable()).put("editable", m23084a.isEditable()).put("enabled", m23084a.isEnabled()).put("focusable", m23084a.isFocusable()).put("focused", m23084a.isFocused()).put("long-clickable", m23084a.isLongClickable()).put("multiline", m23084a.isMultiLine()).put("password", m23084a.isPassword()).put("scrollable", m23084a.isScrollable()).put("selected", m23084a.isSelected()).put("visible-to-user", m23084a.isVisibleToUser());
                    if (Build.VERSION.SDK_INT >= 24 && Build.VERSION.SDK_INT >= 24) {
                        jSONObject.put("context-clickable", m23084a.isContextClickable()).put("drawing-order", m23084a.getDrawingOrder()).put("important-for-accessibility", m23084a.isImportantForAccessibility());
                    }
                } catch (Exception e) {
                    try {
                        jSONObject.put("DUMP-ERROR", C10270b.m23082a(e.getMessage(), 50));
                    } catch (JSONException e2) {
                    }
                }
                printWriter.append(" props=\"").append((CharSequence) jSONObject.toString()).append("\"");
            }
        }
    }

    /* renamed from: a */
    static AccessibilityNodeInfo m23084a(View view) {
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

    /* renamed from: a */
    static String m23082a(CharSequence charSequence, int i) {
        String replace;
        String str = "";
        if (charSequence != null) {
            if (charSequence.length() <= 0) {
                str = "";
            } else {
                str = charSequence.toString().replace(" \n", StringUtils.SPACE).replace(StringUtils.f67179LF, StringUtils.SPACE).replace("\"", "");
                if (charSequence.length() > i) {
                    str = replace.substring(0, i) + "...";
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    private static void m23083a(PrintWriter printWriter, View view) {
        Object tag = view.getTag();
        if (!(tag instanceof String)) {
            return;
        }
        String str = (String) tag;
        if (str.length() <= 0) {
            return;
        }
        printWriter.print(" app:tag/");
        printWriter.print(m23082a(str, 60));
    }

    /* renamed from: a */
    public static boolean m23080a(String[] strArr, String str) {
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
        if (r19.isEmpty() != false) goto L101;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23081a(java.lang.String r10, java.io.PrintWriter r11, android.view.View r12, int r13, int r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 1334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.p304c.p305a.C10270b.m23081a(java.lang.String, java.io.PrintWriter, android.view.View, int, int, boolean, boolean):void");
    }
}
