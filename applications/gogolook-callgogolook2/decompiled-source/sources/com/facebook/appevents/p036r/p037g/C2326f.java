package com.facebook.appevents.p036r.p037g;

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
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.NestedScrollingChild;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.facebook.internal.C2408g0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.r.g.f */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/f.class */
public class C2326f {

    /* renamed from: a */
    public static final String f2822a = "com.facebook.appevents.r.g.f";

    /* renamed from: b */
    public static WeakReference<View> f2823b = new WeakReference<>(null);
    @Nullable

    /* renamed from: c */
    public static Method f2824c = null;

    @Nullable
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: a */
    public static View m35169a(View view) {
        while (view != null) {
            if (m35154m(view)) {
                return view;
            }
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
        return null;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: a */
    public static View m35166a(float[] fArr, @Nullable View view) {
        m35170a();
        Method method = f2824c;
        if (method == null || view == null) {
            return null;
        }
        try {
            View view2 = (View) method.invoke(null, fArr, view);
            if (view2 == null || view2.getId() <= 0) {
                return null;
            }
            View view3 = (View) view2.getParent();
            if (view3 == null) {
                view3 = null;
            }
            return view3;
        } catch (IllegalAccessException e) {
            C2408g0.m34853a(f2822a, (Exception) e);
            return null;
        } catch (InvocationTargetException e2) {
            C2408g0.m34853a(f2822a, (Exception) e2);
            return null;
        }
    }

    /* renamed from: a */
    public static void m35170a() {
        if (f2824c == null) {
            try {
                f2824c = Class.forName("com.facebook.react.uimanager.TouchTargetHelper").getDeclaredMethod("findTouchTargetView", float[].class, ViewGroup.class);
                f2824c.setAccessible(true);
            } catch (ClassNotFoundException e) {
                C2408g0.m34853a(f2822a, (Exception) e);
            } catch (NoSuchMethodException e2) {
                C2408g0.m34853a(f2822a, (Exception) e2);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: a */
    public static void m35167a(View view, JSONObject jSONObject) {
        try {
            String j = m35157j(view);
            String h = m35159h(view);
            Object tag = view.getTag();
            CharSequence contentDescription = view.getContentDescription();
            jSONObject.put("classname", view.getClass().getCanonicalName());
            jSONObject.put("classtypebitmask", m35164c(view));
            jSONObject.put("id", view.getId());
            if (!C2324d.m35180a(view)) {
                jSONObject.put("text", C2408g0.m34852a(C2408g0.m34806g(j), ""));
            } else {
                jSONObject.put("text", "");
                jSONObject.put("is_user_input", true);
            }
            jSONObject.put("hint", C2408g0.m34852a(C2408g0.m34806g(h), ""));
            if (tag != null) {
                jSONObject.put(NovaHomeBadger.TAG, C2408g0.m34852a(C2408g0.m34806g(tag.toString()), ""));
            }
            if (contentDescription != null) {
                jSONObject.put("description", C2408g0.m34852a(C2408g0.m34806g(contentDescription.toString()), ""));
            }
            jSONObject.put("dimension", m35162e(view));
        } catch (JSONException e) {
            C2408g0.m34853a(f2822a, (Exception) e);
        }
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: a */
    public static boolean m35168a(View view, @Nullable View view2) {
        boolean z = false;
        if (view.getClass().getName().equals("com.facebook.react.views.view.ReactViewGroup")) {
            View a = m35166a(m35156k(view), view2);
            z = false;
            if (a != null) {
                z = false;
                if (a.getId() == view.getId()) {
                    z = true;
                }
            }
        }
        return z;
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: b */
    public static List<View> m35165b(View view) {
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

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: c */
    public static int m35164c(View view) {
        int i;
        int i2 = view instanceof ImageView ? 2 : 0;
        int i3 = i2;
        if (view.isClickable()) {
            i3 = i2 | 32;
        }
        int i4 = i3;
        if (m35155l(view)) {
            i4 = i3 | 512;
        }
        if (view instanceof TextView) {
            int i5 = i4 | 1024 | 1;
            int i6 = i5;
            if (view instanceof Button) {
                int i7 = i5 | 4;
                if (view instanceof Switch) {
                    i6 = i7 | 8192;
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
        } else if ((view instanceof Spinner) || (view instanceof DatePicker)) {
            i = i4 | 4096;
        } else if (view instanceof RatingBar) {
            i = i4 | 65536;
        } else if (view instanceof RadioGroup) {
            i = i4 | 16384;
        } else {
            i = i4;
            if (view instanceof ViewGroup) {
                i = i4;
                if (m35168a(view, f2823b.get())) {
                    i = i4 | 64;
                }
            }
        }
        return i;
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: d */
    public static JSONObject m35163d(View view) {
        if (view.getClass().getName().equals("com.facebook.react.ReactRootView")) {
            f2823b = new WeakReference<>(view);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            m35167a(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            List<View> b = m35165b(view);
            for (int i = 0; i < b.size(); i++) {
                jSONArray.put(m35163d(b.get(i)));
            }
            jSONObject.put("childviews", jSONArray);
        } catch (JSONException e) {
            Log.e(f2822a, "Failed to create JSONObject for view.", e);
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static JSONObject m35162e(View view) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("top", view.getTop());
            jSONObject.put(TtmlNode.LEFT, view.getLeft());
            jSONObject.put("width", view.getWidth());
            jSONObject.put("height", view.getHeight());
            jSONObject.put("scrollx", view.getScrollX());
            jSONObject.put("scrolly", view.getScrollY());
            jSONObject.put("visibility", view.getVisibility());
        } catch (JSONException e) {
            Log.e(f2822a, "Failed to create JSONObject for dimension.", e);
        }
        return jSONObject;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: f */
    public static View.OnClickListener m35161f(View view) {
        View.OnClickListener onClickListener;
        try {
            Field declaredField = Class.forName(ExploreByTouchHelper.DEFAULT_CLASS_NAME).getDeclaredField("mListenerInfo");
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
            } else {
                onClickListener = null;
            }
            return onClickListener;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return null;
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: g */
    public static View.OnTouchListener m35160g(View view) {
        View.OnTouchListener onTouchListener;
        try {
            Field declaredField = Class.forName(ExploreByTouchHelper.DEFAULT_CLASS_NAME).getDeclaredField("mListenerInfo");
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
            } else {
                onTouchListener = null;
            }
            return onTouchListener;
        } catch (ClassNotFoundException e) {
            C2408g0.m34853a(f2822a, (Exception) e);
            return null;
        } catch (IllegalAccessException e2) {
            C2408g0.m34853a(f2822a, (Exception) e2);
            return null;
        } catch (NoSuchFieldException e3) {
            C2408g0.m34853a(f2822a, (Exception) e3);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: h */
    public static String m35159h(View view) {
        CharSequence hint = view instanceof EditText ? ((EditText) view).getHint() : view instanceof TextView ? ((TextView) view).getHint() : null;
        return hint == null ? "" : hint.toString();
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: i */
    public static ViewGroup m35158i(View view) {
        if (view == null) {
            return null;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            return (ViewGroup) parent;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: j */
    public static String m35157j(View view) {
        String str;
        if (view instanceof TextView) {
            str = ((TextView) view).getText();
            if (view instanceof Switch) {
                str = ((Switch) view).isChecked() ? "1" : "0";
            }
        } else if (view instanceof Spinner) {
            Spinner spinner = (Spinner) view;
            str = null;
            if (spinner.getCount() > 0) {
                Object selectedItem = spinner.getSelectedItem();
                str = null;
                if (selectedItem != null) {
                    str = selectedItem.toString();
                }
            }
        } else {
            int i = 0;
            if (view instanceof DatePicker) {
                DatePicker datePicker = (DatePicker) view;
                str = String.format("%04d-%02d-%02d", Integer.valueOf(datePicker.getYear()), Integer.valueOf(datePicker.getMonth()), Integer.valueOf(datePicker.getDayOfMonth()));
            } else if (view instanceof TimePicker) {
                TimePicker timePicker = (TimePicker) view;
                str = String.format("%02d:%02d", Integer.valueOf(timePicker.getCurrentHour().intValue()), Integer.valueOf(timePicker.getCurrentMinute().intValue()));
            } else if (view instanceof RadioGroup) {
                RadioGroup radioGroup = (RadioGroup) view;
                int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
                int childCount = radioGroup.getChildCount();
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
            } else {
                str = null;
                if (view instanceof RatingBar) {
                    str = String.valueOf(((RatingBar) view).getRating());
                }
            }
        }
        return str == null ? "" : str.toString();
    }

    /* renamed from: k */
    public static float[] m35156k(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new float[]{iArr[0], iArr[1]};
    }

    /* renamed from: l */
    public static boolean m35155l(View view) {
        ViewParent parent = view.getParent();
        return (parent instanceof AdapterView) || (parent instanceof NestedScrollingChild);
    }

    @RestrictTo({RestrictTo.Scope.GROUP_ID})
    /* renamed from: m */
    public static boolean m35154m(View view) {
        return view.getClass().getName().equals("com.facebook.react.ReactRootView");
    }
}
