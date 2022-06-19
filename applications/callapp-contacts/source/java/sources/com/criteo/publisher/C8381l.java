package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.C8345i;
import com.criteo.publisher.context.C8269d;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8498n;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.p248h.AbstractC8342d;
import com.criteo.publisher.p248h.C8337a;
import com.criteo.publisher.p248h.C8341c;
import com.criteo.publisher.p250j.C8353a;
import com.criteo.publisher.p251j0.C8356b;
import com.criteo.publisher.p252k.C8380c;
import com.criteo.publisher.p255m.C8421b;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.l */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l.class */
public final class C8381l extends Criteo {

    /* renamed from: a */
    private final C8402g f30074a = C8404h.m25741a(getClass());

    /* renamed from: b */
    private final C8520q f30075b;

    /* renamed from: c */
    private final C8272e f30076c;

    /* renamed from: d */
    private final C8509u f30077d;

    /* renamed from: e */
    private final C8507t f30078e;

    /* renamed from: f */
    private final C8380c f30079f;

    /* renamed from: g */
    private final C8345i f30080g;

    /* renamed from: h */
    private final C8341c f30081h;

    /* renamed from: i */
    private final C8353a f30082i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.l$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l$a.class */
    public final class C8382a extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ List f30083a;

        C8382a(List list) {
            C8381l.this = r4;
            this.f30083a = list;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            C8272e c8272e = C8381l.this.f30076c;
            List<AdUnit> list = this.f30083a;
            C8356b c8356b = c8272e.f29837c;
            c8356b.f30023d.execute(new C8356b.C8358b(c8356b, c8272e.f29835a, null));
            if (c8272e.f29835a.m25521j()) {
                for (List<C8498n> list2 : c8272e.f29836b.m25599a(list)) {
                    c8272e.m25934a(list2, new ContextData());
                }
            }
        }
    }

    public C8381l(Application application, List<AdUnit> list, Boolean bool, String str, C8520q c8520q) {
        this.f30075b = c8520q;
        c8520q.m25473C();
        C8509u m25396m = c8520q.m25396m();
        this.f30077d = m25396m;
        m25396m.mo25379d();
        c8520q.m25403f().m25707a();
        this.f30078e = c8520q.m25399j();
        this.f30076c = c8520q.m25397l();
        this.f30080g = c8520q.m25387v();
        this.f30081h = c8520q.m25386w();
        this.f30082i = c8520q.m25385x();
        C8380c m25398k = c8520q.m25398k();
        this.f30079f = m25398k;
        if (bool != null) {
            m25398k.m25756a(bool.booleanValue());
        }
        if (str != null) {
            m25398k.m25757a(str);
        }
        application.registerActivityLifecycleCallbacks(c8520q.m25395n());
        application.registerActivityLifecycleCallbacks(new C8421b.C8422a());
        c8520q.m25393p().mo25906a();
        c8520q.m25400i().execute(new C8382a(list));
    }

    @Override // com.criteo.publisher.Criteo
    public final C8365k createBannerController(CriteoBannerView criteoBannerView) {
        return new C8365k(criteoBannerView, this, this.f30075b.m25384y(), this.f30075b.m25400i());
    }

    @Override // com.criteo.publisher.Criteo
    public final void enrichAdObjectWithBid(Object obj, Bid bid) {
        AbstractC8342d next;
        try {
            C8341c c8341c = this.f30081h;
            c8341c.f29984a.m25744a(C8337a.m25828a(bid));
            if (obj != null) {
                Iterator<AbstractC8342d> it2 = c8341c.f29985b.iterator();
                do {
                    if (it2.hasNext()) {
                        next = it2.next();
                    }
                } while (!next.mo25818a(obj));
                c8341c.f29986c.m25807a(next.mo25819a());
                C8503s m25993a = bid == null ? null : bid.m25993a();
                next.mo25816b(obj);
                if (m25993a == null) {
                    c8341c.f29984a.m25744a(C8337a.m25827a(next.mo25819a()));
                    return;
                } else {
                    next.mo25817a(obj, bid.f29726a, m25993a);
                    return;
                }
            }
            c8341c.f29984a.m25744a(C8337a.m25825a(obj));
        } catch (Throwable th) {
            this.f30074a.m25744a(C8527t.m25376a(th));
        }
    }

    @Override // com.criteo.publisher.Criteo
    public final void getBidForAdUnit(AdUnit adUnit, ContextData contextData, AbstractC8270d abstractC8270d) {
        this.f30076c.m25939a(adUnit, contextData, abstractC8270d);
    }

    @Override // com.criteo.publisher.Criteo
    public final C8507t getConfig() {
        return this.f30078e;
    }

    @Override // com.criteo.publisher.Criteo
    public final C8509u getDeviceInfo() {
        return this.f30077d;
    }

    @Override // com.criteo.publisher.Criteo
    public final C8353a getInterstitialActivityHelper() {
        return this.f30082i;
    }

    @Override // com.criteo.publisher.Criteo
    public final void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        try {
            C8345i c8345i = this.f30080g;
            c8345i.f29990a.m25939a(adUnit, contextData, new C8345i.C8346a(adUnit, bidResponseListener));
        } catch (Throwable th) {
            this.f30074a.m25744a(C8527t.m25376a(th));
            bidResponseListener.onResponse(null);
        }
    }

    @Override // com.criteo.publisher.Criteo
    public final void setMopubConsent(String str) {
        this.f30079f.m25757a(str);
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUsPrivacyOptOut(boolean z) {
        this.f30079f.m25756a(z);
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUserData(UserData userData) {
        C8269d m25472D = this.f30075b.m25472D();
        C18524p.m3841c(userData, "userData");
        m25472D.f29832a.set(userData);
    }
}
