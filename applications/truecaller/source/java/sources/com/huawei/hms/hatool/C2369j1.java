package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.util.LinkedHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.j1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/j1.class */
public class C2369j1 {

    /* renamed from: a */
    public String f7539a;

    /* renamed from: b */
    public C2374m f7540b;

    public C2369j1(String str) {
        this.f7539a = str;
        this.f7540b = new C2374m(str);
        C2366i.m37672c().m37674a(this.f7539a, this.f7540b);
    }

    /* renamed from: a */
    public void m37652a(int i) {
        C2398y.m37475b("hmsSdk", "HiAnalyticsInstance.onReport() is execute.TAG: %s,TYPE: %d", this.f7539a, Integer.valueOf(i));
        C2367i1.m37670a().m37668a(this.f7539a, i);
    }

    /* renamed from: a */
    public void m37651a(int i, String str, LinkedHashMap<String, String> linkedHashMap) {
        C2398y.m37475b("hmsSdk", "HiAnalyticsInstance.onEvent(int type, String eventId, Map<String, String> mapValue) is execute.TAG: %s,TYPE: %d, eventId: %s", this.f7539a, Integer.valueOf(i), str);
        if (C2386s0.m37536a(str) || !m37646c(i)) {
            StringBuilder m8728C = C22128a.m8728C("onEvent() parameters check fail. Nothing will be recorded.TAG: ");
            m8728C.append(this.f7539a);
            m8728C.append(", TYPE: ");
            m8728C.append(i);
            C2398y.m37470e("hmsSdk", m8728C.toString());
            return;
        }
        LinkedHashMap<String, String> linkedHashMap2 = linkedHashMap;
        if (!C2386s0.m37532a(linkedHashMap)) {
            StringBuilder m8728C2 = C22128a.m8728C("onEvent() parameter mapValue will be cleared.TAG: ");
            m8728C2.append(this.f7539a);
            m8728C2.append(", TYPE: ");
            m8728C2.append(i);
            C2398y.m37470e("hmsSdk", m8728C2.toString());
            linkedHashMap2 = null;
        }
        C2367i1.m37670a().m37667a(this.f7539a, i, str, linkedHashMap2);
    }

    /* renamed from: a */
    public void m37650a(Context context, String str, String str2) {
        StringBuilder m8728C = C22128a.m8728C("HiAnalyticsInstance.onEvent(eventId, mapValue) is execute.TAG : ");
        m8728C.append(this.f7539a);
        m8728C.append(", eventId : ");
        m8728C.append(str);
        C2398y.m37471d("hmsSdk", m8728C.toString());
        if (context == null) {
            C2398y.m37470e("hmsSdk", "context is null in onevent ");
        } else if (C2386s0.m37536a(str) || !m37646c(0)) {
            StringBuilder m8728C2 = C22128a.m8728C("onEvent() parameters check fail. Nothing will be recorded.TAG: ");
            m8728C2.append(this.f7539a);
            C2398y.m37470e("hmsSdk", m8728C2.toString());
        } else {
            String str3 = str2;
            if (!C2386s0.m37535a("value", str2, 65536)) {
                StringBuilder m8728C3 = C22128a.m8728C("onEvent() parameter VALUE is overlong, content will be cleared.TAG: ");
                m8728C3.append(this.f7539a);
                C2398y.m37470e("hmsSdk", m8728C3.toString());
                str3 = "";
            }
            C2367i1.m37670a().m37666a(this.f7539a, context, str, str3);
        }
    }

    /* renamed from: a */
    public void m37649a(C2370k c2370k) {
        StringBuilder m8728C = C22128a.m8728C("HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : ");
        m8728C.append(this.f7539a);
        C2398y.m37473c("hmsSdk", m8728C.toString());
        if (c2370k != null) {
            this.f7540b.m37570a(c2370k);
            return;
        }
        C2398y.m37470e("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!");
        this.f7540b.m37570a((C2370k) null);
    }

    /* renamed from: b */
    public final C2370k m37648b(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f7540b.m37568b();
            }
            if (i == 2) {
                return this.f7540b.m37565d();
            }
            if (i == 3) {
                return this.f7540b.m37571a();
            }
            return null;
        }
        return this.f7540b.m37566c();
    }

    /* renamed from: b */
    public void m37647b(C2370k c2370k) {
        StringBuilder m8728C = C22128a.m8728C("HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: ");
        m8728C.append(this.f7539a);
        C2398y.m37473c("hmsSdk", m8728C.toString());
        if (c2370k != null) {
            this.f7540b.m37567b(c2370k);
            return;
        }
        this.f7540b.m37567b(null);
        C2398y.m37470e("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!");
    }

    /* renamed from: c */
    public final boolean m37646c(int i) {
        String str;
        if (i != 2) {
            C2370k m37648b = m37648b(i);
            if (m37648b != null && !TextUtils.isEmpty(m37648b.m37622h())) {
                return true;
            }
            str = "verifyURL(): URL check failed. type: " + i;
        } else if ("_default_config_tag".equals(this.f7539a)) {
            return true;
        } else {
            str = "verifyURL(): type: preins. Only default config can report Pre-install data.";
        }
        C2398y.m37470e("hmsSdk", str);
        return false;
    }
}
