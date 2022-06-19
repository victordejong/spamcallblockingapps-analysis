package p193e.p194a.p1049l4;

import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Int32Value;
import com.google.protobuf.StringValue;
import com.truecaller.api.services.presence.p139v1.GetPresenceRequest;
import com.truecaller.api.services.presence.p139v1.GetPresenceResponse;
import com.truecaller.api.services.presence.p139v1.SetLastSeenRequest;
import com.truecaller.api.services.presence.p139v1.SetPresenceRequest;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.api.services.presence.p139v1.models.CallContext;
import com.truecaller.api.services.presence.p139v1.models.CovidMedicalSupply;
import com.truecaller.api.services.presence.p139v1.models.Flash;
import com.truecaller.api.services.presence.p139v1.models.InstantMessaging;
import com.truecaller.api.services.presence.p139v1.models.Payment;
import com.truecaller.api.services.presence.p139v1.models.VideoCallerID;
import com.truecaller.api.services.presence.p139v1.models.Voip;
import com.truecaller.log.AssertionUtil;
import com.truecaller.presence.AvailabilityContext;
import com.truecaller.presence.AvailabilityStatus;
import com.truecaller.presence.AvailabilityTrigger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1238t2.p1239a.p1253f.p1254a.C20473b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8616w;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p969c.C15987g0;
import w3.c.a.a.a.h;
/* renamed from: e.a.l4.i */
/* loaded from: classes12-dex2jar.jar:e/a/l4/i.class */
public class C17420i implements AbstractC17419h {

    /* renamed from: a */
    public final a<AbstractC8432l> f48782a;

    /* renamed from: b */
    public final a<AbstractC17425n> f48783b;

    /* renamed from: c */
    public final a<AbstractC8541a> f48784c;

    /* renamed from: d */
    public final a<AbstractC17423l> f48785d;

    /* renamed from: e */
    public final AbstractC19022f0 f48786e;

    /* renamed from: f */
    public final AbstractC18951b0 f48787f;

    /* renamed from: g */
    public final AbstractC19321u f48788g;

    /* renamed from: h */
    public final a<AbstractC21309b> f48789h;

    /* renamed from: i */
    public final a<AbstractC8621z> f48790i;

    /* renamed from: j */
    public final a<AbstractC8616w> f48791j;

    /* renamed from: k */
    public final C17428q f48792k;

    /* renamed from: l */
    public final a<AbstractC19854f<AbstractC6543e1>> f48793l;

    /* renamed from: m */
    public final a<AbstractC6392i0> f48794m;

    /* renamed from: n */
    public final a<AbstractC11705f> f48795n;

    /* renamed from: o */
    public final a<C20592g> f48796o;

    /* renamed from: p */
    public final a<AbstractC18765c> f48797p;

    /* renamed from: q */
    public final a<AbstractC16111h> f48798q;

