package com.facebook.p094a.p096b.p097a;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.core.p026h.AbstractC0583i;
import com.facebook.internal.C2079x;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.b.a.f */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/f.class */
public class C1829f {

    /* renamed from: a */
    private static final String f5571a = C1829f.class.getCanonicalName();

    /* renamed from: b */
    private static WeakReference<View> f5572b = new WeakReference<>(null);

    /* renamed from: c */
    private static Method f5573c = null;

    /* renamed from: a */
    public static View m16174a(float[] fArr, View view) {
        m16179a();
        View view2 = null;
        if (f5573c != null) {
            if (view == null) {
                view2 = null;
            } else {
                try {
                    View view3 = (View) f5573c.invoke(null, fArr, view);
                    view2 = null;
                    if (view3 != null) {
                        view2 = null;
                        if (view3.getId() > 0) {
                            View view4 = (View) view3.getParent();
                            if (view4 == null) {
                                view4 = null;
                            }
                            view2 = view4;
                        }
                    }
                } catch (IllegalAccessException e) {
                    C2079x.m15470a(f5571a, (Exception) e);
                    view2 = null;
                } catch (InvocationTargetException e2) {
                    C2079x.m15470a(f5571a, (Exception) e2);
                    view2 = null;
                }
            }
        }
        return view2;
    }

    /* renamed from: a */
    public static ViewGroup m16178a(View view) {
        ViewGroup viewGroup;
        if (view == null) {
            viewGroup = null;
        } else {
            ViewParent parent = view.getParent();
            viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        }
        return viewGroup;
    }

