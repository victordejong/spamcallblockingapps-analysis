package com.facebook.appevents.p280b.p281a;

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
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.b.a.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/f.class */
public class C9981f {

    /* renamed from: a */
    private static final String f33197a = "com.facebook.appevents.b.a.f";

    /* renamed from: b */
    private static WeakReference<View> f33198b = new WeakReference<>(null);

    /* renamed from: c */
    private static Method f33199c = null;

    /* renamed from: a */
    private static View m23701a(float[] fArr, View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            if (!C10249a.m23108a(C9981f.class) && f33199c == null) {
                try {
                    Method declaredMethod = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                    f33199c = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (ClassNotFoundException e) {
                    C10213ae.m23228a(f33197a, (Exception) e);
                } catch (NoSuchMethodException e2) {
                    C10213ae.m23228a(f33197a, (Exception) e2);
                }
            }
            Method method = f33199c;
            if (method == null || view == null) {
                return null;
            }
            try {
                try {
                    View view2 = (View) method.invoke(null, fArr, view);
                    if (view2 == null || view2.getId() <= 0) {
                        return null;
                    }
                    View view3 = (View) view2.getParent();
                    if (view3 == null) {
                        return null;
                    }
                    return view3;
                } catch (InvocationTargetException e3) {
                    C10213ae.m23228a(f33197a, (Exception) e3);
                    return null;
                }
            } catch (IllegalAccessException e4) {
                C10213ae.m23228a(f33197a, (Exception) e4);
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: a */
    public static ViewGroup m23705a(View view) {
        if (!C10249a.m23108a(C9981f.class) && view != null) {
            try {
                ViewParent parent = view.getParent();
                if (!(parent instanceof ViewGroup)) {
                    return null;
                }
                return (ViewGroup) parent;
            } catch (Throwable th) {
                C10249a.m23106a(th, C9981f.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static Class<?> m23702a(String str) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23704a(View view, View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        Object obj;
        if (C10249a.m23108a(C9981f.class)) {
            return;
        }
        try {
            try {
                field2 = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            } catch (ClassNotFoundException | NoSuchFieldException e) {
                field2 = null;
            }
            try {
                field = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            } catch (ClassNotFoundException | NoSuchFieldException e2) {
                field = null;
                if (field2 != null) {
                }
                view.setOnClickListener(onClickListener);
                return;
            }
            if (field2 != null || field == null) {
                view.setOnClickListener(onClickListener);
                return;
            }
            field2.setAccessible(true);
            field.setAccessible(true);
            try {
                field2.setAccessible(true);
                obj = field2.get(view);
            } catch (IllegalAccessException e3) {
                obj = null;
            }
            if (obj == null) {
                view.setOnClickListener(onClickListener);
            } else {
                field.set(obj, onClickListener);
            }
        } catch (Exception e4) {
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
        }
    }

    /* renamed from: a */
    public static boolean m23703a(View view, View view2) {
        View m23701a;
        if (C10249a.m23108a(C9981f.class)) {
            return false;
        }
        try {
            if (!view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup") || (m23701a = m23701a(m23689m(view), view2)) == null) {
                return false;
            }
            return m23701a.getId() == view.getId();
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return false;
        }
    }

    /* renamed from: b */
    public static List<View> m23700b(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    arrayList.add(viewGroup.getChildAt(i));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: c */
    public static JSONObject m23699c(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
                f33198b = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                try {
                    if (!C10249a.m23108a(C9981f.class)) {
                        try {
                            String m23697e = m23697e(view);
                            String m23696f = m23696f(view);
                            Object tag = view.getTag();
                            CharSequence contentDescription = view.getContentDescription();
                            jSONObject.put("classname", view.getClass().getCanonicalName());
                            jSONObject.put("classtypebitmask", m23698d(view));
                            jSONObject.put("id", view.getId());
                            if (!C9979d.m23715a(view)) {
                                jSONObject.put("text", C10213ae.m23227a(C10213ae.m23200c(m23697e), ""));
                            } else {
                                jSONObject.put("text", "");
                                jSONObject.put("is_user_input", true);
                            }
                            jSONObject.put("hint", C10213ae.m23227a(C10213ae.m23200c(m23696f), ""));
                            if (tag != null) {
                                jSONObject.put("tag", C10213ae.m23227a(C10213ae.m23200c(tag.toString()), ""));
                            }
                            if (contentDescription != null) {
                                jSONObject.put("description", C10213ae.m23227a(C10213ae.m23200c(contentDescription.toString()), ""));
                            }
                            jSONObject.put("dimension", m23691k(view));
                        } catch (JSONException e) {
                            C10213ae.m23228a(f33197a, (Exception) e);
                        }
                    }
                } catch (Throwable th) {
                    C10249a.m23106a(th, C9981f.class);
                }
                JSONArray jSONArray = new JSONArray();
                List<View> m23700b = m23700b(view);
                for (int i = 0; i < m23700b.size(); i++) {
                    jSONArray.put(m23699c(m23700b.get(i)));
                }
                jSONObject.put("childviews", jSONArray);
            } catch (JSONException e2) {
                Log.e(f33197a, "Failed to create JSONObject for view.", e2);
            }
            return jSONObject;
        } catch (Throwable th2) {
            C10249a.m23106a(th2, C9981f.class);
            return null;
        }
    }

    /* renamed from: d */
    public static int m23698d(View view) {
        int i;
        if (C10249a.m23108a(C9981f.class)) {
            return 0;
        }
        try {
            int i2 = view instanceof ImageView ? 2 : 0;
            int i3 = i2;
            if (view.isClickable()) {
                i3 = i2 | 32;
            }
            int i4 = i3;
            if (m23692j(view)) {
                i4 = i3 | 512;
            }
            if (view instanceof TextView) {
                int i5 = i4 | 1024 | 1;
                int i6 = i5;
                if (view instanceof Button) {
                    int i7 = i5 | 4;
                    if (view instanceof Switch) {
                        i6 = i7 | PropertyFlags.UNSIGNED;
                    } else {
                        i6 = i7;
                        if (view instanceof CheckBox) {
                            i6 = i7 | 32768;
                        }
                    }
                }
                i = i6;
                if (view instanceof EditText) {
                    i = i6 | 2048;
                }
            } else {
                if (!(view instanceof Spinner) && !(view instanceof DatePicker)) {
                    if (view instanceof RatingBar) {
                        i = i4 | 65536;
                    } else if (view instanceof RadioGroup) {
                        i = i4 | 16384;
                    } else {
                        i = i4;
                        if (view instanceof ViewGroup) {
                            i = i4;
                            if (m23703a(view, f33198b.get())) {
                                i = i4 | 64;
                            }
                        }
                    }
                }
                i = i4 | 4096;
            }
            return i;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0132 A[Catch: all -> 0x0139, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0139, blocks: (B:5:0x000a, B:7:0x0011, B:9:0x001a, B:11:0x0020, B:17:0x003a, B:19:0x0041, B:21:0x004b, B:23:0x0057, B:24:0x005f, B:27:0x006a, B:28:0x009b, B:30:0x00a2, B:31:0x00cf, B:33:0x00d6, B:37:0x00ed, B:39:0x00fc, B:41:0x0103, B:43:0x0114, B:45:0x011b, B:50:0x0132), top: B:55:0x000a }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m23697e(android.view.View r6) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p280b.p281a.C9981f.m23697e(android.view.View):java.lang.String");
    }

    /* renamed from: f */
    public static String m23696f(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            CharSequence hint = view instanceof EditText ? ((EditText) view).getHint() : view instanceof TextView ? ((TextView) view).getHint() : null;
            return hint == null ? "" : hint.toString();
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: g */
    public static View.OnClickListener m23695g(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            Object obj = declaredField.get(view);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            View.OnClickListener onClickListener = null;
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
                onClickListener = (View.OnClickListener) declaredField2.get(obj);
            }
            return onClickListener;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: h */
    public static View.OnTouchListener m23694h(View view) {
        try {
            if (C10249a.m23108a(C9981f.class)) {
                return null;
            }
            try {
                try {
                    try {
                        Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                        if (declaredField != null) {
                            declaredField.setAccessible(true);
                        }
                        Object obj = declaredField.get(view);
                        if (obj == null) {
                            return null;
                        }
                        Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
                        View.OnTouchListener onTouchListener = null;
                        if (declaredField2 != null) {
                            declaredField2.setAccessible(true);
                            onTouchListener = (View.OnTouchListener) declaredField2.get(obj);
                        }
                        return onTouchListener;
                    } catch (ClassNotFoundException e) {
                        C10213ae.m23228a(f33197a, (Exception) e);
                        return null;
                    }
                } catch (NoSuchFieldException e2) {
                    C10213ae.m23228a(f33197a, (Exception) e2);
                    return null;
                }
            } catch (IllegalAccessException e3) {
                C10213ae.m23228a(f33197a, (Exception) e3);
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: i */
    public static View m23693i(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (m23690l(view)) {
                    return view;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                C10249a.m23106a(th, C9981f.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: j */
    private static boolean m23692j(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            Class<?> m23702a = m23702a("android.support.v4.view.NestedScrollingChild");
            if (m23702a != null && m23702a.isInstance(parent)) {
                return true;
            }
            Class<?> m23702a2 = m23702a("androidx.core.view.NestedScrollingChild");
            if (m23702a2 == null) {
                return false;
            }
            return m23702a2.isInstance(parent);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return false;
        }
    }

    /* renamed from: k */
    private static JSONObject m23691k(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
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
                Log.e(f33197a, "Failed to create JSONObject for dimension.", e);
            }
            return jSONObject;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }

    /* renamed from: l */
    private static boolean m23690l(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return false;
        }
        try {
            return view.getClass().getName().equals("com.facebook.react.ReactRootView");
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return false;
        }
    }

    /* renamed from: m */
    private static float[] m23689m(View view) {
        if (C10249a.m23108a(C9981f.class)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th) {
            C10249a.m23106a(th, C9981f.class);
            return null;
        }
    }
}
