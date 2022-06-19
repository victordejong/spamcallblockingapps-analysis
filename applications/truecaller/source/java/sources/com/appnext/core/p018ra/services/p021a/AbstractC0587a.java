package com.appnext.core.p018ra.services.p021a;

import android.content.Context;
import android.os.Bundle;
import com.appnext.base.C0472a;
import com.appnext.core.p018ra.p020b.C0580a;
import com.appnext.core.p018ra.services.C0585a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
/* renamed from: com.appnext.core.ra.services.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/services/a/a.class */
public abstract class AbstractC0587a {

    /* renamed from: aM */
    private Context f1886aM;

    public AbstractC0587a(Context context) {
        this.f1886aM = context;
    }

    /* renamed from: a */
    private static Bundle m42293a(C0585a.EnumC0586a enumC0586a) {
        Bundle bundle = new Bundle();
        bundle.putInt("action", enumC0586a.ordinal());
        return bundle;
    }

    /* renamed from: F */
    public abstract boolean mo42288F(String str);

    /* renamed from: G */
    public abstract void mo42287G(String str);

    /* renamed from: a */
    public abstract void mo42285a(C0580a c0580a);

    /* renamed from: aW */
    public final void m42292aW() {
        mo42287G(C0585a.EnumC0586a.SendRA.name());
    }

    /* renamed from: c */
    public final void m42291c(long j) {
        C0585a.EnumC0586a enumC0586a = C0585a.EnumC0586a.SendRA;
        mo42285a(new C0580a(enumC0586a, enumC0586a.hashCode(), m42293a(enumC0586a), j, 120000L, true));
    }

    /* renamed from: d */
    public final void m42290d(long j) {
        try {
            C0585a.EnumC0586a enumC0586a = C0585a.EnumC0586a.DownloadingConfig;
            mo42285a(new C0580a(enumC0586a, enumC0586a.hashCode(), m42293a(enumC0586a), j, j, true));
        } catch (Throwable th) {
            C0472a.m42577a("RecentAppsServiceLogic$scheduleDownloadingConfig", th);
        }
    }

    /* renamed from: d */
    public final void m42289d(ArrayList<String> arrayList) {
        try {
            C0585a.EnumC0586a enumC0586a = C0585a.EnumC0586a.StoreRa;
            Bundle m42293a = m42293a(enumC0586a);
            if (arrayList != null && !arrayList.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                m42293a.putString("more_data", jSONArray.toString());
            }
            C0580a c0580a = new C0580a(enumC0586a, enumC0586a.hashCode() + ((int) (System.currentTimeMillis() % 7)), m42293a, 0L, 0L, false);
            C0585a.EnumC0586a enumC0586a2 = C0585a.EnumC0586a.DownloadingConfig;
            if (mo42288F(enumC0586a2.name())) {
                mo42285a(c0580a);
                return;
            }
            C0580a c0580a2 = new C0580a(enumC0586a2, enumC0586a2.hashCode(), m42293a(enumC0586a2), 0L, 0L, false);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(c0580a2);
            arrayList2.add(c0580a);
            mo42284d((List<C0580a>) arrayList2);
        } catch (Throwable th) {
            C0472a.m42577a("RecentAppsServiceLogic$storeRA", th);
        }
    }

    /* renamed from: d */
    public abstract void mo42284d(List<C0580a> list);

    public final Context getContext() {
        return this.f1886aM;
    }
}
