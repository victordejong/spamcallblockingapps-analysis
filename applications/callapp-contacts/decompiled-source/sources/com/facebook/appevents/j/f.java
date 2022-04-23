package com.facebook.appevents.j;

import android.os.Bundle;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.g.c;
import com.facebook.appevents.h;
import com.facebook.appevents.m;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/f.class */
public final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19646a = "com.facebook.appevents.j.f";

    /* renamed from: c  reason: collision with root package name */
    private static final Set<Integer> f19647c = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private View.OnClickListener f19648b;

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<View> f19649d;
    private WeakReference<View> e;
    private String f;

    private f(View view, View view2, String str) {
        this.f19648b = com.facebook.appevents.b.a.f.g(view);
        this.e = new WeakReference<>(view);
        this.f19649d = new WeakReference<>(view2);
        this.f = str.toLowerCase().replace("activity", "");
    }

    static /* synthetic */ String a(f fVar) {
        if (a.a(f.class)) {
            return null;
        }
        try {
            return fVar.f;
        } catch (Throwable th) {
            a.a(th, f.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(View view, View view2, String str) {
        if (!a.a(f.class)) {
            try {
                int hashCode = view.hashCode();
                Set<Integer> set = f19647c;
                if (!set.contains(Integer.valueOf(hashCode))) {
                    com.facebook.appevents.b.a.f.a(view, new f(view, view2, str));
                    set.add(Integer.valueOf(hashCode));
                }
            } catch (Throwable th) {
                a.a(th, f.class);
            }
        }
    }

    static /* synthetic */ void a(String str, String str2, float[] fArr) {
        if (!a.a(f.class)) {
            try {
                if (a.a(f.class)) {
                    return;
                }
                if (d.a(str)) {
                    h hVar = new m(g.i()).f19658a;
                    if (!a.a(hVar)) {
                        try {
                            Bundle bundle = new Bundle();
                            bundle.putString("_is_suggested_event", "1");
                            bundle.putString("_button_text", str2);
                            hVar.a(str, bundle);
                        } catch (Throwable th) {
                            a.a(th, hVar);
                        }
                    }
                } else if (d.b(str)) {
                    b(str, str2, fArr);
                }
            } catch (Throwable th2) {
                a.a(th2, f.class);
            }
        }
    }

    private static boolean a(String str, final String str2) {
        if (a.a(f.class)) {
            return false;
        }
        try {
            final String a2 = b.a(str);
            if (a2 == null) {
                return false;
            }
            if (a2.equals("other")) {
                return true;
            }
            ae.a(new Runnable() { // from class: com.facebook.appevents.j.f.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!a.a(this)) {
                        try {
                            f.a(a2, str2, new float[0]);
                        } catch (Throwable th) {
                            a.a(th, this);
                        }
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            a.a(th, f.class);
            return false;
        }
    }

    private static void b(String str, String str2, float[] fArr) {
        if (!a.a(f.class)) {
            try {
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
                    bundle.putString("metadata", jSONObject.toString());
                    GraphRequest a2 = GraphRequest.a((AccessToken) null, String.format(Locale.US, "%s/suggested_events", g.m()), (JSONObject) null, (GraphRequest.b) null);
                    a2.f19373d = bundle;
                    GraphRequest.a(a2);
                } catch (JSONException e) {
                }
            } catch (Throwable th) {
                a.a(th, f.class);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!a.a(this)) {
            try {
                View.OnClickListener onClickListener = this.f19648b;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                if (!a.a(this)) {
                    View view2 = this.f19649d.get();
                    View view3 = this.e.get();
                    if (view2 != null && view3 != null) {
                        try {
                            final String b2 = c.b(view3);
                            final String a2 = b.a(view3, b2);
                            if (a2 != null && !a(a2, b2)) {
                                final JSONObject jSONObject = new JSONObject();
                                jSONObject.put("view", c.a(view2, view3));
                                jSONObject.put("screenname", this.f);
                                if (!a.a(this)) {
                                    try {
                                        ae.a(new Runnable() { // from class: com.facebook.appevents.j.f.2
                                            /* JADX WARN: Type inference failed for: r1v6, types: [float[], float[][]] */
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                String[] a3;
                                                if (!a.a(this)) {
                                                    try {
                                                        String lowerCase = ae.f(g.i()).toLowerCase();
                                                        float[] a4 = a.a(jSONObject, lowerCase);
                                                        String a5 = a.a(b2, f.a(f.this), lowerCase);
                                                        if (a4 != null && (a3 = c.a(c.a.MTML_APP_EVENT_PREDICTION, new float[]{a4}, new String[]{a5})) != null) {
                                                            String str = a3[0];
                                                            b.a(a2, str);
                                                            if (!str.equals("other")) {
                                                                f.a(str, b2, a4);
                                                            }
                                                        }
                                                    } catch (Exception e) {
                                                    } catch (Throwable th) {
                                                        a.a(th, this);
                                                    }
                                                }
                                            }
                                        });
                                    } catch (Throwable th) {
                                        a.a(th, this);
                                    }
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                }
            } catch (Throwable th2) {
                a.a(th2, this);
            }
        }
    }
}
