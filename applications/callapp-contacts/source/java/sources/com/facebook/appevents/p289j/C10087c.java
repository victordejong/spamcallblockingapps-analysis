package com.facebook.appevents.p289j;

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
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.j.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/c.class */
class C10087c {

    /* renamed from: a */
    static final String f33420a = "com.facebook.appevents.j.c";

    /* renamed from: b */
    private static final List<Class<? extends View>> f33421b = new ArrayList(Arrays.asList(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class));

    C10087c() {
    }

    /* renamed from: a */
    public static List<View> m23436a(View view) {
        if (C10249a.m23108a(C10087c.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<Class<? extends View>> it2 = f33421b.iterator();
            do {
                if (!it2.hasNext()) {
                    if (view.isClickable()) {
                        arrayList.add(view);
                    }
                    for (View view2 : C9981f.m23700b(view)) {
                        arrayList.addAll(m23436a(view2));
                    }
                    return arrayList;
                }
            } while (!it2.next().isInstance(view));
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10087c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m23435a(View view, View view2) {
        if (C10249a.m23108a(C10087c.class)) {
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
            if (!C10249a.m23108a(C10087c.class)) {
                try {
                    String m23697e = C9981f.m23697e(view);
                    String m23696f = C9981f.m23696f(view);
                    jSONObject.put("classname", view.getClass().getSimpleName());
                    jSONObject.put("classtypebitmask", C9981f.m23698d(view));
                    if (!m23697e.isEmpty()) {
                        jSONObject.put("text", m23697e);
                    }
                    if (!m23696f.isEmpty()) {
                        jSONObject.put("hint", m23696f);
                    }
                    if (view instanceof EditText) {
                        jSONObject.put("inputtype", ((EditText) view).getInputType());
                    }
                } catch (JSONException e2) {
                } catch (Throwable th) {
                    C10249a.m23106a(th, C10087c.class);
                }
            }
            JSONArray jSONArray = new JSONArray();
            for (View view3 : C9981f.m23700b(view)) {
                jSONArray.put(m23435a(view3, view2));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th2) {
            C10249a.m23106a(th2, C10087c.class);
            return null;
        }
    }

    /* renamed from: b */
    public static String m23434b(View view) {
        if (C10249a.m23108a(C10087c.class)) {
            return null;
        }
        try {
            String m23697e = C9981f.m23697e(view);
            return !m23697e.isEmpty() ? m23697e : TextUtils.join(StringUtils.SPACE, m23433c(view));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10087c.class);
            return null;
        }
    }

    /* renamed from: c */
    private static List<String> m23433c(View view) {
        if (C10249a.m23108a(C10087c.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (View view2 : C9981f.m23700b(view)) {
                String m23697e = C9981f.m23697e(view2);
                if (!m23697e.isEmpty()) {
                    arrayList.add(m23697e);
                }
                arrayList.addAll(m23433c(view2));
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10087c.class);
            return null;
        }
    }
}
