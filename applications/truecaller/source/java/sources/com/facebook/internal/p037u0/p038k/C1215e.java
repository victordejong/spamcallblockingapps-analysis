package com.facebook.internal.p037u0.p038k;

import com.facebook.GraphRequest;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.C1201e;
import com.facebook.internal.p037u0.C1205i;
import com.facebook.internal.p037u0.C1210j;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23244l0;
import s1.d0.j;
import s1.u.i;
import s1.u.z;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/facebook/internal/instrument/anrreport/ANRHandler;", "", "()V", "MAX_ANR_REPORT_NUM", "", "enabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enable", "", "sendANRReports", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.u0.k.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/k/e.class */
public final class C1215e {

    /* renamed from: a */
    public static final C1215e f3290a = null;

    /* renamed from: b */
    public static final AtomicBoolean f3291b = new AtomicBoolean(false);

    /* renamed from: a */
    public static final void m41626a() {
        File[] fileArr;
        if (C1220a.m41623b(C1215e.class)) {
            return;
        }
        try {
            if (C1168q0.m41701A()) {
                return;
            }
            File m41632b = C1210j.m41632b();
            if (m41632b == null) {
                fileArr = new File[0];
            } else {
                File[] listFiles = m41632b.listFiles(C1201e.f3262a);
                fileArr = listFiles;
                if (listFiles == null) {
                    fileArr = new File[0];
                }
            }
            ArrayList arrayList = new ArrayList(fileArr.length);
            for (File file : fileArr) {
                arrayList.add(C1205i.C1206a.m41634a(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((C1205i) obj).m41636b()) {
                    arrayList2.add(obj);
                }
            }
            final List F0 = i.F0(arrayList2, C1213c.f3284a);
            JSONArray jSONArray = new JSONArray();
            z it = j.j(0, Math.min(F0.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(F0.get(it.a()));
            }
            C1210j.m41629e("anr_reports", jSONArray, new GraphRequest.AbstractC0922b() { // from class: com.facebook.internal.u0.k.b
                @Override // com.facebook.GraphRequest.AbstractC0922b
                /* renamed from: a */
                public final void mo7325a(C23244l0 c23244l0) {
                    List<C1205i> list = F0;
                    if (C1220a.m41623b(C1215e.class)) {
                        return;
                    }
                    try {
                        l.e(list, "$validReports");
                        l.e(c23244l0, "response");
                        try {
                            if (c23244l0.f64335e != null) {
                                return;
                            }
                            JSONObject jSONObject = c23244l0.f64336f;
                            if (!l.a(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean(AnalyticsConstants.SUCCESS)), Boolean.TRUE)) {
                                return;
                            }
                            for (C1205i c1205i : list) {
                                C1210j.m41633a(c1205i.f3267a);
                            }
                        } catch (JSONException e) {
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1215e.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C1215e.class);
        }
    }
}
