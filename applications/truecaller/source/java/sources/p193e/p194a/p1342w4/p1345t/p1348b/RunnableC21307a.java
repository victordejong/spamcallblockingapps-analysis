package p193e.p194a.p1342w4.p1345t.p1348b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.api.services.presence.p139v1.models.CallContext;
import com.truecaller.api.services.presence.p139v1.models.Flash;
import com.truecaller.api.services.presence.p139v1.models.InstantMessaging;
import com.truecaller.api.services.presence.p139v1.models.Payment;
import com.truecaller.api.services.presence.p139v1.models.VideoCallerID;
import com.truecaller.api.services.presence.p139v1.models.Voip;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1049l4.C17427p;
import p193e.p194a.p1049l4.C17428q;
import p193e.p194a.p1049l4.C17429r;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p619d.AbstractC11705f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.w4.t.b.a */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/b/a.class */
public final class RunnableC21307a extends BroadcastReceiver implements AbstractC17405c, Runnable {

    /* renamed from: a */
    public final Handler f59676a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final ArrayList<C21308a> f59677b = new ArrayList<>();

    /* renamed from: c */
    public boolean f59678c;

    /* renamed from: d */
    public final AbstractC19022f0 f59679d;

    /* renamed from: e */
    public final AbstractC21309b f59680e;

    /* renamed from: f */
    public final AbstractC8432l f59681f;

    /* renamed from: g */
    public final AbstractC6392i0 f59682g;

    /* renamed from: h */
    public final AbstractC19854f<AbstractC17419h> f59683h;

    /* renamed from: i */
    public final C17428q f59684i;

    /* renamed from: j */
    public final AbstractC11705f f59685j;

    /* renamed from: e.a.w4.t.b.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/t/b/a$a.class */
    public final class C21308a implements AbstractC17405c.AbstractC17406a, AbstractC17405c.AbstractC17407b {

        /* renamed from: a */
        public AbstractC17405c.AbstractC17407b f59686a;

        /* renamed from: b */
        public final String[] f59687b;

        /* renamed from: c */
        public final /* synthetic */ RunnableC21307a f59688c;

        public C21308a(RunnableC21307a runnableC21307a, String[] strArr) {
            l.e(strArr, "normalizedNumbers");
            this.f59688c = runnableC21307a;
            this.f59687b = strArr;
        }

        @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17406a
        /* renamed from: a */
        public void mo9916a() {
            this.f59686a = null;
            this.f59688c.f59677b.remove(this);
        }

        @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17406a
        /* renamed from: b */
        public void mo9915b(AbstractC17405c.AbstractC17407b abstractC17407b) {
            l.e(abstractC17407b, "listener");
            this.f59686a = abstractC17407b;
            this.f59688c.f59677b.add(this);
            RunnableC21307a runnableC21307a = this.f59688c;
            String[] strArr = this.f59687b;
            mo9914ki(runnableC21307a.mo9922b((String[]) Arrays.copyOf(strArr, strArr.length)));
        }

        @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17406a
        public boolean isAttached() {
            return this.f59686a != null;
        }

        @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17407b
        /* renamed from: ki */
        public void mo9914ki(C17409e c17409e) {
            AbstractC17405c.AbstractC17407b abstractC17407b = this.f59686a;
            if (abstractC17407b != null) {
                abstractC17407b.mo9914ki(c17409e);
            }
        }
    }