    /* renamed from: a */
    private static void m16179a() {
        if (f5573c != null) {
            return;
        }
        try {
            f5573c = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
            f5573c.setAccessible(true);
        } catch (ClassNotFoundException e) {
            C2079x.m15470a(f5571a, (Exception) e);
        } catch (NoSuchMethodException e2) {
            C2079x.m15470a(f5571a, (Exception) e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m16177a(android.view.View r4, android.view.View.OnClickListener r5) {
        /*
            r0 = 0
            r6 = r0
            java.lang.String r0 = "android.view.View"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.ClassNotFoundException -> L28 java.lang.NoSuchFieldException -> L31 java.lang.Exception -> L5c
            java.lang.String r1 = "mListenerInfo"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.ClassNotFoundException -> L28 java.lang.NoSuchFieldException -> L31 java.lang.Exception -> L5c
            r7 = r0
            java.lang.String r0 = "android.view.View$ListenerInfo"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Exception -> L5c java.lang.NoSuchFieldException -> L70 java.lang.ClassNotFoundException -> L75
            java.lang.String r1 = "mOnClickListener"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Exception -> L5c java.lang.NoSuchFieldException -> L70 java.lang.ClassNotFoundException -> L75
            r8 = r0
        L19:
            r0 = r7
            if (r0 == 0) goto L22
            r0 = r8
            if (r0 != 0) goto L3a
        L22:
            r0 = r4
            r1 = r5
            r0.setOnClickListener(r1)     // Catch: java.lang.Exception -> L5c
        L27:
            return
        L28:
            r7 = move-exception
            r0 = 0
            r7 = r0
        L2b:
            r0 = 0
            r8 = r0
            goto L19
        L31:
            r7 = move-exception
            r0 = 0
            r7 = r0
        L34:
            r0 = 0
            r8 = r0
            goto L19
        L3a:
            r0 = r7
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L5c
            r0 = r8
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L5c
            r0 = r7
            r1 = 1
            r0.setAccessible(r1)     // Catch: java.lang.Exception -> L5c java.lang.IllegalAccessException -> L6a
            r0 = r7
            r1 = r4
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L5c java.lang.IllegalAccessException -> L6a
            r7 = r0
        L50:
            r0 = r7
            if (r0 != 0) goto L60
            r0 = r4
            r1 = r5
            r0.setOnClickListener(r1)     // Catch: java.lang.Exception -> L5c
            goto L27
        L5c:
            r4 = move-exception
            goto L27
        L60:
            r0 = r8
            r1 = r7
            r2 = r5
            r0.set(r1, r2)     // Catch: java.lang.Exception -> L5c
            goto L27
        L6a:
            r7 = move-exception
            r0 = r6
            r7 = r0
            goto L50
        L70:
            r8 = move-exception
            goto L34
        L75:
            r8 = move-exception
            goto L2b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p094a.p096b.p097a.C1829f.m16177a(android.view.View, android.view.View$OnClickListener):void");
    }

    /* renamed from: a */
    public static void m16175a(View view, JSONObject jSONObject) {
        try {
            String m16170e = m16170e(view);
            String m16169f = m16169f(view);
            Object tag = view.getTag();
            CharSequence contentDescription = view.getContentDescription();
            jSONObject.put("classname", view.getClass().getCanonicalName());
            jSONObject.put("classtypebitmask", m16171d(view));
            jSONObject.put("id", view.getId());
            if (!C1827d.m16189a(view)) {
                jSONObject.put("text", C2079x.m15469a(C2079x.m15442c(m16170e), ""));
            } else {
                jSONObject.put("text", "");
                jSONObject.put("is_user_input", true);
            }
            jSONObject.put("hint", C2079x.m15469a(C2079x.m15442c(m16169f), ""));
            if (tag != null) {
                jSONObject.put("tag", C2079x.m15469a(C2079x.m15442c(tag.toString()), ""));
            }
            if (contentDescription != null) {
                jSONObject.put("description", C2079x.m15469a(C2079x.m15442c(contentDescription.toString()), ""));
            }
            jSONObject.put("dimension", m16163l(view));
        } catch (JSONException e) {
            C2079x.m15470a(f5571a, (Exception) e);
        }
    }

    /* renamed from: a */
    public static boolean m16176a(View view, View view2) {
        boolean z = false;
        if (view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup")) {
            View m16174a = m16174a(m16162m(view), view2);
            z = false;
            if (m16174a != null) {
                z = false;
                if (m16174a.getId() == view.getId()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static List<View> m16173b(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                arrayList.add(viewGroup.getChildAt(i));
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static JSONObject m16172c(View view) {
        if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
            f5572b = new WeakReference<>(view);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            m16175a(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            List<View> m16173b = m16173b(view);
            for (int i = 0; i < m16173b.size(); i++) {
                jSONArray.put(m16172c(m16173b.get(i)));
            }
            jSONObject.put("childviews", jSONArray);
        } catch (JSONException e) {
            Log.e(f5571a, "Failed to create JSONObject for view.", e);
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static int m16171d(View view) {
        int i;
        int i2 = 0;
        if (view instanceof ImageView) {
            i2 = 2;
        }
        int i3 = i2;
        if (view.isClickable()) {
            i3 = i2 | 32;
        }
        if (m16164k(view)) {
            i3 |= 512;
        }
        if (view instanceof TextView) {
            int i4 = i3 | 1024 | 1;
            i = i4;
            if (view instanceof Button) {
                int i5 = i4 | 4;
                if (view instanceof Switch) {
                    i = i5 | 8192;
                } else {
                    i = i5;
                    if (view instanceof CheckBox) {
                        i = i5 | 32768;
                    }
                }
            }
            if (view instanceof EditText) {
                i |= 2048;
            }
        } else if ((view instanceof Spinner) || (view instanceof DatePicker)) {
            i = i3 | 4096;
        } else if (view instanceof RatingBar) {
            i = i3 | 65536;
        } else if (view instanceof RadioGroup) {
            i = i3 | 16384;
        } else {
            i = i3;
            if (view instanceof ViewGroup) {
                i = i3;
                if (m16176a(view, f5572b.get())) {
                    i = i3 | 64;
                }
            }
        }
        return i;
    }

    /* renamed from: e */
    public static String m16170e(View view) {
        String valueOf;
        String str;
        Object selectedItem;
        if (view instanceof TextView) {
            valueOf = ((TextView) view).getText();
            if (view instanceof Switch) {
                valueOf = ((Switch) view).isChecked() ? "1" : "0";
            }
        } else if (view instanceof Spinner) {
            valueOf = (((Spinner) view).getCount() <= 0 || (selectedItem = ((Spinner) view).getSelectedItem()) == null) ? null : selectedItem.toString();
        } else if (view instanceof DatePicker) {
            DatePicker datePicker = (DatePicker) view;
            valueOf = String.format("%04d-%02d-%02d", Integer.valueOf(datePicker.getYear()), Integer.valueOf(datePicker.getMonth()), Integer.valueOf(datePicker.getDayOfMonth()));
        } else if (view instanceof TimePicker) {
            TimePicker timePicker = (TimePicker) view;
            valueOf = String.format("%02d:%02d", Integer.valueOf(timePicker.getCurrentHour().intValue()), Integer.valueOf(timePicker.getCurrentMinute().intValue()));
        } else if (view instanceof RadioGroup) {
            RadioGroup radioGroup = (RadioGroup) view;
            int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
            int childCount = radioGroup.getChildCount();
            int i = 0;
            while (true) {
                str = null;
                if (i >= childCount) {
                    break;
                }
                View childAt = radioGroup.getChildAt(i);
                if (childAt.getId() == checkedRadioButtonId && (childAt instanceof RadioButton)) {
                    str = ((RadioButton) childAt).getText();
                    break;
                }
                i++;
            }
            valueOf = str;
        } else {
            valueOf = view instanceof RatingBar ? String.valueOf(((RatingBar) view).getRating()) : null;
        }
        return valueOf == null ? "" : valueOf.toString();
    }

    /* renamed from: f */
    public static String m16169f(View view) {
        CharSequence charSequence = null;
        if (view instanceof EditText) {
            charSequence = ((EditText) view).getHint();
        } else if (view instanceof TextView) {
            charSequence = ((TextView) view).getHint();
        }
        return charSequence == null ? "" : charSequence.toString();
    }

    /* renamed from: g */
    public static View.OnClickListener m16168g(View view) {
        View.OnClickListener onClickListener;
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            Object obj = declaredField.get(view);
            if (obj == null) {
                onClickListener = null;
            } else {
                Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                if (declaredField2 != null) {
                    declaredField2.setAccessible(true);
                    onClickListener = (View.OnClickListener) declaredField2.get(obj);
                } else {
                    onClickListener = null;
                }
            }
        } catch (ClassNotFoundException e) {
            onClickListener = null;
        } catch (IllegalAccessException e2) {
            onClickListener = null;
        } catch (NoSuchFieldException e3) {
            onClickListener = null;
        }
        return onClickListener;
    }

    /* renamed from: h */
    public static View.OnTouchListener m16167h(View view) {
        View.OnTouchListener onTouchListener;
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            Object obj = declaredField.get(view);
            if (obj == null) {
                onTouchListener = null;
            } else {
                Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
                if (declaredField2 != null) {
                    declaredField2.setAccessible(true);
                    onTouchListener = (View.OnTouchListener) declaredField2.get(obj);
                } else {
                    onTouchListener = null;
                }
            }
        } catch (ClassNotFoundException e) {
            C2079x.m15470a(f5571a, (Exception) e);
            onTouchListener = null;
        } catch (IllegalAccessException e2) {
            C2079x.m15470a(f5571a, (Exception) e2);
            onTouchListener = null;
        } catch (NoSuchFieldException e3) {
            C2079x.m15470a(f5571a, (Exception) e3);
            onTouchListener = null;
        }
        return onTouchListener;
    }

    /* renamed from: i */
    public static boolean m16166i(View view) {
        return view.getClass().getName().equals("com.facebook.react.ReactRootView");
    }

    /* renamed from: j */
    public static View m16165j(View view) {
        while (view != null) {
            if (!m16166i(view)) {
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        view = null;
        return view;
    }

    /* renamed from: k */
    private static boolean m16164k(View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof AdapterView) || (parent instanceof AbstractC0583i);
    }

    /* renamed from: l */
    private static JSONObject m16163l(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("top", view.getTop());
            jSONObject.put("left", view.getLeft());
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put("scrollx", view.getScrollX());
            jSONObject.put("scrolly", view.getScrollY());
            jSONObject.put("visibility", view.getVisibility());
        } catch (JSONException e) {
            Log.e(f5571a, "Failed to create JSONObject for dimension.", e);
        }
        return jSONObject;
    }

    /* renamed from: m */
    private static float[] m16162m(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new float[]{iArr[0], iArr[1]};
    }
}
