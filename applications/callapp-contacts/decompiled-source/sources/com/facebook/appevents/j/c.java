package com.facebook.appevents.j;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import com.facebook.appevents.b.a.f;
import com.facebook.internal.b.b.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/c.class */
class c {

    /* renamed from: a  reason: collision with root package name */
    static final String f19636a = "com.facebook.appevents.j.c";

    /* renamed from: b  reason: collision with root package name */
    private static final List<Class<? extends View>> f19637b = new ArrayList(Arrays.asList(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class));

    c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<View> a(View view) {
        if (a.a(c.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<Class<? extends View>> it2 = f19637b.iterator();
            do {
                if (!it2.hasNext()) {
                    if (view.isClickable()) {
                        arrayList.add(view);
                    }
                    for (View view2 : f.b(view)) {
                        arrayList.addAll(a(view2));
                    }
                    return arrayList;
                }
            } while (!it2.next().isInstance(view));
            return arrayList;
        } catch (Throwable th) {
            a.a(th, c.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(View view, View view2) {
        if (a.a(c.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (view == view2) {
                try {
                    jSONObject.put("is_interacted", true);
                } catch (JSONException e) {
                }
            }
            if (!a.a(c.class)) {
                try {
                    String e2 = f.e(view);
                    String f = f.f(view);
                    jSONObject.put("classname", view.getClass().getSimpleName());
                    jSONObject.put("classtypebitmask", f.d(view));
                    if (!e2.isEmpty()) {
                        jSONObject.put("text", e2);
                    }
                    if (!f.isEmpty()) {
                        jSONObject.put("hint", f);
                    }
                    if (view instanceof EditText) {
                        jSONObject.put("inputtype", ((EditText) view).getInputType());
                    }
                } catch (JSONException e3) {
                } catch (Throwable th) {
                    a.a(th, c.class);
                }
            }
            JSONArray jSONArray = new JSONArray();
            for (View view3 : f.b(view)) {
                jSONArray.put(a(view3, view2));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th2) {
            a.a(th2, c.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(View view) {
        if (a.a(c.class)) {
            return null;
        }
        try {
            String e = f.e(view);
            return !e.isEmpty() ? e : TextUtils.join(StringUtils.SPACE, c(view));
        } catch (Throwable th) {
            a.a(th, c.class);
            return null;
        }
    }

    private static List<String> c(View view) {
        if (a.a(c.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (View view2 : f.b(view)) {
                String e = f.e(view2);
                if (!e.isEmpty()) {
                    arrayList.add(e);
                }
                arrayList.addAll(c(view2));
            }
            return arrayList;
        } catch (Throwable th) {
            a.a(th, c.class);
            return null;
        }
    }
}