    @Inject
    public RunnableC21307a(AbstractC19022f0 abstractC19022f0, AbstractC21309b abstractC21309b, AbstractC8432l abstractC8432l, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC17419h> abstractC19854f, C17428q c17428q, AbstractC11705f abstractC11705f) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC21309b, "dataManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19854f, "presenceManager");
        l.e(c17428q, "presenceValuesProvider");
        l.e(abstractC11705f, "voip");
        this.f59679d = abstractC19022f0;
        this.f59680e = abstractC21309b;
        this.f59681f = abstractC8432l;
        this.f59682g = abstractC6392i0;
        this.f59683h = abstractC19854f;
        this.f59684i = c17428q;
        this.f59685j = abstractC11705f;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c
    /* renamed from: I1 */
    public void mo9925I1() {
        m9919e();
        this.f59679d.mo14241e(this, "com.truecaller.datamanager.STATUSES_CHANGED");
        this.f59678c = true;
        m9917g();
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c
    /* renamed from: Y */
    public void mo9924Y() {
        this.f59676a.removeCallbacks(this);
        this.f59679d.mo14238h(this);
        this.f59678c = false;
        hashCode();
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c
    /* renamed from: a */
    public boolean mo9923a() {
        return this.f59682g.mo31069g2() || (this.f59682g.mo31226C1() && this.f59682g.mo31108a());
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c
    /* renamed from: b */
    public C17409e mo9922b(String... strArr) {
        C17409e c17409e;
        l.e(strArr, "normalizedPhoneNumbers");
        if (!mo9923a()) {
            return null;
        }
        int i = 0;
        if (strArr.length == 1) {
            return m9920d(strArr[0]);
        }
        if (C17427p.f48801a == null) {
            C17409e.C17410a c17410a = new C17409e.C17410a("");
            Availability.C3324b newBuilder = Availability.newBuilder();
            newBuilder.m35895a(Availability.Status.UNKNOWN);
            c17410a.f48766a = newBuilder.build();
            Flash.C3336b newBuilder2 = Flash.newBuilder();
            newBuilder2.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder2).instance.setEnabled(false);
            c17410a.f48767b = newBuilder2.build();
            Voip.C3350b newBuilder3 = Voip.newBuilder();
            newBuilder3.m35893a(true);
            c17410a.f48770e = newBuilder3.build();
            InstantMessaging.C3338b newBuilder4 = InstantMessaging.newBuilder();
            newBuilder4.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder4).instance.setDisabled(true);
            c17410a.f48769d = newBuilder4.build();
            Payment.C3340b newBuilder5 = Payment.newBuilder();
            newBuilder5.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder5).instance.setEnabled(false);
            c17410a.f48771f = newBuilder5.build();
            CallContext.C3326b newBuilder6 = CallContext.newBuilder();
            newBuilder6.m35894a(true);
            c17410a.f48773h = newBuilder6.build();
            VideoCallerID.C3348b newBuilder7 = VideoCallerID.newBuilder();
            newBuilder7.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder7).instance.setDisabled(true);
            c17410a.f48775j = newBuilder7.build();
            C17427p.f48801a = c17410a.m16133a();
        }
        C17409e c17409e2 = C17427p.f48801a;
        int length = strArr.length;
        while (true) {
            c17409e = c17409e2;
            if (i >= length) {
                break;
            }
            C17409e m9920d = m9920d(strArr[i]);
            C17409e c17409e3 = c17409e2;
            if (m9920d != null) {
                Availability availability = m9920d.f48755b;
                if (availability != null) {
                    Availability availability2 = c17409e2.f48755b;
                    c17409e = c17409e2;
                    if (availability != null) {
                        Availability.Status status = availability.getStatus();
                        Availability.Status status2 = Availability.Status.BUSY;
                        if (status != status2 && availability.getStatus() != Availability.Status.AVAILABLE) {
                            c17409e = c17409e2;
                        } else if (availability2 == null || availability2.getStatus() != status2) {
                            availability.getStatus();
                            c17409e = m9920d;
                        } else {
                            c17409e = c17409e2;
                        }
                    }
                    Availability availability3 = c17409e.f48755b;
                    if (availability3 == null) {
                        break;
                    }
                    c17409e3 = c17409e;
                    if ((availability3 != null ? availability3.getStatus() : null) == Availability.Status.BUSY) {
                        break;
                    }
                } else {
                    c17409e3 = c17409e2;
                }
            }
            i++;
            c17409e2 = c17409e3;
        }
        return c17409e;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c
    /* renamed from: c */
    public AbstractC17405c.AbstractC17406a mo9921c(String... strArr) {
        l.e(strArr, "normalizedNumbers");
        if (strArr.length == 0) {
            return null;
        }
        m9917g();
        return new C21308a(this, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* renamed from: d */
    public final C17409e m9920d(String str) {
        return (!mo9923a() || str == null) ? null : this.f59680e.mo9911c(str);
    }

    /* renamed from: e */
    public final void m9919e() {
        hashCode();
        for (C21308a c21308a : i.x0(this.f59677b)) {
            if (mo9923a()) {
                String[] strArr = c21308a.f59687b;
                c21308a.mo9914ki(mo9922b((String[]) Arrays.copyOf(strArr, strArr.length)));
            } else {
                c21308a.mo9914ki(null);
            }
        }
    }

    /* renamed from: f */
    public final boolean m9918f() {
        return this.f59678c && (mo9923a() || this.f59682g.mo31102b() || this.f59681f.mo28580d() || this.f59685j.isEnabled());
    }

    /* renamed from: g */
    public final void m9917g() {
        if (!m9918f()) {
            return;
        }
        AbstractC8541a abstractC8541a = (AbstractC8541a) this.f59684i.f48802a.get();
        int i = C17429r.f48807e;
        long j = abstractC8541a.getLong("presence_initial_delay", 500L);
        this.f59676a.removeCallbacks(this);
        this.f59676a.postDelayed(this, j);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m9919e();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!m9918f()) {
            return;
        }
        ArrayList<C21308a> arrayList = this.f59677b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((C21308a) obj).isAttached()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            i.b(arrayList3, C25225a.m3887j3(((C21308a) it.next()).f59687b));
        }
        if (!(!arrayList3.isEmpty())) {
            hashCode();
            return;
        }
        hashCode();
        this.f59683h.mo11854a().mo16127e(arrayList3).mo11828g();
        long max = Math.max(((AbstractC8541a) this.f59684i.f48802a.get()).getLong("presence_interval", C17429r.f48803a), C17429r.f48804b);
        this.f59676a.removeCallbacks(this);
        this.f59676a.postDelayed(this, max);
    }
}
