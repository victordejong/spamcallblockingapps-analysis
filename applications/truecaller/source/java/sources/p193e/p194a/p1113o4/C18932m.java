package p193e.p194a.p1113o4;

import android.content.Context;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import o3.a;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.a.a.a.v0.f.d;
import s1.d0.j;
import s1.e0.c0;
import s1.e0.h;
import s1.e0.k;
import s1.e0.x;
import s1.l;
import s1.u.i;
import s1.u.z;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.o4.m */
/* loaded from: classes12-dex2jar.jar:e/a/o4/m.class */
public final class C18932m implements AbstractC18931l {

    /* renamed from: a */
    public final List<Bundle> f53071a = new ArrayList();

    /* renamed from: b */
    public final Context f53072b;

    /* renamed from: c */
    public final a<AbstractC8541a> f53073c;

    /* renamed from: d */
    public final a<AbstractC19462a> f53074d;

    /* renamed from: e.a.o4.m$a */
    /* loaded from: classes12-dex2jar.jar:e/a/o4/m$a.class */
    public static final class C18933a extends m implements l<Bundle, JSONObject> {

        /* renamed from: b */
        public static final C18933a f53075b = new C18933a();

        public C18933a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14307d(Object obj) {
            String str;
            Bundle bundle = (Bundle) obj;
            s1.z.c.l.e(bundle, "payload");
            Set<String> keySet = bundle.keySet();
            s1.z.c.l.d(keySet, "payload.keySet()");
            h h = x.h(i.h(keySet));
            JSONObject jSONObject = new JSONObject();
            h.a aVar = new h.a(h);
            while (aVar.hasNext()) {
                String str2 = (String) aVar.next();
                Object obj2 = bundle.get(str2);
                if (obj2 != null) {
                    str = obj2.toString();
                    if (str != null) {
                        jSONObject = jSONObject.put(str2, str);
                        s1.z.c.l.d(jSONObject, "jsonObject.put(key, payl…d[key]?.toString() ?: \"\")");
                    }
                }
                str = "";
                jSONObject = jSONObject.put(str2, str);
                s1.z.c.l.d(jSONObject, "jsonObject.put(key, payl…d[key]?.toString() ?: \"\")");
            }
            return jSONObject;
        }
    }

    @Inject
    public C18932m(Context context, a<AbstractC8541a> aVar, a<AbstractC19462a> aVar2) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(aVar, "coreSettings");
        s1.z.c.l.e(aVar2, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f53072b = context;
        this.f53073c = aVar;
        this.f53074d = aVar2;
    }

    @Override // p193e.p194a.p1113o4.AbstractC18931l
    /* renamed from: a */
    public void mo14313a() {
        synchronized (this) {
            this.f53071a.clear();
            ((AbstractC8541a) this.f53073c.get()).remove("payloads");
        }
    }

    @Override // p193e.p194a.p1113o4.AbstractC18931l
    /* renamed from: b */
    public void mo14312b() {
        synchronized (this) {
            AbstractC19462a abstractC19462a = (AbstractC19462a) this.f53074d.get();
            for (Bundle bundle : this.f53071a) {
                abstractC19462a.mo13272d(bundle);
            }
        }
    }

    @Override // p193e.p194a.p1113o4.AbstractC18931l
    /* renamed from: c */
    public void mo14311c() {
        Bundle bundle;
        synchronized (this) {
            String string = ((AbstractC8541a) this.f53073c.get()).getString("payloads");
            if (string != null) {
                s1.z.c.l.d(string, "coreSettings.get().getSt…SSAGE_PAYLOADS) ?: return");
                JSONArray jSONArray = new JSONArray(string);
                if (jSONArray instanceof l.a) {
                    ((AbstractC8541a) this.f53073c.get()).remove("payloads");
                } else {
                    JSONArray jSONArray2 = jSONArray;
                    if (jSONArray instanceof l.a) {
                        jSONArray2 = null;
                    }
                    JSONArray jSONArray3 = jSONArray2;
                    if (jSONArray3 == null) {
                        return;
                    }
                    s1.d0.i j = j.j(0, jSONArray3.length());
                    List<Bundle> list = this.f53071a;
                    z it = j.iterator();
                    while (it.hasNext()) {
                        JSONObject jSONObject = jSONArray3.getJSONObject(it.a());
                        JSONObject jSONObject2 = jSONObject;
                        if (jSONObject instanceof l.a) {
                            jSONObject2 = null;
                        }
                        JSONObject jSONObject3 = jSONObject2;
                        if (jSONObject3 != null) {
                            Iterator<String> keys = jSONObject3.keys();
                            s1.z.c.l.d(keys, "jsonObject.keys()");
                            k A = d.A(keys);
                            Bundle bundle2 = new Bundle();
                            Iterator it2 = A.iterator();
                            while (true) {
                                bundle = bundle2;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                String str = (String) it2.next();
                                bundle2.putString(str, jSONObject3.getString(str));
                            }
                        } else {
                            bundle = null;
                        }
                        if (bundle != null) {
                            list.add(bundle);
                        }
                    }
                }
            }
        }
    }

    @Override // p193e.p194a.p1113o4.AbstractC18931l
    /* renamed from: d */
    public void mo14310d(Bundle bundle, long j) {
        synchronized (this) {
            String str = AbstractC18931l.class + " onMessage with Intent";
            this.f53071a.add(bundle);
            m14308f();
            InternalTruecallerNotification m14309e = m14309e(bundle);
            if (m14309e != null) {
                try {
                    C12864a2.m22586H(m14309e, this.f53072b, j);
                } catch (RuntimeException e) {
                    C10480a.m26057J1(e, AbstractC18931l.class + " onNotification - error while handling notification");
                }
            }
            C12864a2.m22549j(this.f53072b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r0.length() == 0) goto L14;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.notifications.internal.InternalTruecallerNotification m14309e(android.os.Bundle r7) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1113o4.C18932m.m14309e(android.os.Bundle):com.truecaller.notifications.internal.InternalTruecallerNotification");
    }

    /* renamed from: f */
    public final void m14308f() {
        synchronized (this) {
            c0 k = x.k(i.h(this.f53071a), C18933a.f53075b);
            JSONArray jSONArray = new JSONArray();
            c0 c0Var = k;
            for (Object obj : c0Var.a) {
                jSONArray = jSONArray.put((JSONObject) c0Var.b.d(obj));
                s1.z.c.l.d(jSONArray, "jsonArray.put(jsonObject)");
            }
            ((AbstractC8541a) this.f53073c.get()).putString("payloads", jSONArray.toString());
        }
    }
}
