package p193e.p194a.p1080o.p1097b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.utils.SavedReasonsState;
import com.truecaller.data.entity.CallContextMessage;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p1080o.p1100m.C18784a;
import p193e.p194a.p1080o.p1100m.C18785b;
import p193e.p194a.p1080o.p1100m.C18786c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import s1.z.c.l;
/* renamed from: e.a.o.b.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/e.class */
public final class C18707e implements AbstractC18705d {

    /* renamed from: a */
    public SavedReasonsState f52573a = SavedReasonsState.NOT_IDENTIFIED;

    /* renamed from: b */
    public final AbstractC19462a f52574b;

    @Inject
    public C18707e(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f52574b = abstractC19462a;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18705d
    /* renamed from: a */
    public void mo14616a(String str, Map<String, String> map) {
        l.e(str, "eventName");
        AbstractC19462a abstractC19462a = this.f52574b;
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        HashMap hashMap = null;
        while (true) {
            HashMap hashMap2 = hashMap;
            if (!it.hasNext()) {
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, hashMap2, null);
                l.d(c19505a, "AnalyticsEvent.Builder(e…\n                .build()");
                abstractC19462a.mo13271e(c19505a);
                return;
            }
            Map.Entry<String, String> next = it.next();
            String key = next.getKey();
            String value = next.getValue();
            HashMap hashMap3 = hashMap2;
            if (hashMap2 == null) {
                hashMap3 = new HashMap();
            }
            hashMap3.put(key, value);
            hashMap = hashMap3;
        }
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18705d
    /* renamed from: b */
    public void mo14615b(String str) {
        l.e(str, "messageId");
        this.f52574b.mo13274b(new C18784a(str));
    }

    /* renamed from: c */
    public final void m14614c(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("Context", str);
        hashMap.put("Setting", str2);
        hashMap.put("State", str3);
        AbstractC19462a abstractC19462a = this.f52574b;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SettingChanged", null, hashMap, null);
        l.d(c19505a, "event.build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18705d
    /* renamed from: e */
    public void mo14613e(String str, boolean z) {
        l.e(str, AnalyticsConstants.CONTEXT);
        int ordinal = this.f52573a.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2 && !z) {
                m14614c(str, "OnBoardingContextCallSettings", "Disabled");
            }
        } else if (z) {
            m14614c(str, "OnBoardingContextCallSettings", "Enabled");
        }
        this.f52573a = z ? SavedReasonsState.ENABLED : SavedReasonsState.DISABLED;
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18705d
    /* renamed from: g */
    public void mo14612g(String str, String str2) {
        l.e(str, "messageId");
        l.e(str2, AnalyticsConstants.CONTEXT);
        this.f52574b.mo13274b(new C18786c(str, str2));
    }

    @Override // p193e.p194a.p1080o.p1097b.AbstractC18705d
    /* renamed from: h */
    public void mo14611h(CallContextMessage callContextMessage, String str) {
        l.e(callContextMessage, "contextCallMessage");
        l.e(str, "response");
        this.f52574b.mo13274b(new C18785b(callContextMessage, str));
    }
}
