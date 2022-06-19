package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.freshchat.consumer.sdk.beans.UserEvent;
import com.freshchat.consumer.sdk.beans.UserEventsConfig;
import com.freshchat.consumer.sdk.exception.InvalidEventException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* renamed from: com.freshchat.consumer.sdk.j.by */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/by.class */
public class C1669by {

    /* renamed from: mH */
    private static C1669by f4446mH;

    /* renamed from: mJ */
    private Handler f4448mJ;

    /* renamed from: mK */
    private RunnableC1671b f4449mK;

    /* renamed from: mL */
    private final Set<String> f4450mL = new HashSet();

    /* renamed from: mI */
    private final C1670a f4447mI = new C1670a();

    /* renamed from: com.freshchat.consumer.sdk.j.by$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/by$a.class */
    public class C1670a {

        /* renamed from: cS */
        private C1597ab f4451cS = new C1597ab();

        public C1670a() {
            C1669by.this = r5;
        }

        /* renamed from: bT */
        private boolean m40039bT(Context context) {
            try {
                long m39866fP = C1719n.m39866fP();
                C1466e m40905i = C1466e.m40905i(context);
                if (C1719n.m39873c(m40905i.m40921gL(), m39866fP)) {
                    m40905i.m40922gK();
                    return true;
                } else if (!C1466e.m40905i(context).m40964bl()) {
                    return true;
                } else {
                    int m40923gJ = m40905i.m40923gJ();
                    UserEventsConfig eventsConfig = C1622ap.m40245bD(context).getEventsConfig();
                    if (m40923gJ < eventsConfig.getMaxAllowedEventsPerDay()) {
                        return true;
                    }
                    C1613ai.m40283e("FRESHCHAT", "User events have reached the daily limit of " + eventsConfig.getMaxAllowedEventsPerDay());
                    return false;
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                return false;
            }
        }

        /* renamed from: bk */
        private Map<String, UserEvent> m40038bk(String str) {
            try {
                return (Map) this.f4451cS.fromJson(str, new C1676cb(this).getType());
            } catch (Exception e) {
                C1723q.m39823a(e);
                return new LinkedHashMap();
            }
        }

        /* renamed from: d */
        private void m40036d(Context context, Map<String, UserEvent> map) {
            try {
                C1466e.m40905i(context).m40995aa(this.f4451cS.toJson(map));
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }

        /* renamed from: e */
        private void m40035e(Context context, Map<String, UserEvent> map) {
            try {
                C1466e.m40905i(context).m41001Z(this.f4451cS.toJson(map));
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }

        /* renamed from: a */
        public void m40043a(Context context, UserEvent userEvent) {
            if (!m40039bT(context)) {
                return;
            }
            C1466e m40905i = C1466e.m40905i(context);
            m40905i.m41010E(m40905i.m40923gJ() + 1);
            UserEventsConfig eventsConfig = C1622ap.m40245bD(context).getEventsConfig();
            Map<String, UserEvent> m40041bR = m40041bR(context);
            if (m40041bR.size() > eventsConfig.getMaxAllowedEventsPerDay()) {
                m40041bR.remove(m40041bR.keySet().iterator().next());
            }
            m40041bR.put(UUID.randomUUID().toString(), userEvent);
            m40035e(context, m40041bR);
            m40905i.m40880w(userEvent.getOccTime());
        }

        /* renamed from: a */
        public void m40042a(Context context, Set<String> set) {
            if (C1716k.isEmpty(set)) {
                return;
            }
            Map<String, UserEvent> m40040bS = m40040bS(context);
            if (C1716k.m39897c(m40040bS)) {
                return;
            }
            for (String str : set) {
                m40040bS.remove(str);
            }
            m40036d(context, m40040bS);
        }

        /* renamed from: bR */
        public Map<String, UserEvent> m40041bR(Context context) {
            return m40038bk(C1466e.m40905i(context).m40926gG());
        }

        /* renamed from: bS */
        public Map<String, UserEvent> m40040bS(Context context) {
            return m40038bk(C1466e.m40905i(context).m40924gI());
        }

        /* renamed from: c */
        public void m40037c(Context context, Map<String, UserEvent> map) {
            try {
                Map<String, UserEvent> m40040bS = m40040bS(context);
                m40040bS.putAll(map);
                m40036d(context, m40040bS);
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.by$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/by$b.class */
    public class RunnableC1671b implements Runnable {

        /* renamed from: lk */
        private final WeakReference<Context> f4453lk;

        private RunnableC1671b(Context context) {
            C1669by.this = r6;
            this.f4453lk = new WeakReference<>(context.getApplicationContext());
        }

        public /* synthetic */ RunnableC1671b(C1669by c1669by, Context context, RunnableC1672bz runnableC1672bz) {
            this(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4453lk.get() != null) {
                C1669by.this.m40047d(this.f4453lk.get(), false);
            } else {
                C1669by.this.m40044gO();
            }
        }
    }

    private C1669by() {
    }

    /* renamed from: E */
    public void m40063E(Context context, String str) throws InvalidEventException {
        int maxCharsPerEventName = C1466e.m40905i(context).getMaxCharsPerEventName();
        if (C1629av.m40210d(str, maxCharsPerEventName)) {
            return;
        }
        throw new InvalidEventException(str, maxCharsPerEventName);
    }

    /* renamed from: a */
    private void m40061a(EnumC1464c enumC1464c, String str, long j) {
        C1613ai.m40283e("FRESHCHAT", enumC1464c.toString().replace("{{user_event_key_placeholder}}", str).replace("{{user_event_property_limit_placeholder}}", String.valueOf(j)));
    }

    /* renamed from: b */
    public Map<String, Object> m40053b(Context context, Map<String, Object> map) {
        EnumC1464c enumC1464c;
        HashMap hashMap = new HashMap();
        if (map != null && !C1716k.m39897c(map)) {
            long maxAllowedPropertiesPerEvent = C1622ap.m40245bD(context).getEventsConfig().getMaxAllowedPropertiesPerEvent();
            EnumC1464c enumC1464c2 = null;
            Iterator<String> it = map.keySet().iterator();
            String str = "";
            int i = 0;
            while (true) {
                enumC1464c = enumC1464c2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (i >= maxAllowedPropertiesPerEvent) {
                    EnumC1464c enumC1464c3 = EnumC1464c.USER_EVENT_PROPERTY_COUNT_EXCEEDED_ERROR;
                    m40061a(enumC1464c3, next, maxAllowedPropertiesPerEvent);
                    enumC1464c = enumC1464c3;
                    break;
                }
                i++;
                C1466e m40905i = C1466e.m40905i(context);
                if (!C1629av.m40210d(next, m40905i.getMaxCharsPerEventPropertyName())) {
                    enumC1464c2 = EnumC1464c.USER_EVENT_PROPERTY_KEY_LENGTH_ERROR;
                    if (C1626as.isEmpty(next)) {
                        enumC1464c2 = EnumC1464c.USER_EVENT_PROPERTY_KEY_EMPTY_ERROR;
                    }
                    str = C1626as.m40228b(next) > ((long) m40905i.getMaxCharsPerEventPropertyName()) ? next.substring(0, m40905i.getMaxCharsPerEventPropertyName() - 1) : next;
                    m40061a(enumC1464c2, str, maxAllowedPropertiesPerEvent);
                } else {
                    Object obj = map.get(next);
                    if (!C1629av.m40209e(obj)) {
                        enumC1464c2 = EnumC1464c.USER_EVENT_PROPERTY_VALUE_UNSUPPORTED_ERROR;
                    } else if (!C1629av.m40210d(String.valueOf(obj), m40905i.getMaxCharsPerEventPropertyValue())) {
                        enumC1464c2 = EnumC1464c.USER_EVENT_PROPERTY_VALUE_LENGTH_ERROR;
                        if (C1626as.isEmpty(String.valueOf(obj))) {
                            enumC1464c2 = EnumC1464c.USER_EVENT_PROPERTY_VALUE_EMPTY_ERROR;
                        }
                    } else {
                        hashMap.put(next, obj);
                    }
                    m40061a(enumC1464c2, next, maxAllowedPropertiesPerEvent);
                    str = next;
                }
            }
            if (enumC1464c != null) {
                hashMap.put("fc_error", enumC1464c.getErrorMessage().replace("{{user_event_key_placeholder}}", str).replace("{{user_event_property_limit_placeholder}}", String.valueOf(maxAllowedPropertiesPerEvent)));
            }
        }
        return hashMap;
    }

    /* renamed from: bO */
    public Map<String, UserEvent> m40051bO(Context context) {
        HashMap hashMap = new HashMap();
        Map<String, UserEvent> m40040bS = this.f4447mI.m40040bS(context);
        for (String str : m40040bS.keySet()) {
            if (!this.f4450mL.contains(str)) {
                hashMap.put(str, m40040bS.get(str));
            }
        }
        return hashMap;
    }

    /* renamed from: bP */
    private void m40050bP(Context context) {
        C1466e.m40905i(context).m40925gH();
    }

    /* renamed from: c */
    public void m40048c(Context context, String str, Map<String, UserEvent> map) {
        if (C1716k.m39897c(map)) {
            return;
        }
        this.f4450mL.addAll(map.keySet());
        this.f4447mI.m40037c(context, map);
        long maxEventsPerBatch = C1466e.m40905i(context).getMaxEventsPerBatch();
        int size = map.size();
        if (size <= maxEventsPerBatch) {
            C1638b.m40145a(context, str, map);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            HashMap hashMap = null;
            for (String str2 : map.keySet()) {
                HashMap hashMap2 = hashMap;
                if (hashMap == null) {
                    hashMap2 = new HashMap();
                }
                int i3 = i2;
                try {
                    int i4 = i2;
                    if (map.get(str2) == null) {
                        hashMap = hashMap2;
                    } else {
                        hashMap2.put(str2, map.get(str2));
                        int i5 = i2 + 1;
                        if (i5 % maxEventsPerBatch != 0) {
                            i2 = i5;
                            hashMap = hashMap2;
                            if (i5 == size) {
                            }
                        }
                        C1638b.m40145a(context, str, hashMap2);
                        i = i5;
                    }
                } catch (Exception e) {
                    C1723q.m39823a(e);
                    i2 = i3;
                    hashMap = hashMap2;
                }
            }
            return;
        }
    }

    /* renamed from: e */
    public void m40046e(Context context, boolean z) {
        if (!C1466e.m40905i(context).m40964bl()) {
            return;
        }
        try {
            UserEventsConfig eventsConfig = C1622ap.m40245bD(context).getEventsConfig();
            C1466e m40905i = C1466e.m40905i(context);
            Map<String, UserEvent> m40041bR = this.f4447mI.m40041bR(context);
            int m39893f = C1716k.m39893f(m40041bR);
            if (m39893f <= 0) {
                return;
            }
            if (!z && m39893f < eventsConfig.getTriggerUploadOnEventsCount()) {
                return;
            }
            m40044gO();
            m40048c(context, m40905i.m40966bj(), m40041bR);
            m40050bP(context);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: gN */
    public static C1669by m40045gN() {
        if (f4446mH == null) {
            synchronized (C1669by.class) {
                try {
                    if (f4446mH == null) {
                        f4446mH = new C1669by();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4446mH;
    }

    /* renamed from: gO */
    public void m40044gO() {
        RunnableC1671b runnableC1671b;
        Handler handler = this.f4448mJ;
        if (handler != null && (runnableC1671b = this.f4449mK) != null) {
            handler.removeCallbacks(runnableC1671b);
        }
        this.f4448mJ = null;
        this.f4449mK = null;
    }

    /* renamed from: a */
    public void m40062a(Context context, Set<String> set, boolean z) {
        if (C1716k.isEmpty(set)) {
            return;
        }
        for (String str : set) {
            this.f4450mL.remove(str);
        }
        if (!z) {
            return;
        }
        this.f4447mI.m40042a(context, set);
    }

    /* renamed from: b */
    public void m40054b(Context context, String str, Map<String, Object> map) {
        C1646be.m40116eC().m40113gx().execute(new RunnableC1672bz(this, context, str, map));
    }

    /* renamed from: bQ */
    public void m40049bQ(Context context) {
        if (this.f4448mJ == null || this.f4449mK == null) {
            this.f4448mJ = new Handler(Looper.getMainLooper());
            this.f4449mK = new RunnableC1671b(this, context, null);
            this.f4448mJ.postDelayed(this.f4449mK, C1466e.m40905i(context).getMaxDelayInMillisUntilUpload());
        }
    }

    /* renamed from: d */
    public void m40047d(Context context, boolean z) {
        C1646be.m40116eC().m40113gx().execute(new RunnableC1675ca(this, z, context));
    }
}
