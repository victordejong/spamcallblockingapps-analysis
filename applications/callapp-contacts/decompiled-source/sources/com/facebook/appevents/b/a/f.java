package com.facebook.appevents.b.a;

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
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
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
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19460a = "com.facebook.appevents.b.a.f";

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<View> f19461b = new WeakReference<>(null);

    /* renamed from: c  reason: collision with root package name */
    private static Method f19462c = null;

    private static View a(float[] fArr, View view) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            if (!a.a(f.class) && f19462c == null) {
                try {
                    Method declaredMethod = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                    f19462c = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (ClassNotFoundException e) {
                    ae.a(f19460a, (Exception) e);
                } catch (NoSuchMethodException e2) {
                    ae.a(f19460a, (Exception) e2);
                }
            }
            Method method = f19462c;
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
                    if (view3 != null) {
                        return view3;
                    }
                    return null;
                } catch (InvocationTargetException e3) {
                    ae.a(f19460a, (Exception) e3);
                    return null;
                }
            } catch (IllegalAccessException e4) {
                ae.a(f19460a, (Exception) e4);
                return null;
            }
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public static ViewGroup a(View view) {
        if (a.a(f.class) || view == null) {
            return null;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                return (ViewGroup) parent;
            }
            return null;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    private static Class<?> a(String str) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public static void a(View view, View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        if (!a.a(f.class)) {
            Object obj = null;
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
                }
                if (obj == null) {
                    view.setOnClickListener(onClickListener);
                } else {
                    field.set(obj, onClickListener);
                }
            } catch (Exception e4) {
            } catch (Throwable th) {
                a.a(th, f.class);
            }
        }
    }

    public static boolean a(View view, View view2) {
        View a2;
        if (a.a(f.class)) {
            return false;
        }
        try {
            if (!view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup") || (a2 = a(m(view), view2)) == null) {
                return false;
            }
            return a2.getId() == view.getId();
        } catch (Throwable th) {
            a.a(th, f.class);
            return false;
        }
    }

    public static List<View> b(View view) {
        if (a.a(f.class)) {
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
            a.a(th, f.class);
            return null;
        }
    }

    public static JSONObject c(View view) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
                f19461b = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                try {
                    if (!a.a(f.class)) {
                        try {
                            String e = e(view);
                            String f = f(view);
                            Object tag = view.getTag();
                            CharSequence contentDescription = view.getContentDescription();
                            jSONObject.put("classname", view.getClass().getCanonicalName());
                            jSONObject.put("classtypebitmask", d(view));
                            jSONObject.put("id", view.getId());
                            if (!d.a(view)) {
                                jSONObject.put("text", ae.a(ae.c(e), ""));
                            } else {
                                jSONObject.put("text", "");
                                jSONObject.put("is_user_input", true);
                            }
                            jSONObject.put("hint", ae.a(ae.c(f), ""));
                            if (tag != null) {
                                jSONObject.put("tag", ae.a(ae.c(tag.toString()), ""));
                            }
                            if (contentDescription != null) {
                                jSONObject.put("description", ae.a(ae.c(contentDescription.toString()), ""));
                            }
                            jSONObject.put("dimension", k(view));
                        } catch (JSONException e2) {
                            ae.a(f19460a, (Exception) e2);
                        }
                    }
                } catch (Throwable th) {
                    a.a(th, f.class);
                }
                JSONArray jSONArray = new JSONArray();
                List<View> b2 = b(view);
                for (int i = 0; i < b2.size(); i++) {
                    jSONArray.put(c(b2.get(i)));
                }
                jSONObject.put("childviews", jSONArray);
            } catch (JSONException e3) {
                Log.e(f19460a, "Failed to create JSONObject for view.", e3);
            }
            return jSONObject;
        } catch (Throwable th2) {
            a.a(th2, f.class);
            return null;
        }
    }

    public static int d(View view) {
        int i;
        if (a.a(f.class)) {
            return 0;
        }
        try {
            int i2 = view instanceof ImageView ? 2 : 0;
            int i3 = i2;
            if (view.isClickable()) {
                i3 = i2 | 32;
            }
            int i4 = i3;
            if (j(view)) {
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
                            if (a(view, f19461b.get())) {
                                i = i4 | 64;
                            }
                        }
                    }
                }
                i = i4 | 4096;
            }
            return i;
        } catch (Throwable th) {
            a.a(th, f.class);
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0132 A[Catch: all -> 0x0139, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0139, blocks: (B:5:0x000a, B:7:0x0011, B:9:0x001a, B:11:0x0020, B:17:0x003a, B:19:0x0041, B:21:0x004b, B:23:0x0057, B:24:0x005f, B:27:0x006a, B:28:0x009b, B:30:0x00a2, B:31:0x00cf, B:33:0x00d6, B:37:0x00ed, B:39:0x00fc, B:41:0x0103, B:43:0x0114, B:45:0x011b, B:50:0x0132), top: B:55:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e(android.view.View r6) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.b.a.f.e(android.view.View):java.lang.String");
    }

    public static String f(View view) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            CharSequence hint = view instanceof EditText ? ((EditText) view).getHint() : view instanceof TextView ? ((TextView) view).getHint() : null;
            return hint == null ? "" : hint.toString();
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public static View.OnClickListener g(View view) {
        View.OnClickListener onClickListener = null;
        if (a.a(f.class)) {
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
            if (declaredField2 != null) {
                declaredField2.setAccessible(true);
                onClickListener = (View.OnClickListener) declaredField2.get(obj);
            }
            return onClickListener;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return null;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public static View.OnTouchListener h(View view) {
        View.OnTouchListener onTouchListener = null;
        try {
            if (a.a(f.class)) {
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
                        if (declaredField2 != null) {
                            declaredField2.setAccessible(true);
                            onTouchListener = (View.OnTouchListener) declaredField2.get(obj);
                        }
                        return onTouchListener;
                    } catch (ClassNotFoundException e) {
                        ae.a(f19460a, (Exception) e);
                        return null;
                    }
                } catch (NoSuchFieldException e2) {
                    ae.a(f19460a, (Exception) e2);
                    return null;
                }
            } catch (IllegalAccessException e3) {
                ae.a(f19460a, (Exception) e3);
                return null;
            }
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    public static View i(View view) {
        if (a.a(f.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (l(view)) {
                    return view;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                a.a(th, f.class);
                return null;
            }
        }
        return null;
    }

    private static boolean j(View view) {
        if (a.a(f.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            Class<?> a2 = a("android.support.v4.view.NestedScrollingChild");
            if (a2 != null && a2.isInstance(parent)) {
                return true;
            }
            Class<?> a3 = a("androidx.core.view.NestedScrollingChild");
            if (a3 != null) {
                return a3.isInstance(parent);
            }
            return false;
        } catch (Throwable th) {
            a.a(th, f.class);
            return false;
        }
    }

    private static JSONObject k(View view) {
        if (a.a(f.class)) {
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
                Log.e(f19460a, "Failed to create JSONObject for dimension.", e);
            }
            return jSONObject;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    private static boolean l(View view) {
        if (a.a(f.class)) {
            return false;
        }
        try {
            return view.getClass().getName().equals("com.facebook.react.ReactRootView");
        } catch (Throwable th) {
            a.a(th, f.class);
            return false;
        }
    }

    private static float[] m(View view) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }
}
