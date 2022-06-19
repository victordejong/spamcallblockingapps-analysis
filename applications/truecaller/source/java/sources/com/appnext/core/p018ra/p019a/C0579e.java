package com.appnext.core.p018ra.p019a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.appnext.base.C0472a;
import com.appnext.core.p018ra.database.C0581a;
import com.appnext.core.p018ra.database.RecentAppsDatabase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import org.json.JSONArray;
/* renamed from: com.appnext.core.ra.a.e */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a/e.class */
public class C0579e extends AbstractC0575b {
    public C0579e(Context context, Bundle bundle) {
        super(context, bundle);
    }

    @Override // com.appnext.core.p018ra.p019a.AbstractC0575b
    /* renamed from: aM */
    public final void mo42309aM() {
        try {
            Bundle m42313aP = m42313aP();
            if (m42313aP == null) {
                return;
            }
            String string = m42313aP.getString("more_data");
            if (TextUtils.isEmpty(string)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(string);
            if (jSONArray.length() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            String format = AbstractC0575b.m42312aQ().format(new Date());
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                String string2 = jSONArray.getString(i);
                if (string2.matches("^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[0-9a-z_]$")) {
                    C0581a c0581a = new C0581a();
                    c0581a.f1876eQ = string2;
                    c0581a.f1877eR = format;
                    c0581a.f1878eS = false;
                    arrayList.add(c0581a);
                }
            }
            long[] mo42300b = RecentAppsDatabase.getInstance(getContext()).recentAppDao().mo42300b(arrayList);
            if (mo42300b != null) {
                new StringBuilder("Store ra is finished with ids - ").append(Arrays.toString(mo42300b));
            }
            new StringBuilder("Store ra is finished - db recents apps  - ").append(RecentAppsDatabase.getInstance(getContext()).recentAppDao().mo42302aR().toString());
        } catch (Throwable th) {
            C0472a.m42577a("StoreRecentAppsAction$doUniqueAction", th);
        }
    }

    @Override // com.appnext.core.p018ra.p019a.AbstractC0575b
    /* renamed from: aN */
    public final boolean mo42308aN() {
        return true;
    }
}
