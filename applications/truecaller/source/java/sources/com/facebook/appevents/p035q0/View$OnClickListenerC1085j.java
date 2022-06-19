package com.facebook.appevents.p035q0;

import android.view.View;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.appevents.p032n0.C1056h;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J \u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\rH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;", "Landroid/view/View$OnClickListener;", "hostView", "Landroid/view/View;", "rootView", "activityName", "", "(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V", "baseListener", "hostViewWeakReference", "Ljava/lang/ref/WeakReference;", "rootViewWeakReference", "onClick", "", ViewAction.VIEW, "predictAndProcess", "pathID", "buttonText", "viewData", "Lorg/json/JSONObject;", "process", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/j.class */
public final class View$OnClickListenerC1085j implements View.OnClickListener {

    /* renamed from: e */
    public static final C1086a f2998e = new C1086a(null);

    /* renamed from: f */
    public static final Set<Integer> f2999f = new HashSet();

    /* renamed from: a */
    public final View.OnClickListener f3000a;

    /* renamed from: b */
    public final WeakReference<View> f3001b;

    /* renamed from: c */
    public final WeakReference<View> f3002c;

    /* renamed from: d */
    public final String f3003d;

    @Metadata(d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0014\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0001¢\u0006\u0002\b\u000fJ \u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J \u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$Companion;", "", "()V", "API_ENDPOINT", "", "OTHER_EVENT", "viewsAttachedListener", "", "", "attachListener", "", "hostView", "Landroid/view/View;", "rootView", "activityName", "attachListener$facebook_core_release", "processPredictedResult", "predictedEvent", "buttonText", "dense", "", "queryHistoryAndProcess", "", "pathID", "sendPredictedResult", "eventToPost", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.q0.j$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/j$a.class */
    public static final class C1086a {
        public C1086a(f fVar) {
        }

        /* renamed from: a */
        public final void m41787a(View view, View view2, String str) {
            Field field;
            Field field2;
            Object obj;
            Field field3;
            l.e(view, "hostView");
            l.e(view2, "rootView");
            l.e(str, "activityName");
            int hashCode = view.hashCode();
            if (!View$OnClickListenerC1085j.m41789a().contains(Integer.valueOf(hashCode))) {
                C1000f c1000f = C1000f.f2756a;
                View$OnClickListenerC1085j view$OnClickListenerC1085j = new View$OnClickListenerC1085j(view, view2, str, null);
                if (!C1220a.m41623b(C1000f.class)) {
                    try {
                        l.e(view, ViewAction.VIEW);
                        try {
                            try {
                                field = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                            } catch (Exception e) {
                            }
                            try {
                                field2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
                            } catch (ClassNotFoundException | NoSuchFieldException e2) {
                                field3 = field;
                                field = field3;
                                field2 = null;
                                if (field != null) {
                                }
                                view.setOnClickListener(view$OnClickListenerC1085j);
                                View$OnClickListenerC1085j.m41789a().add(Integer.valueOf(hashCode));
                            }
                        } catch (ClassNotFoundException | NoSuchFieldException e3) {
                            field3 = null;
                        }
                        if (field != null || field2 == null) {
                            view.setOnClickListener(view$OnClickListenerC1085j);
                        } else {
                            field.setAccessible(true);
                            field2.setAccessible(true);
                            try {
                                field.setAccessible(true);
                                obj = field.get(view);
                            } catch (IllegalAccessException e4) {
                                obj = null;
                            }
                            if (obj == null) {
                                view.setOnClickListener(view$OnClickListenerC1085j);
                            } else {
                                field2.set(obj, view$OnClickListenerC1085j);
                            }
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1000f.class);
                    }
                }
                View$OnClickListenerC1085j.m41789a().add(Integer.valueOf(hashCode));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41786b(java.lang.String r8, java.lang.String r9, float[] r10) {
            /*
                Method dump skipped, instructions count: 368
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p035q0.View$OnClickListenerC1085j.C1086a.m41786b(java.lang.String, java.lang.String, float[]):void");
        }
    }

    public View$OnClickListenerC1085j(View view, View view2, String str, f fVar) {
        C1000f c1000f = C1000f.f2756a;
        this.f3000a = C1000f.m41924f(view);
        this.f3001b = new WeakReference<>(view2);
        this.f3002c = new WeakReference<>(view);
        String lowerCase = str.toLowerCase();
        l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
        this.f3003d = r.t(lowerCase, "activity", "", false, 4);
    }

    /* renamed from: a */
    public static final /* synthetic */ Set m41789a() {
        if (C1220a.m41623b(View$OnClickListenerC1085j.class)) {
            return null;
        }
        try {
            return f2999f;
        } catch (Throwable th) {
            C1220a.m41624a(th, View$OnClickListenerC1085j.class);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41788b() {
        String str;
        boolean z;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            View view = this.f3001b.get();
            View view2 = this.f3002c.get();
            if (view == null || view2 == null) {
                return;
            }
            try {
                C1082g c1082g = C1082g.f2987a;
                final String m41798d = C1082g.m41798d(view2);
                C1081f c1081f = C1081f.f2983a;
                final String m41803b = C1081f.m41803b(view2, m41798d);
                if (m41803b == null) {
                    return;
                }
                C1081f c1081f2 = C1081f.f2983a;
                if (C1220a.m41623b(C1081f.class)) {
                    str = null;
                } else {
                    try {
                        l.e(m41803b, "pathID");
                        Map<String, String> map = C1081f.f2984b;
                        str = null;
                        if (map.containsKey(m41803b)) {
                            str = map.get(m41803b);
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1081f.class);
                        str = null;
                    }
                }
                if (str == null) {
                    z = false;
                } else {
                    if (!l.a(str, "other")) {
                        final String str2 = str;
                        C1168q0.m41688N(new Runnable() { // from class: com.facebook.appevents.q0.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                String str3 = str2;
                                String str4 = m41798d;
                                l.e(str3, "$queriedEvent");
                                l.e(str4, "$buttonText");
                                View$OnClickListenerC1085j.f2998e.m41786b(str3, str4, new float[0]);
                            }
                        });
                    }
                    z = true;
                }
                if (z) {
                    return;
                }
                final JSONObject jSONObject = new JSONObject();
                jSONObject.put(ViewAction.VIEW, C1082g.m41800b(view, view2));
                jSONObject.put("screenname", this.f3003d);
                if (C1220a.m41623b(this)) {
                    return;
                }
                try {
                    C1168q0.m41688N(new Runnable() { // from class: com.facebook.appevents.q0.d
                        /* JADX WARN: Type inference failed for: r1v11, types: [float[], float[][]] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            JSONObject jSONObject2 = jSONObject;
                            String str3 = m41798d;
                            View$OnClickListenerC1085j view$OnClickListenerC1085j = this;
                            String str4 = m41803b;
                            if (C1220a.m41623b(View$OnClickListenerC1085j.class)) {
                                return;
                            }
                            try {
                                l.e(jSONObject2, "$viewData");
                                l.e(str3, "$buttonText");
                                l.e(view$OnClickListenerC1085j, "this$0");
                                l.e(str4, "$pathID");
                                try {
                                    C23228f0 c23228f0 = C23228f0.f64291a;
                                    String m41670m = C1168q0.m41670m(C23228f0.m7354a());
                                    if (m41670m == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                                    }
                                    String lowerCase = m41670m.toLowerCase();
                                    l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                                    float[] m41816a = C1080e.m41816a(jSONObject2, lowerCase);
                                    String m41814c = C1080e.m41814c(str3, view$OnClickListenerC1085j.f3003d, lowerCase);
                                    if (m41816a == null) {
                                        return;
                                    }
                                    C1056h c1056h = C1056h.f2914a;
                                    String[] m41846f = C1056h.m41846f(C1056h.EnumC1057a.MTML_APP_EVENT_PREDICTION, new float[]{m41816a}, new String[]{m41814c});
                                    if (m41846f == null) {
                                        return;
                                    }
                                    String str5 = m41846f[0];
                                    C1081f c1081f3 = C1081f.f2983a;
                                    C1081f.m41804a(str4, str5);
                                    if (l.a(str5, "other")) {
                                        return;
                                    }
                                    View$OnClickListenerC1085j.f2998e.m41786b(str5, str3, m41816a);
                                } catch (Exception e) {
                                }
                            } catch (Throwable th2) {
                                C1220a.m41624a(th2, View$OnClickListenerC1085j.class);
                            }
                        }
                    });
                } catch (Throwable th2) {
                    C1220a.m41624a(th2, this);
                }
            } catch (Exception e) {
            }
        } catch (Throwable th3) {
            C1220a.m41624a(th3, this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(view, ViewAction.VIEW);
            View.OnClickListener onClickListener = this.f3000a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            m41788b();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
