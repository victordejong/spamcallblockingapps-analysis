package com.facebook.appevents.p041v;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2283m;
import com.facebook.appevents.p036r.p037g.C2326f;
import com.facebook.appevents.p039t.C2354b;
import com.facebook.internal.C2408g0;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* renamed from: com.facebook.appevents.v.f */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/f.class */
public final class View$OnClickListenerC2368f implements View.OnClickListener {

    /* renamed from: e */
    public static final Set<Integer> f2924e = new HashSet();
    @Nullable

    /* renamed from: a */
    public View.OnClickListener f2925a;

    /* renamed from: b */
    public WeakReference<View> f2926b;

    /* renamed from: c */
    public WeakReference<View> f2927c;

    /* renamed from: d */
    public String f2928d;

    /* renamed from: com.facebook.appevents.v.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/f$a.class */
    public static final class RunnableC2369a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f2929a;

        /* renamed from: b */
        public final /* synthetic */ String f2930b;

        public RunnableC2369a(String str, String str2) {
            this.f2929a = str;
            this.f2930b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnClickListenerC2368f.m34987b(this.f2929a, this.f2930b, new float[0]);
        }
    }

    /* renamed from: com.facebook.appevents.v.f$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/v/f$b.class */
    public class RunnableC2370b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ JSONObject f2931a;

        /* renamed from: b */
        public final /* synthetic */ String f2932b;

        /* renamed from: c */
        public final /* synthetic */ String f2933c;

        public RunnableC2370b(JSONObject jSONObject, String str, String str2) {
            this.f2931a = jSONObject;
            this.f2932b = str;
            this.f2933c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String a;
            try {
                String lowerCase = C2408g0.m34824c(C6135n.m23746e()).toLowerCase();
                float[] a2 = C2362a.m35021a(this.f2931a, lowerCase);
                String a3 = C2362a.m35024a(this.f2932b, View$OnClickListenerC2368f.this.f2928d, lowerCase);
                if (a2 != null && (a = C2354b.m35060a("SUGGEST_EVENT", a2, a3)) != null) {
                    C2363b.m35010a(this.f2933c, a);
                    if (!a.equals("other")) {
                        View$OnClickListenerC2368f.m34987b(a, this.f2932b, a2);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public View$OnClickListenerC2368f(View view, View view2, String str) {
        this.f2925a = C2326f.m35161f(view);
        this.f2927c = new WeakReference<>(view);
        this.f2926b = new WeakReference<>(view2);
        this.f2928d = str.toLowerCase().replace(ActivityChooserModel.ATTRIBUTE_ACTIVITY, "");
    }

    /* renamed from: a */
    public static void m34992a(View view, View view2, String str) {
        int hashCode = view.hashCode();
        if (!f2924e.contains(Integer.valueOf(hashCode))) {
            view.setOnClickListener(new View$OnClickListenerC2368f(view, view2, str));
            f2924e.add(Integer.valueOf(hashCode));
        }
    }

    /* renamed from: a */
    public static boolean m34990a(String str, String str2) {
        String a = C2363b.m35011a(str);
        if (a == null) {
            return false;
        }
        if (a.equals("other")) {
            return true;
        }
        C2408g0.m34856a(new RunnableC2369a(a, str2));
        return true;
    }

    /* renamed from: b */
    public static void m34987b(String str, String str2, float[] fArr) {
        if (C2365d.m35002b(str)) {
            new C2283m(C6135n.m23746e()).m35302a(str);
        } else if (C2365d.m35004a(str)) {
            m34986c(str, str2, fArr);
        }
    }

    /* renamed from: c */
    public static void m34986c(String str, String str2, float[] fArr) {
        Bundle bundle = new Bundle();
        try {
            bundle.putString("event_name", str);
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb = new StringBuilder();
            for (float f : fArr) {
                sb.append(f);
                sb.append(",");
            }
            jSONObject.put("dense", sb.toString());
            jSONObject.put("button_text", str2);
            bundle.putString(TtmlNode.TAG_METADATA, jSONObject.toString());
            GraphRequest a = GraphRequest.m35460a((AccessToken) null, String.format(Locale.US, "%s/suggested_events", C6135n.m23745f()), (JSONObject) null, (GraphRequest.AbstractC2230f) null);
            a.m35464a(bundle);
            a.m35437b();
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public final void m34993a() {
        View view = this.f2926b.get();
        View view2 = this.f2927c.get();
        if (view != null && view2 != null) {
            try {
                String a = C2363b.m35012a(view2);
                if (a != null) {
                    String j = C2326f.m35157j(view2);
                    if (!m34990a(a, j)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("view", C2364c.m35008a(view, view2));
                        jSONObject.put("screenname", this.f2928d);
                        m34989a(a, j, jSONObject);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public final void m34989a(String str, String str2, JSONObject jSONObject) {
        C2408g0.m34856a(new RunnableC2370b(jSONObject, str2, str));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener = this.f2925a;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        m34993a();
    }
}
