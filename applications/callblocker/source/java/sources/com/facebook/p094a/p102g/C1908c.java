package com.facebook.p094a.p102g;

import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.g.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/c.class */
class C1908c {

    /* renamed from: a */
    static final String f5762a = C1908c.class.getCanonicalName();

    /* renamed from: b */
    private static final List<Class<? extends View>> f5763b = new ArrayList(Arrays.asList(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class));

    C1908c() {
    }

    /* renamed from: a */
    public static List<View> m15908a(View view) {
        ArrayList arrayList = new ArrayList();
        Iterator<Class<? extends View>> it = f5763b.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().isInstance(view)) {
                    break;
                }
            } else {
                if (view.isClickable()) {
                    arrayList.add(view);
                }
                for (View view2 : C1829f.m16173b(view)) {
                    arrayList.addAll(m15908a(view2));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static JSONObject m15907a(View view, View view2) {
        JSONObject jSONObject = new JSONObject();
        if (view == view2) {
            try {
                jSONObject.put("is_interacted", true);
            } catch (JSONException e) {
            }
        }
        m15906a(view, jSONObject);
        JSONArray jSONArray = new JSONArray();
        List<View> m16173b = C1829f.m16173b(view);
        for (int i = 0; i < m16173b.size(); i++) {
            jSONArray.put(m15907a(m16173b.get(i), view2));
        }
        jSONObject.put("childviews", jSONArray);
        return jSONObject;
    }

    /* renamed from: a */
    public static void m15906a(View view, JSONObject jSONObject) {
        try {
            String m16170e = C1829f.m16170e(view);
            String m16169f = C1829f.m16169f(view);
            jSONObject.put("classname", view.getClass().getSimpleName());
            jSONObject.put("classtypebitmask", C1829f.m16171d(view));
            if (!m16170e.isEmpty()) {
                jSONObject.put("text", m16170e);
            }
            if (!m16169f.isEmpty()) {
                jSONObject.put("hint", m16169f);
            }
            if (!(view instanceof EditText)) {
                return;
            }
            jSONObject.put("inputtype", ((EditText) view).getInputType());
        } catch (JSONException e) {
        }
    }
}
