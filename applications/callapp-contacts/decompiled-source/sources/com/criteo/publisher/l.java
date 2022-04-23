package com.criteo.publisher;

import android.app.Application;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.context.UserData;
import com.criteo.publisher.h.d;
import com.criteo.publisher.i;
import com.criteo.publisher.j0.b;
import com.criteo.publisher.k.c;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m.b;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.s;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.u;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l.class */
public final class l extends Criteo {

    /* renamed from: a  reason: collision with root package name */
    private final g f17409a = h.a(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final q f17410b;

    /* renamed from: c  reason: collision with root package name */
    private final e f17411c;

    /* renamed from: d  reason: collision with root package name */
    private final u f17412d;
    private final t e;
    private final c f;
    private final i g;
    private final com.criteo.publisher.h.c h;
    private final com.criteo.publisher.j.a i;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l$a.class */
    final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f17413a;

        a(List list) {
            this.f17413a = list;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            e eVar = l.this.f17411c;
            List<AdUnit> list = this.f17413a;
            b bVar = eVar.f17226c;
            bVar.f17369d.execute(new b.C0344b(bVar, eVar.f17224a, null));
            if (eVar.f17224a.j()) {
                for (List<n> list2 : eVar.f17225b.a(list)) {
                    eVar.a(list2, new ContextData());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Application application, List<AdUnit> list, Boolean bool, String str, q qVar) {
        this.f17410b = qVar;
        qVar.C();
        u m = qVar.m();
        this.f17412d = m;
        m.d();
        qVar.f().a();
        this.e = qVar.j();
        this.f17411c = qVar.l();
        this.g = qVar.v();
        this.h = qVar.w();
        this.i = qVar.x();
        c k = qVar.k();
        this.f = k;
        if (bool != null) {
            k.a(bool.booleanValue());
        }
        if (str != null) {
            k.a(str);
        }
        application.registerActivityLifecycleCallbacks(qVar.n());
        application.registerActivityLifecycleCallbacks(new b.a());
        qVar.p().a();
        qVar.i().execute(new a(list));
    }

    @Override // com.criteo.publisher.Criteo
    public final k createBannerController(CriteoBannerView criteoBannerView) {
        return new k(criteoBannerView, this, this.f17410b.y(), this.f17410b.i());
    }

    @Override // com.criteo.publisher.Criteo
    public final void enrichAdObjectWithBid(Object obj, Bid bid) {
        d next;
        try {
            com.criteo.publisher.h.c cVar = this.h;
            cVar.f17340a.a(com.criteo.publisher.h.a.a(bid));
            if (obj != null) {
                Iterator<d> it2 = cVar.f17341b.iterator();
                do {
                    if (it2.hasNext()) {
                        next = it2.next();
                    }
                } while (!next.a(obj));
                cVar.f17342c.a(next.a());
                s a2 = bid == null ? null : bid.a();
                next.b(obj);
                if (a2 == null) {
                    cVar.f17340a.a(com.criteo.publisher.h.a.a(next.a()));
                    return;
                } else {
                    next.a(obj, bid.f17127a, a2);
                    return;
                }
            }
            cVar.f17340a.a(com.criteo.publisher.h.a.a(obj));
        } catch (Throwable th) {
            this.f17409a.a(t.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final void getBidForAdUnit(AdUnit adUnit, ContextData contextData, d dVar) {
        this.f17411c.a(adUnit, contextData, dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final t getConfig() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final u getDeviceInfo() {
        return this.f17412d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.Criteo
    public final com.criteo.publisher.j.a getInterstitialActivityHelper() {
        return this.i;
    }

    @Override // com.criteo.publisher.Criteo
    public final void loadBid(AdUnit adUnit, ContextData contextData, BidResponseListener bidResponseListener) {
        try {
            i iVar = this.g;
            iVar.f17346a.a(adUnit, contextData, new i.a(adUnit, bidResponseListener));
        } catch (Throwable th) {
            this.f17409a.a(t.a(th));
            bidResponseListener.onResponse(null);
        }
    }

    @Override // com.criteo.publisher.Criteo
    public final void setMopubConsent(String str) {
        this.f.a(str);
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUsPrivacyOptOut(boolean z) {
        this.f.a(z);
    }

    @Override // com.criteo.publisher.Criteo
    public final void setUserData(UserData userData) {
        com.criteo.publisher.context.d D = this.f17410b.D();
        p.c(userData, "userData");
        D.f17221a.set(userData);
    }
}
