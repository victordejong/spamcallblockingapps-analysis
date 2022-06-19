package com.facebook.appevents.p035q0;

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
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J\u0018\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\nH\u0007R\u001c\u0010\u0003\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;", "", "()V", "blacklistedViews", "", "Ljava/lang/Class;", "Landroid/view/View;", "getAllClickableViews", ViewAction.VIEW, "getDictionaryOfView", "Lorg/json/JSONObject;", "clickedView", "getTextOfChildren", "", "getTextOfViewRecursively", "hostView", "updateBasicInfo", "", "json", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.g */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/g.class */
public final class C1082g {

    /* renamed from: a */
    public static final C1082g f2987a = new C1082g();

    /* renamed from: b */
    public static final List<Class<? extends View>> f2988b = i.T(new Class[]{Switch.class, Spinner.class, DatePicker.class, TimePicker.class, RadioGroup.class, RatingBar.class, EditText.class, AdapterView.class});

    /* renamed from: a */
    public static final List<View> m41801a(View view) {
        if (C1220a.m41623b(C1082g.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            ArrayList arrayList = new ArrayList();
            Iterator<Class<? extends View>> it = f2988b.iterator();
            do {
                if (!it.hasNext()) {
                    if (view.isClickable()) {
                        arrayList.add(view);
                    }
                    C1000f c1000f = C1000f.f2756a;
                    for (View view2 : C1000f.m41929a(view)) {
                        arrayList.addAll(m41801a(view2));
                    }
                    return arrayList;
                }
            } while (!it.next().isInstance(view));
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1082g.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final JSONObject m41800b(View view, View view2) {
        if (C1220a.m41623b(C1082g.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            l.e(view2, "clickedView");
            JSONObject jSONObject = new JSONObject();
            if (view == view2) {
                try {
                    jSONObject.put("is_interacted", true);
                } catch (JSONException e) {
                }
            }
            m41797e(view, jSONObject);
            JSONArray jSONArray = new JSONArray();
            C1000f c1000f = C1000f.f2756a;
            for (View view3 : C1000f.m41929a(view)) {
                jSONArray.put(m41800b(view3, view2));
            }
            jSONObject.put("childviews", jSONArray);
            return jSONObject;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1082g.class);
            return null;
        }
    }

    /* renamed from: d */
    public static final String m41798d(View view) {
        if (C1220a.m41623b(C1082g.class)) {
            return null;
        }
        try {
            l.e(view, "hostView");
            C1000f c1000f = C1000f.f2756a;
            String m41920j = C1000f.m41920j(view);
            if (m41920j.length() > 0) {
                return m41920j;
            }
            String join = TextUtils.join(StringConstant.SPACE, f2987a.m41799c(view));
            l.d(join, "join(\" \", childrenText)");
            return join;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1082g.class);
            return null;
        }
    }

    /* renamed from: e */
    public static final void m41797e(View view, JSONObject jSONObject) {
        if (C1220a.m41623b(C1082g.class)) {
            return;
        }
        try {
            l.e(view, ViewAction.VIEW);
            l.e(jSONObject, "json");
            try {
                C1000f c1000f = C1000f.f2756a;
                String m41920j = C1000f.m41920j(view);
                String m41922h = C1000f.m41922h(view);
                jSONObject.put("classname", view.getClass().getSimpleName());
                jSONObject.put("classtypebitmask", C1000f.m41928b(view));
                if (m41920j.length() > 0) {
                    jSONObject.put("text", m41920j);
                }
                if (m41922h.length() > 0) {
                    jSONObject.put("hint", m41922h);
                }
                if (!(view instanceof EditText)) {
                    return;
                }
                jSONObject.put("inputtype", ((EditText) view).getInputType());
            } catch (JSONException e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1082g.class);
        }
    }

    /* renamed from: c */
    public final List<String> m41799c(View view) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            C1000f c1000f = C1000f.f2756a;
            for (View view2 : C1000f.m41929a(view)) {
                C1000f c1000f2 = C1000f.f2756a;
                String m41920j = C1000f.m41920j(view2);
                if (m41920j.length() > 0) {
                    arrayList.add(m41920j);
                }
                arrayList.addAll(m41799c(view2));
            }
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
