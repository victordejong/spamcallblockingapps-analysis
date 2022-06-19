package com.facebook.appevents.p287h;

import android.os.Bundle;
import com.facebook.appevents.C10002c;
import com.facebook.appevents.p282c.C10006a;
import com.facebook.appevents.p287h.C10071c;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.appevents.h.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/b.class */
public class C10070b {

    /* renamed from: a */
    private static final String f33392a = C10071c.class.getSimpleName();

    C10070b() {
    }

    /* renamed from: a */
    public static Bundle m23467a(C10071c.EnumC10072a enumC10072a, String str, List<C10002c> list) {
        if (C10249a.m23108a(C10070b.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(list);
            Bundle bundle = new Bundle();
            bundle.putString("event", enumC10072a.toString());
            bundle.putString(PangleAdapterConfiguration.APP_ID_EXTRA_KEY, str);
            if (C10071c.EnumC10072a.CUSTOM_APP_EVENTS == enumC10072a) {
                JSONArray m23465a = m23465a(arrayList, str);
                if (m23465a.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", m23465a.toString());
            }
            return bundle;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10070b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static JSONArray m23465a(List<C10002c> list, String str) {
        if (C10249a.m23108a(C10070b.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            C10006a.m23638a(list);
            boolean m23466a = m23466a(str);
            for (C10002c c10002c : list) {
                if (!c10002c.m23645a()) {
                    new StringBuilder("Event with invalid checksum: ").append(c10002c.toString());
                    C10213ae.m23250a();
                } else if ((!c10002c.f33250b) || (c10002c.f33250b && m23466a)) {
                    jSONArray.put(c10002c.f33249a);
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10070b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m23466a(String str) {
        boolean z = false;
        if (C10249a.m23108a(C10070b.class)) {
            return false;
        }
        try {
            C10302p m23026a = C10306q.m23026a(str, false);
            if (m23026a != null) {
                z = m23026a.f33844a;
            }
            return z;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10070b.class);
            return false;
        }
    }
}
