package p081h.p115c.p116a;

import android.content.Context;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p115c.p116a.AbstractC5726d;
import p081h.p115c.p116a.p117i.C5744a;
import p081h.p115c.p116a.p117i.C5750e;
import p081h.p115c.p116a.p118j.C5758a;
import p081h.p115c.p116a.p118j.C5760b;
import p081h.p115c.p116a.p118j.C5762c;
/* renamed from: h.c.a.h */
/* loaded from: classes-dex2jar.jar:h/c/a/h.class */
public class C5740h extends AbstractC5726d implements AbstractC5726d.AbstractC5730d {

    /* renamed from: j */
    public AbstractC5743c f14366j;

    /* renamed from: k */
    public String f14367k;

    /* renamed from: l */
    public C5760b f14368l;

    /* renamed from: m */
    public C5762c f14369m;

    /* renamed from: h.c.a.h$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/h$a.class */
    public class C5741a implements C5760b.AbstractC5761a {
        public C5741a() {
        }

        @Override // p081h.p115c.p116a.p118j.C5760b.AbstractC5761a
        /* renamed from: a */
        public void mo24542a(C5762c cVar) {
            C5740h.this.f14369m = cVar;
            if (C5740h.this.f14369m.m24541a() == 200) {
                C5740h.this.f14366j.onImpressionRecorded(C5740h.this);
            } else {
                C5740h.this.f14366j.onImpressionRecordFail(EnumC5731e.UNKNOWN_ERROR, C5740h.this);
            }
        }
    }

    /* renamed from: h.c.a.h$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/h$b.class */
    public class RunnableC5742b implements Runnable {
        public RunnableC5742b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5740h.this.f14368l.m24543b().mo24542a(C5740h.this.f14368l.m24547a());
        }
    }

    /* renamed from: h.c.a.h$c */
    /* loaded from: classes-dex2jar.jar:h/c/a/h$c.class */
    public interface AbstractC5743c {
        void onAdLoadFail(EnumC5731e eVar, C5740h hVar);

        void onAdLoaded(C5740h hVar);

        void onAdNoBid(C5740h hVar);

        void onImpressionRecordFail(EnumC5731e eVar, C5740h hVar);

        void onImpressionRecorded(C5740h hVar);
    }

    public C5740h(Context context, AbstractC5743c cVar) {
        super(context);
        m24646a((AbstractC5726d.AbstractC5730d) this);
        this.f14366j = cVar;
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24617a(AbstractC5726d dVar, boolean z) {
        if (z) {
            this.f14366j.onAdNoBid(this);
        } else {
            this.f14366j.onAdLoaded(this);
        }
    }

    @Override // p081h.p115c.p116a.AbstractC5726d.AbstractC5730d
    /* renamed from: a */
    public void mo24616a(EnumC5731e eVar) {
        this.f14366j.onAdLoadFail(eVar, this);
    }

    /* renamed from: a */
    public void m24613a(String str) {
        this.f14367k = str;
        super.m24631j();
    }

    @Override // p081h.p115c.p116a.AbstractC5726d
    /* renamed from: d */
    public String mo24610d() {
        String g = m24634g();
        String c = m24639c();
        C5750e f = m24635f();
        AdvertisingIdClient.Info a = m24647a();
        boolean z = a == null || a.isLimitAdTrackingEnabled();
        C5744a aVar = new C5744a(g, c);
        aVar.m24549b();
        C5744a aVar2 = aVar;
        aVar2.m24592c(this.f14367k);
        aVar2.m24588e(m24636e().getPackageName());
        aVar2.m24582i(z ? "" : a.getId());
        aVar2.m24581j("adid");
        aVar2.m24597a(Boolean.valueOf(z));
        aVar2.m24587f();
        aVar2.m24585g();
        aVar2.m24586f(C5758a.m24548a(m24636e()).toString());
        aVar2.m24583h(f.m24560b());
        aVar2.m24579l(f.m24558c());
        aVar2.m24578m(f.m24557d());
        aVar2.m24589e();
        aVar2.m24591d();
        aVar2.m24593c();
        return aVar2.m24552a();
    }

    /* renamed from: k */
    public final JSONObject m24609k() throws JSONException {
        return m24641b().getJSONArray("adUnits").getJSONObject(0).getJSONObject(CatWalkWebPayload.CATWALK_AD_KEY);
    }

    /* renamed from: l */
    public List<String> m24608l() {
        ArrayList arrayList = new ArrayList();
        try {
            try {
                arrayList.add(m24605o());
                arrayList.add(m24603q());
                arrayList.add(m24601s());
                return arrayList;
            } catch (JSONException e) {
                e.printStackTrace();
                return arrayList;
            }
        } catch (Throwable th) {
            return arrayList;
        }
    }

    /* renamed from: m */
    public String m24607m() throws JSONException {
        return m24609k().getJSONObject("native").getString("ctaText");
    }

    /* renamed from: n */
    public String m24606n() throws JSONException {
        return m24609k().getString("clk");
    }

    /* renamed from: o */
    public String m24605o() throws JSONException {
        return m24609k().getJSONObject("native").getJSONObject("iconImage").getString("url");
    }

    /* renamed from: p */
    public String m24604p() throws JSONException {
        return m24609k().getJSONArray("impTracker").getString(0);
    }

    /* renamed from: q */
    public String m24603q() throws JSONException {
        return m24609k().getJSONObject("native").getJSONObject("mainImage").getString("url");
    }

    /* renamed from: r */
    public String m24602r() throws JSONException {
        return m24609k().getJSONObject("native").getJSONObject("privacyInformationLink").getString("url");
    }

    /* renamed from: s */
    public String m24601s() throws JSONException {
        return m24609k().getJSONObject("native").getJSONObject("privacyInformationIcon").getString("url");
    }

    /* renamed from: t */
    public String m24600t() throws JSONException {
        return m24609k().getJSONObject("native").getString("text");
    }

    /* renamed from: u */
    public String m24599u() throws JSONException {
        return m24609k().getJSONObject("native").getString("title");
    }

    /* renamed from: v */
    public void m24598v() throws JSONException {
        this.f14368l = C5760b.m24545a(m24604p());
        this.f14368l.m24546a(new C5741a());
        new Thread(new RunnableC5742b()).start();
    }
}
