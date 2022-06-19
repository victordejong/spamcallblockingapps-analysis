package p193e.p194a.p1113o4;

import android.os.Bundle;
import com.google.firebase.messaging.RemoteMessage;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p194a.p1195s.p1211r.AbstractC20162a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1388f.C21742a;
import p193e.p194a.p195a.p244k.p245a.AbstractC6648y;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p793g3.AbstractC14425e;
import s1.z.c.l;
/* renamed from: e.a.o4.c */
/* loaded from: classes12-dex2jar.jar:e/a/o4/c.class */
public final class C18921c implements AbstractC18920b {

    /* renamed from: a */
    public final a<C21742a> f53051a;

    /* renamed from: b */
    public final a<AbstractC14425e> f53052b;

    /* renamed from: c */
    public final a<AbstractC6648y> f53053c;

    /* renamed from: d */
    public final a<AbstractC18931l> f53054d;

    /* renamed from: e */
    public final a<AbstractC8432l> f53055e;

    /* renamed from: f */
    public final Provider<AbstractC20162a> f53056f;

    /* renamed from: g */
    public final a<C20592g> f53057g;

    @Inject
    public C18921c(a<C21742a> aVar, a<AbstractC14425e> aVar2, a<AbstractC6648y> aVar3, a<AbstractC18931l> aVar4, a<AbstractC8432l> aVar5, Provider<AbstractC20162a> provider, a<C20592g> aVar6) {
        l.e(aVar, "flashNotificationManager");
        l.e(aVar2, "cleverTapNotificationManager");
        l.e(aVar3, "imNotificationManager");
        l.e(aVar4, "tcNotificationManager");
        l.e(aVar5, "accountManager");
        l.e(provider, "callAssistantPushHandler");
        l.e(aVar6, "featuresRegistry");
        this.f53051a = aVar;
        this.f53052b = aVar2;
        this.f53053c = aVar3;
        this.f53054d = aVar4;
        this.f53055e = aVar5;
        this.f53056f = provider;
        this.f53057g = aVar6;
    }

    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // p193e.p194a.p1113o4.AbstractC18920b
    /* renamed from: a */
    public void mo14324a(Object obj) {
        Map<String, String> map;
        String str;
        char c;
        AbstractC20162a abstractC20162a;
        synchronized (this) {
            l.e(obj, "remoteMessage");
            if (obj instanceof RemoteMessage) {
                map = ((RemoteMessage) obj).o2();
            } else if (!(obj instanceof com.huawei.hms.push.RemoteMessage)) {
                C10480a.m26061I1(new IllegalArgumentException("RemoteMessage -Unsupported type"));
                return;
            } else {
                map = ((com.huawei.hms.push.RemoteMessage) obj).getDataOfMap();
            }
            if (obj instanceof RemoteMessage) {
                RemoteMessage remoteMessage = (RemoteMessage) obj;
                String string = remoteMessage.a.getString("google.message_id");
                str = string;
                if (string == null) {
                    str = remoteMessage.a.getString("message_id");
                }
            } else if (!(obj instanceof com.huawei.hms.push.RemoteMessage)) {
                C10480a.m26061I1(new IllegalArgumentException("RemoteMessage -Unsupported type"));
                return;
            } else {
                str = ((com.huawei.hms.push.RemoteMessage) obj).getMessageId();
            }
            if (obj instanceof RemoteMessage) {
                Object obj2 = ((RemoteMessage) obj).a.get("google.sent_time");
                if (obj2 instanceof Long) {
                    c = ((Long) obj2).longValue();
                } else {
                    if (obj2 instanceof String) {
                        try {
                            c = Long.parseLong((String) obj2);
                        } catch (NumberFormatException e) {
                            String valueOf = String.valueOf(obj2);
                            valueOf.length();
                            "Invalid sent time: ".concat(valueOf);
                        }
                    }
                    c = 0;
                }
            } else if (!(obj instanceof com.huawei.hms.push.RemoteMessage)) {
                C10480a.m26061I1(new IllegalArgumentException("RemoteMessage -Unsupported type"));
                return;
            } else {
                c = ((com.huawei.hms.push.RemoteMessage) obj).getSentTime();
            }
            l.d(map, RemoteMessageConst.DATA);
            String str2 = map.get("_type");
            if (str2 == null) {
                str2 = map.get("wzrk_pn");
            }
            if (str2 == null) {
                if (!map.containsKey("a") && !map.containsKey("e")) {
                    str2 = null;
                }
                str2 = RemoteMessageConst.NOTIFICATION;
            }
            if (str2 != null) {
                switch (str2.hashCode()) {
                    case -1001256387:
                        if (str2.equals("call_assistant") && ((C20592g) this.f53057g.get()).m10997H().isEnabled() && (abstractC20162a = (AbstractC20162a) this.f53056f.get()) != null) {
                            abstractC20162a.mo11458a(map);
                            break;
                        }
                        break;
                    case 3364:
                        if (str2.equals("im")) {
                            ((AbstractC6648y) this.f53053c.get()).mo30601a(map);
                            break;
                        }
                        break;
                    case 3569038:
                        if (str2.equals("true")) {
                            ((AbstractC14425e) this.f53052b.get()).mo20109a(obj);
                            break;
                        }
                        break;
                    case 97513456:
                        if (str2.equals("flash") && ((AbstractC8432l) this.f53055e.get()).mo28580d()) {
                            ((C21742a) this.f53051a.get()).m9139a(map, str);
                            break;
                        }
                        break;
                    case 595233003:
                        if (str2.equals(RemoteMessageConst.NOTIFICATION)) {
                            m14323b(map, c);
                            break;
                        }
                        break;
                }
            }
        }
    }

    /* renamed from: b */
    public final void m14323b(Map<String, String> map, long j) {
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        ((AbstractC18931l) this.f53054d.get()).mo14310d(bundle, j);
    }
}
