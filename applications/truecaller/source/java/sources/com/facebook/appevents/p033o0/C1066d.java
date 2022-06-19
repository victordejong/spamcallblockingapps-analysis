package com.facebook.appevents.p033o0;

import android.os.Bundle;
import com.facebook.appevents.C1087r;
import com.facebook.appevents.p028j0.C1002a;
import com.facebook.appevents.p033o0.C1067e;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import p193e.p1538j.C23228f0;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0007J\u001e\u0010\r\u001a\u00020\u000e2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;", "", "()V", "TAG", "", "buildEventsBundle", "Landroid/os/Bundle;", "eventType", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "applicationId", "appEvents", "", "Lcom/facebook/appevents/AppEvent;", "buildEventsJson", "Lorg/json/JSONArray;", "includeImplicitEvents", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.o0.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/d.class */
public final class C1066d {

    /* renamed from: a */
    public static final C1066d f2939a = new C1066d();

    /* renamed from: b */
    public static final String f2940b;

    static {
        String simpleName = C1067e.class.getSimpleName();
        l.d(simpleName, "RemoteServiceWrapper::class.java.simpleName");
        f2940b = simpleName;
    }

    /* renamed from: a */
    public static final Bundle m41822a(C1067e.EnumC1068a enumC1068a, String str, List<C1087r> list) {
        if (C1220a.m41623b(C1066d.class)) {
            return null;
        }
        try {
            l.e(enumC1068a, "eventType");
            l.e(str, "applicationId");
            l.e(list, "appEvents");
            Bundle bundle = new Bundle();
            bundle.putString("event", enumC1068a.f2947a);
            bundle.putString(HiAnalyticsConstant.BI_KEY_APP_ID, str);
            if (C1067e.EnumC1068a.CUSTOM_APP_EVENTS == enumC1068a) {
                JSONArray m41821b = f2939a.m41821b(list, str);
                if (m41821b.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", m41821b.toString());
            }
            return bundle;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1066d.class);
            return null;
        }
    }

    /* renamed from: b */
    public final JSONArray m41821b(List<C1087r> list, String str) {
        boolean z;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            List a1 = i.a1(list);
            C1002a c1002a = C1002a.f2761a;
            C1002a.m41914b(a1);
            if (C1220a.m41623b(this)) {
                z = false;
            } else {
                C1127d0 c1127d0 = C1127d0.f3107a;
                C1124c0 m41738f = C1127d0.m41738f(str, false);
                z = false;
                if (m41738f != null) {
                    z = m41738f.f3091a;
                }
            }
            Iterator it = ((ArrayList) a1).iterator();
            while (it.hasNext()) {
                C1087r c1087r = (C1087r) it.next();
                if (c1087r.f3010e == null ? true : l.a(c1087r.m41785a(), c1087r.f3010e)) {
                    boolean z2 = c1087r.f3007b;
                    if ((!z2) || (z2 && z)) {
                        jSONArray.put(c1087r.f3006a);
                    }
                } else {
                    l.j("Event with invalid checksum: ", c1087r);
                    C23228f0 c23228f0 = C23228f0.f64291a;
                    boolean z3 = C23228f0.f64299i;
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
