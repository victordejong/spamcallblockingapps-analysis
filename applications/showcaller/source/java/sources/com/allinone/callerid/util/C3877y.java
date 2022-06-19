package com.allinone.callerid.util;

import android.content.Context;
import com.allinone.callerid.model.C3071a;
import com.allinone.callerid.p197j.C3029a;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.y */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/y.class */
public class C3877y {

    /* renamed from: a */
    private AbstractC3879b f12239a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.y$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/y$a.class */
    public class RunnableC3878a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12240d;

        RunnableC3878a(Context context) {
            C3877y.this = r4;
            this.f12240d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("id", C3767h1.m24275M(this.f12240d));
                hashMap.put("version", C3767h1.m24265W(this.f12240d));
                hashMap.put("is_android", "1");
                String m26207a = C3029a.m26207a("https://info.show-caller.com/gonglue_xilie/ping.php", hashMap);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "result:" + m26207a);
                }
                JSONObject jSONObject = new JSONObject(m26207a);
                int i = jSONObject.getInt("status");
                int i2 = jSONObject.getInt("in_control");
                if (i != 1 || i2 != 0) {
                    return;
                }
                C3071a c3071a = new C3071a();
                c3071a.m26043d(jSONObject.getString("update_url"));
                c3071a.m26044c(jSONObject.getString("min_version_in_maintenance"));
                if (C3877y.this.f12239a == null) {
                    return;
                }
                C3877y.this.f12239a.mo23893a(c3071a);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.y$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/y$b.class */
    public interface AbstractC3879b {
        /* renamed from: a */
        void mo23893a(C3071a c3071a);
    }

    /* renamed from: b */
    public void m23895b(Context context) {
        C3772i0.m24190a().f12015b.execute(new RunnableC3878a(context));
    }

    /* renamed from: c */
    public void m23894c(AbstractC3879b abstractC3879b) {
        this.f12239a = abstractC3879b;
    }
}
