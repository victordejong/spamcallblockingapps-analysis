package com.facebook.appevents.p025h0;

import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/facebook/appevents/aam/MetadataIndexer;", "", "()V", "TAG", "", "enabled", "", "enable", "", "onActivityResumed", "activity", "Landroid/app/Activity;", "updateRules", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.h0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/c.class */
public final class C0964c {

    /* renamed from: a */
    public static final C0964c f2655a = new C0964c();

    /* renamed from: b */
    public static final String f2656b = "com.facebook.appevents.h0.c";

    /* renamed from: c */
    public static boolean f2657c;

    /* renamed from: a */
    public final void m41968a() {
        String str;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1127d0 c1127d0 = C1127d0.f3107a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            C1124c0 m41738f = C1127d0.m41738f(C23228f0.m7353b(), false);
            if (m41738f == null || (str = m41738f.f3101k) == null) {
                return;
            }
            C0966e c0966e = C0966e.f2659d;
            l.e(str, "rulesFromServer");
            try {
                C0966e.m41963a().clear();
                C0966e.m41962b(new JSONObject(str));
            } catch (JSONException e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