    @Inject
    public C17420i(a<AbstractC8432l> aVar, a<AbstractC17425n> aVar2, a<AbstractC8541a> aVar3, a<AbstractC17423l> aVar4, AbstractC19022f0 abstractC19022f0, AbstractC19321u abstractC19321u, a<AbstractC21309b> aVar5, a<AbstractC8621z> aVar6, a<AbstractC8616w> aVar7, AbstractC18951b0 abstractC18951b0, C17428q c17428q, a<AbstractC19854f<AbstractC6543e1>> aVar8, a<AbstractC6392i0> aVar9, a<AbstractC11705f> aVar10, a<C20592g> aVar11, a<AbstractC18765c> aVar12, a<AbstractC16111h> aVar13) {
        this.f48782a = aVar;
        this.f48783b = aVar2;
        this.f48784c = aVar3;
        this.f48785d = aVar4;
        this.f48786e = abstractC19022f0;
        this.f48788g = abstractC19321u;
        this.f48789h = aVar5;
        this.f48790i = aVar6;
        this.f48791j = aVar7;
        this.f48787f = abstractC18951b0;
        this.f48792k = c17428q;
        this.f48793l = aVar8;
        this.f48794m = aVar9;
        this.f48795n = aVar10;
        this.f48796o = aVar11;
        this.f48797p = aVar12;
        this.f48798q = aVar13;
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo16131a() {
        Boolean bool = Boolean.FALSE;
        if (!this.f48788g.mo13429d()) {
            return AbstractC19891x.m11834h(bool);
        }
        Availability m16124h = m16124h();
        SetPresenceRequest m16126f = m16126f(AvailabilityTrigger.USER_ACTION, m16124h, false);
        try {
            C20473b.C20474a mo20911c = ((AbstractC17425n) this.f48783b.get()).mo20911c(AbstractC8371e.C8372a.f25732a);
            if (mo20911c == null) {
                return AbstractC19891x.m11834h(bool);
            }
            mo20911c.m11096e(m16126f);
            m16120l(m16124h);
            return AbstractC19891x.m11834h(Boolean.TRUE);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return AbstractC19891x.m11834h(bool);
        }
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: b */
    public AbstractC19891x<Boolean> mo16130b() {
        Boolean bool = Boolean.FALSE;
        if (!this.f48788g.mo13429d()) {
            return AbstractC19891x.m11834h(bool);
        }
        try {
            C20473b.C20474a mo20911c = ((AbstractC17425n) this.f48783b.get()).mo20911c(AbstractC8371e.C8372a.f25732a);
            if (mo20911c == null) {
                return AbstractC19891x.m11834h(bool);
            }
            SetPresenceRequest.C3318b newBuilder = SetPresenceRequest.newBuilder();
            Voip.C3350b newBuilder2 = Voip.newBuilder();
            newBuilder2.m35893a(true);
            Voip build = newBuilder2.build();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setVoip(build);
            mo20911c.m11096e((SetPresenceRequest) newBuilder.build());
            return AbstractC19891x.m11834h(Boolean.TRUE);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return AbstractC19891x.m11834h(bool);
        }
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: c */
    public void mo16129c() {
        if (m16122j() && this.f48788g.mo13429d()) {
            if (m16123i("key_last_set_last_seen_time") + 180000 > System.currentTimeMillis()) {
                ((AbstractC17423l) this.f48785d.get()).mo16041a(180000L);
                return;
            }
            ((AbstractC8541a) this.f48784c.get()).putLong("key_last_set_last_seen_time", System.currentTimeMillis());
            String mo14271x = this.f48787f.mo14271x();
            try {
                C20473b.C20474a mo20911c = ((AbstractC17425n) this.f48783b.get()).mo20911c(AbstractC8371e.C8372a.f25732a);
                if (mo20911c == null) {
                    return;
                }
                SetLastSeenRequest.C3316b newBuilder = SetLastSeenRequest.newBuilder();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setTimeZone(mo14271x);
                mo20911c.m11097d((SetLastSeenRequest) newBuilder.build());
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: d */
    public void mo16128d(AvailabilityTrigger availabilityTrigger, boolean z) {
        Availability availability;
        int i;
        if (!m16122j()) {
            return;
        }
        Availability m16124h = m16124h();
        String m16038a = C17427p.m16038a(m16124h);
        String string = ((AbstractC8541a) this.f48784c.get()).getString("last_availability_update_success");
        if (h.j(string)) {
            availability = null;
        } else {
            Availability.C3324b newBuilder = Availability.newBuilder();
            String[] split = string.split(",");
            AssertionUtil.OnlyInDebug.isTrue(split.length > 0, new String[0]);
            Availability.Status grpcStatus = AvailabilityStatus.fromString(split[0], AvailabilityStatus.UNKNOWN).toGrpcStatus();
            newBuilder.m35895a(grpcStatus);
            Availability.Context context = Availability.Context.NOTSET;
            Availability.Context grpcContext = split.length > 1 ? AvailabilityContext.fromString(split[1], AvailabilityContext.UNKNOWN).toGrpcContext() : context;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(grpcContext);
            if (grpcStatus == Availability.Status.BUSY && (grpcContext == Availability.Context.UNRECOGNIZED || grpcContext == context)) {
                AssertionUtil.reportWeirdnessButNeverCrash("Invalid availability string, BUSY state requires a Reason: " + string);
                availability = null;
            } else {
                availability = (Availability) newBuilder.build();
            }
        }
        int m16119m = m16119m(m16124h);
        if (availability != null) {
            long m16123i = m16123i("last_successful_availability_update_time");
            long currentTimeMillis = System.currentTimeMillis();
            int m16119m2 = m16119m(availability);
            int ordinal = availability.getStatus().ordinal();
            if (ordinal != 1) {
                if (ordinal == 2) {
                    int ordinal2 = availability.getContext().ordinal();
                    if (ordinal2 == 1) {
                        i = 60000;
                    } else if (ordinal2 == 3) {
                        i = 1200000;
                    }
                }
                i = 0;
            } else {
                i = 10800000;
            }
            boolean z2 = currentTimeMillis > (m16123i + ((long) m16119m2)) - ((long) i);
            Availability.Status status = Availability.Status.AVAILABLE;
            if ((status.equals(m16124h.getStatus()) && !status.equals(availability.getStatus())) && z2) {
                ((AbstractC17423l) this.f48785d.get()).mo16040b(m16119m);
                m16120l(m16124h);
                return;
            } else if (m16038a.equals(string) && !z2) {
                ((AbstractC17423l) this.f48785d.get()).mo16040b((System.currentTimeMillis() - m16123i("last_successful_availability_update_time")) + m16119m);
                return;
            }
        }
        if (m16123i("key_last_set_status_time") + DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD > System.currentTimeMillis()) {
            ((AbstractC17423l) this.f48785d.get()).mo16040b(DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
            return;
        }
        ((AbstractC8541a) this.f48784c.get()).putLong("key_last_set_status_time", System.currentTimeMillis());
        ((AbstractC17423l) this.f48785d.get()).mo16040b(m16119m);
        if (!this.f48788g.mo13429d()) {
            return;
        }
        SetPresenceRequest m16126f = m16126f(availabilityTrigger, m16124h, z);
        try {
            C20473b.C20474a mo20911c = ((AbstractC17425n) this.f48783b.get()).mo20911c(AbstractC8371e.C8372a.f25732a);
            if (mo20911c == null) {
                return;
            }
            mo20911c.m11096e(m16126f);
            m16120l(m16124h);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            String str = "gRPC (presence): Failed sending presence. " + m16124h;
        }
    }

    @Override // p193e.p194a.p1049l4.AbstractC17419h
    /* renamed from: e */
    public AbstractC19891x<Collection<C17409e>> mo16127e(Collection<String> collection) {
        AbstractC19891x<Collection<C17409e>> m11834h = AbstractC19891x.m11834h(Collections.emptyList());
        if ((m16122j() || m16121k() || ((AbstractC8432l) this.f48782a.get()).mo28580d() || ((AbstractC11705f) this.f48795n.get()).isEnabled()) && !collection.isEmpty() && this.f48788g.mo13429d()) {
            ArrayList arrayList = new ArrayList();
            Map<AbstractC8371e, Collection<String>> mo28193a = ((AbstractC8616w) this.f48791j.get()).mo28193a(((AbstractC8621z) this.f48790i.get()).mo28183h(collection));
            C20592g c20592g = (C20592g) this.f48796o.get();
            if (c20592g.f57918f.m10941a(c20592g, C20592g.f57695p6[2]).isEnabled()) {
                for (Map.Entry<AbstractC8371e, Collection<String>> entry : mo28193a.entrySet()) {
                    arrayList.addAll(m16125g(entry.getKey(), entry.getValue()));
                }
            } else {
                AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
                arrayList.addAll(m16125g(c8372a, mo28193a.get(c8372a)));
            }
            return AbstractC19891x.m11834h(Collections.unmodifiableCollection(arrayList));
        }
        return m11834h;
    }

    /* renamed from: f */
    public final SetPresenceRequest m16126f(AvailabilityTrigger availabilityTrigger, Availability availability, boolean z) {
        CallContext callContext;
        SetPresenceRequest.C3318b newBuilder = SetPresenceRequest.newBuilder();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setAvailability(availability);
        Flash.C3336b newBuilder2 = Flash.newBuilder();
        boolean m16121k = m16121k();
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setEnabled(m16121k);
        Int32Value.Builder value = Int32Value.newBuilder().setValue(6);
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setVersion(value.build());
        Flash build = newBuilder2.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setFlash(build);
        boolean isEnabled = ((AbstractC11705f) this.f48795n.get()).isEnabled();
        Voip.C3350b newBuilder3 = Voip.newBuilder();
        newBuilder3.m35893a(!isEnabled);
        if (isEnabled) {
            int mo24167z = ((AbstractC11705f) this.f48795n.get()).mo24167z();
            newBuilder3.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder3).instance.setVersion(mo24167z);
        }
        Voip build2 = newBuilder3.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setVoip(build2);
        StringValue.Builder value2 = StringValue.newBuilder().setValue(availabilityTrigger.name());
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setReferral(value2.build());
        boolean z2 = ((AbstractC6392i0) this.f48794m.get()).mo31078f() != null;
        InstantMessaging.C3338b newBuilder4 = InstantMessaging.newBuilder();
        newBuilder4.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder4).instance.setDisabled(!z2);
        InstantMessaging build3 = newBuilder4.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setIm(build3);
        Payment.C3340b newBuilder5 = Payment.newBuilder();
        newBuilder5.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder5).instance.setEnabled(false);
        Payment build4 = newBuilder5.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setPayment(build4);
        if (!((AbstractC18765c) this.f48797p.get()).isSupported()) {
            CallContext.C3326b newBuilder6 = CallContext.newBuilder();
            newBuilder6.m35894a(true);
            callContext = (CallContext) newBuilder6.build();
        } else {
            CallContext.C3326b newBuilder7 = CallContext.newBuilder();
            newBuilder7.m35894a(false);
            int version = ((AbstractC18765c) this.f48797p.get()).getVersion();
            newBuilder7.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder7).instance.setVersion(version);
            callContext = (CallContext) newBuilder7.build();
        }
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setCallContext(callContext);
        CovidMedicalSupply.C3328b newBuilder8 = CovidMedicalSupply.newBuilder();
        newBuilder8.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder8).instance.setEnabled(false);
        CovidMedicalSupply build5 = newBuilder8.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setCovidMedicalSupply(build5);
        C15987g0 mo17833m = ((AbstractC16111h) this.f48798q.get()).mo17833m();
        VideoCallerID.C3348b newBuilder9 = VideoCallerID.newBuilder();
        boolean z3 = mo17833m.f45070a;
        newBuilder9.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder9).instance.setDisabled(true ^ z3);
        if (mo17833m.f45070a) {
            int i = mo17833m.f45071b;
            newBuilder9.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder9).instance.setVersion(i);
        }
        VideoCallerID build6 = newBuilder9.build();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setVideoCallerId(build6);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setUpdateLastSeen(z);
        return newBuilder.build();
    }

