package com.facebook.appevents.p041v;

import android.view.View;
import android.widget.AdapterView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TimePicker;
import com.facebook.appevents.p036r.p037g.C2326f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.v.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/c.class */
public class C2364c {

    /* renamed from: a */
    public static final List<Class<? extends View>> f2915a = new ArrayList(Arrays.asList(Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class));

    /* renamed from: a */
    public static List<View> m35009a(View view) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends View> cls : f2915a) {
            if (cls.isInstance(view)) {
                return arrayList;
            }
        }
        if (view.isClickable()) {
            arrayList.add(view);
        }
        for (View view2 : C2326f.m35165b(view)) {
            arrayList.addAll(m35009a(view2));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static JSONObject m35008a(View view, View view2) {
        JSONObject jSONObject = new JSONObject();
        if (view == view2) {
            try {
                jSONObject.put("is_interacted", true);
            } catch (JSONException e) {
            }
        }
        m35007a(view, jSONObject);
        JSONArray jSONArray = new JSONArray();
        List<View> b = C2326f.m35165b(view);
        for (int i = 0; i < b.size(); i++) {
            jSONArray.put(m35008a(b.get(i), view2));
        }
        jSONObject.put("childviews", jSONArray);
        return jSONObject;
    }

    /* renamed from: a */
    public static void m35007a(View view, JSONObject jSONObject) {
        try {
            String j = C2326f.m35157j(view);
            String h = C2326f.m35159h(view);
            jSONObject.put("classname", view.getClass().getSimpleName());
            jSONObject.put("classtypebitmask", C2326f.m35164c(view));
            if (!j.isEmpty()) {
                jSONObject.put("text", j);
            }
            if (!h.isEmpty()) {
                jSONObject.put("hint", h);
            }
            if (view instanceof EditText) {
                jSONObject.put("inputtype", ((EditText) view).getInputType());
            }
        } catch (JSONException e) {
        }
    }
}
