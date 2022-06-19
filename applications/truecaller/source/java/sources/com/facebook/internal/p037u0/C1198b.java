package com.facebook.internal.p037u0;

import com.facebook.GraphRequest;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.C1205i;
import com.facebook.internal.p037u0.p039l.C1218c;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23240k0;
import p193e.p1538j.C23244l0;
import s1.z.c.l;
/* renamed from: com.facebook.internal.u0.b */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/u0/b.class */
public final /* synthetic */ class C1198b implements C1115a0.AbstractC1116a {

    /* renamed from: a */
    public static final /* synthetic */ C1198b f3259a = new C1198b();

    @Override // com.facebook.internal.C1115a0.AbstractC1116a
    /* renamed from: a */
    public final void mo7331a(boolean z) {
        File[] fileArr;
        if (z) {
            C1218c.C1219a c1219a = C1218c.f3294b;
            synchronized (c1219a) {
                C23228f0 c23228f0 = C23228f0.f64291a;
                if (C23228f0.m7352c()) {
                    c1219a.m41625a();
                }
                if (C1218c.f3296d != null) {
                    C1218c.C1219a c1219a2 = C1218c.f3294b;
                    String str = C1218c.f3295c;
                } else {
                    C1218c c1218c = new C1218c(Thread.getDefaultUncaughtExceptionHandler(), null);
                    C1218c.f3296d = c1218c;
                    Thread.setDefaultUncaughtExceptionHandler(c1218c);
                }
            }
            C1115a0 c1115a0 = C1115a0.f3048a;
            if (C1115a0.m41751b(C1115a0.EnumC1117b.CrashShield)) {
                C1204h.f3265a = true;
                if (C23228f0.m7352c() && !C1168q0.m41701A()) {
                    File m41632b = C1210j.m41632b();
                    if (m41632b == null) {
                        fileArr = new File[0];
                    } else {
                        File[] listFiles = m41632b.listFiles(C1202f.f3263a);
                        fileArr = listFiles;
                        if (listFiles == null) {
                            fileArr = new File[0];
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    int length = fileArr.length;
                    int i = 0;
                    while (i < length) {
                        int i2 = i + 1;
                        final C1205i m41634a = C1205i.C1206a.m41634a(fileArr[i]);
                        i = i2;
                        if (m41634a.m41636b()) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("crash_shield", m41634a.toString());
                                GraphRequest.C0923c c0923c = GraphRequest.f2543k;
                                C23228f0 c23228f02 = C23228f0.f64291a;
                                String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C23228f0.m7353b()}, 1));
                                l.d(format, "java.lang.String.format(format, *args)");
                                arrayList.add(c0923c.m41999i(null, format, jSONObject, new GraphRequest.AbstractC0922b() { // from class: com.facebook.internal.u0.a
                                    @Override // com.facebook.GraphRequest.AbstractC0922b
                                    /* renamed from: a */
                                    public final void mo7325a(C23244l0 c23244l0) {
                                        C1205i c1205i = C1205i.this;
                                        l.e(c1205i, "$instrumentData");
                                        l.e(c23244l0, "response");
                                        try {
                                            if (c23244l0.f64335e != null) {
                                                return;
                                            }
                                            JSONObject jSONObject2 = c23244l0.f64336f;
                                            if (!l.a(jSONObject2 == null ? null : Boolean.valueOf(jSONObject2.getBoolean(AnalyticsConstants.SUCCESS)), Boolean.TRUE)) {
                                                return;
                                            }
                                            C1210j.m41633a(c1205i.f3267a);
                                        } catch (JSONException e) {
                                        }
                                    }
                                }));
                                i = i2;
                            } catch (JSONException e) {
                                i = i2;
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        GraphRequest.f2543k.m42004d(new C23240k0(arrayList));
                    }
                }
                C1220a c1220a = C1220a.f3298a;
                C1220a.f3300c = true;
            }
            C1115a0 c1115a02 = C1115a0.f3048a;
            C1115a0.m41751b(C1115a0.EnumC1117b.ThreadCheck);
        }
    }
}