    /* renamed from: g */
    public final Collection<C17409e> m16125g(AbstractC8371e abstractC8371e, Collection<String> collection) {
        GetPresenceResponse m11098c;
        List emptyList = Collections.emptyList();
        if (collection == null) {
            return emptyList;
        }
        AbstractC8621z abstractC8621z = (AbstractC8621z) this.f48790i.get();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            if (abstractC8621z.mo28182i(it.next()) != 2) {
                it.remove();
            }
        }
        if (collection.isEmpty()) {
            return emptyList;
        }
        Iterator<String> it2 = collection.iterator();
        while (it2.hasNext()) {
            C17409e mo9911c = ((AbstractC21309b) this.f48789h.get()).mo9911c(it2.next());
            if (mo9911c != null && !mo9911c.f48761h.C(((AbstractC8541a) this.f48792k.f48802a.get()).getLong("presence_recheck_time", C17429r.f48806d)).j()) {
                it2.remove();
            }
        }
        if (collection.isEmpty()) {
            return emptyList;
        }
        Iterator<String> it3 = collection.iterator();
        ArrayList arrayList = new ArrayList(50);
        ArrayList arrayList2 = new ArrayList();
        while (it3.hasNext()) {
            for (int i = 0; i < 50 && it3.hasNext(); i++) {
                arrayList.add(it3.next());
            }
            if (arrayList.isEmpty()) {
                break;
            }
            GetPresenceRequest.C3310b newBuilder = GetPresenceRequest.newBuilder();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.addAllPhoneNumbers(arrayList);
            GetPresenceRequest build = newBuilder.build();
            try {
                try {
                    C20473b.C20474a mo20911c = ((AbstractC17425n) this.f48783b.get()).mo20911c(abstractC8371e);
                    if (mo20911c != null && (m11098c = mo20911c.m11098c(build)) != null) {
                        boolean z = abstractC8371e instanceof AbstractC8371e.C8372a;
                        Collection<C17409e> m16137b = C17409e.m16137b(m11098c, z);
                        if (z) {
                            arrayList2.addAll(m16137b);
                            m16118n(m16137b);
                        }
                        ((AbstractC21309b) this.f48789h.get()).mo9912a(m16137b);
                    }
                } catch (RuntimeException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            } finally {
                arrayList.clear();
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006b, code lost:
        if (r0 != false) goto L22;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.api.services.presence.p139v1.models.Availability m16124h() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1049l4.C17420i.m16124h():com.truecaller.api.services.presence.v1.models.Availability");
    }

    /* renamed from: i */
    public final long m16123i(String str) {
        long j = ((AbstractC8541a) this.f48784c.get()).getLong(str, 0L);
        if (j > System.currentTimeMillis()) {
            return 0L;
        }
        return j;
    }

    /* renamed from: j */
    public final boolean m16122j() {
        boolean z = ((AbstractC8541a) this.f48784c.get()).getBoolean("availability_disabled");
        boolean z2 = true;
        boolean z3 = ((AbstractC8541a) this.f48784c.get()).getBoolean("featureAvailability");
        if (!((AbstractC8432l) this.f48782a.get()).mo28580d() || !(!z) || !z3) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: k */
    public final boolean m16121k() {
        boolean z = ((AbstractC8541a) this.f48784c.get()).getBoolean("flash_disabled");
        boolean z2 = true;
        boolean z3 = ((AbstractC8541a) this.f48784c.get()).getBoolean("featureFlash");
        if (!((AbstractC8432l) this.f48782a.get()).mo28580d() || !(!z) || !z3) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: l */
    public final void m16120l(Availability availability) {
        ((AbstractC8541a) this.f48784c.get()).putString("last_availability_update_success", C17427p.m16038a(availability));
        ((AbstractC8541a) this.f48784c.get()).putLong("last_successful_availability_update_time", System.currentTimeMillis());
    }

    /* renamed from: m */
    public final int m16119m(Availability availability) {
        int ordinal = availability.getStatus().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return Integer.MIN_VALUE;
            }
            int ordinal2 = availability.getContext().ordinal();
            if (ordinal2 == 1) {
                return 600000;
            }
            return ordinal2 != 3 ? Integer.MIN_VALUE : 7200000;
        }
        return 432000000;
    }

    /* renamed from: n */
    public final void m16118n(Collection<C17409e> collection) {
        ArrayList arrayList = new ArrayList();
        for (C17409e c17409e : collection) {
            InstantMessaging instantMessaging = c17409e.f48758e;
            if (instantMessaging != null && !instantMessaging.getDisabled()) {
                arrayList.add(c17409e.f48754a);
            }
        }
        if (!arrayList.isEmpty()) {
            ((AbstractC6543e1) ((AbstractC19854f) this.f48793l.get()).mo11854a()).mo30791a(arrayList, false).mo11828g();
        }
    }
}
