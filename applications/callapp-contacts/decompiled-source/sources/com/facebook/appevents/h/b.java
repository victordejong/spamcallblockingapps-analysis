package com.facebook.appevents.h;

import android.os.Bundle;
import com.facebook.appevents.h.c;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/b.class */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19609a = c.class.getSimpleName();

    b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle a(c.a aVar, String str, List<com.facebook.appevents.c> list) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(list);
            Bundle bundle = new Bundle();
            bundle.putString("event", aVar.toString());
            bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
            if (c.a.CUSTOM_APP_EVENTS == aVar) {
                JSONArray a2 = a(arrayList, str);
                if (a2.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", a2.toString());
            }
            return bundle;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static JSONArray a(List<com.facebook.appevents.c> list, String str) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            com.facebook.appevents.c.a.a(list);
            boolean a2 = a(str);
            for (com.facebook.appevents.c cVar : list) {
                if (!cVar.a()) {
                    new StringBuilder("Event with invalid checksum: ").append(cVar.toString());
                    ae.a();
                } else if ((!cVar.f19502b) || (cVar.f19502b && a2)) {
                    jSONArray.put(cVar.f19501a);
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static boolean a(String str) {
        boolean z = false;
        if (a.a(b.class)) {
            return false;
        }
        try {
            p a2 = q.a(str, false);
            if (a2 != null) {
                z = a2.f19958a;
            }
            return z;
        } catch (Throwable th) {
            a.a(th, b.class);
            return false;
        }
    }
}
