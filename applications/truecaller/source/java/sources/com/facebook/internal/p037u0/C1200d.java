package com.facebook.internal.p037u0;

import com.facebook.GraphRequest;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.C1210j;
import com.facebook.internal.p037u0.p041n.C1221a;
import com.facebook.internal.p037u0.p041n.C1223c;
import com.facebook.internal.p037u0.p041n.C1224d;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/d.class */
public final /* synthetic */ class C1200d implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1200d f3261a = new C1200d();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        File[] fileArr;
        if (z) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!C23228f0.m7352c() || C1168q0.m41701A()) {
                return;
            }
            File m41632b = C1210j.m41632b();
            if (m41632b == null) {
                fileArr = new File[0];
            } else {
                fileArr = m41632b.listFiles(C1223c.f3303a);
                l.d(fileArr, "reportDir.listFiles { dir, name ->\n      name.matches(Regex(String.format(\"^%s[0-9]+.json$\", InstrumentUtility.ERROR_REPORT_PREFIX)))\n    }");
            }
            final ArrayList arrayList = new ArrayList();
            int length = fileArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                C1224d c1224d = new C1224d(fileArr[i]);
                i = i2;
                if ((c1224d.f3305b == null || c1224d.f3306c == null) ? false : true) {
                    arrayList.add(c1224d);
                    i = i2;
                }
            }
            C25225a.m3953V2(arrayList, C1221a.f3301a);
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < arrayList.size() && i3 < 1000; i3++) {
                jSONArray.put(arrayList.get(i3));
            }
            C1210j.m41629e("error_reports", jSONArray, new GraphRequest.AbstractC0922b() { // from class: com.facebook.internal.u0.n.b
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    ArrayList<C1224d> arrayList2 = arrayList;
                    l.e(arrayList2, "$validReports");
                    l.e(c23244l0, "response");
                    try {
                        if (c23244l0.f64335e != null) {
                            return;
                        }
                        JSONObject jSONObject = c23244l0.f64336f;
                        if (!l.a(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean(AnalyticsConstants.SUCCESS)), Boolean.TRUE)) {
                            return;
                        }
                        for (C1224d c1224d2 : arrayList2) {
                            C1210j.m41633a(c1224d2.f3304a);
                        }
                    } catch (JSONException e) {
                    }
                }
            });
        }
    }
}
