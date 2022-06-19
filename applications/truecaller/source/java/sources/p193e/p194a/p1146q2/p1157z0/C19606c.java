package p193e.p194a.p1146q2.p1157z0;

import android.content.Context;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.EventsUploadResult;
import com.truecaller.analytics.heartbeat.AppHeartBeatTaskEvent;
import com.truecaller.analytics.heartbeat.HeartBeatType;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17622k3;
import p193e.p194a.p1050l5.p1051a.C17703q0;
import p193e.p194a.p1050l5.p1051a.C17712q3;
import p193e.p194a.p1050l5.p1051a.C17757t3;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p804h.AbstractC14642b0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.d0.j;
import s1.l;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.e0;
/* renamed from: e.a.q2.z0.c */
/* loaded from: classes5-dex2jar.jar:e/a/q2/z0/c.class */
public final class C19606c implements AbstractC19605b {

    /* renamed from: a */
    public final Context f54476a;

    /* renamed from: b */
    public final f f54477b;

    /* renamed from: c */
    public final AbstractC8432l f54478c;

    /* renamed from: d */
    public final Provider<AbstractC19854f<AbstractC19463a0>> f54479d;

    /* renamed from: e */
    public final Provider<AbstractC14642b0> f54480e;

    /* renamed from: f */
    public final AbstractC19321u f54481f;

    /* renamed from: g */
    public final a<AbstractC13497p> f54482g;

    /* renamed from: h */
    public final a<AbstractC8621z> f54483h;

    /* renamed from: i */
    public final AbstractC8426f f54484i;

    /* renamed from: j */
    public final AbstractC10925a f54485j;

    /* renamed from: k */
    public final a<AbstractC8541a> f54486k;

    /* renamed from: l */
    public final AbstractC19222c f54487l;

    /* renamed from: m */
    public final AbstractC19462a f54488m;

    /* renamed from: n */
    public final C20592g f54489n;

    /* renamed from: o */
    public final e0 f54490o;

    @e(c = "com.truecaller.analytics.heartbeat.HeartBeatReporterImpl$reportAsync$1", f = "HeartBeatReporter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q2.z0.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/z0/c$a.class */
    public static final class C19607a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ HeartBeatType f54492f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19607a(HeartBeatType heartBeatType, d dVar) {
            super(2, dVar);
            C19606c.this = r5;
            this.f54492f = heartBeatType;
        }

        /* renamed from: i */
        public final d<s> m13102i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19607a(this.f54492f, dVar);
        }

        /* renamed from: k */
        public final Object m13101k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19606c c19606c = C19606c.this;
            HeartBeatType heartBeatType = this.f54492f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (c19606c.f54478c.mo28580d()) {
                c19606c.mo13105c(heartBeatType);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m13100s(Object obj) {
            C25225a.m3932a3(obj);
            if (C19606c.this.f54478c.mo28580d()) {
                C19606c.this.mo13105c(this.f54492f);
            }
            return s.a;
        }
    }

    @Inject
    public C19606c(Context context, @Named("IO") f fVar, AbstractC8432l abstractC8432l, Provider<AbstractC19854f<AbstractC19463a0>> provider, Provider<AbstractC14642b0> provider2, AbstractC19321u abstractC19321u, a<AbstractC13497p> aVar, a<AbstractC8621z> aVar2, AbstractC8426f abstractC8426f, AbstractC10925a abstractC10925a, a<AbstractC8541a> aVar3, AbstractC19222c abstractC19222c, AbstractC19462a abstractC19462a, C20592g c20592g, e0 e0Var) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ioContext");
        l.e(abstractC8432l, "accountManager");
        l.e(provider, "eventsTracker");
        l.e(provider2, "simSelectionHelper");
        l.e(abstractC19321u, "networkUtil");
        l.e(aVar, "multiSimManager");
        l.e(aVar2, "phoneNumberHelper");
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC10925a, "buildHelper");
        l.e(aVar3, "coreSettings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(e0Var, "analyticsHttpClient");
        this.f54476a = context;
        this.f54477b = fVar;
        this.f54478c = abstractC8432l;
        this.f54479d = provider;
        this.f54480e = provider2;
        this.f54481f = abstractC19321u;
        this.f54482g = aVar;
        this.f54483h = aVar2;
        this.f54484i = abstractC8426f;
        this.f54485j = abstractC10925a;
        this.f54486k = aVar3;
        this.f54487l = abstractC19222c;
        this.f54488m = abstractC19462a;
        this.f54489n = c20592g;
        this.f54490o = e0Var;
    }

    @Override // p193e.p194a.p1146q2.p1157z0.AbstractC19605b
    /* renamed from: a */
    public boolean mo13107a() {
        return this.f54478c.mo28580d();
    }

    @Override // p193e.p194a.p1146q2.p1157z0.AbstractC19605b
    /* renamed from: b */
    public void mo13106b(HeartBeatType heartBeatType) {
        l.e(heartBeatType, "type");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54477b, (j0) null, new C19607a(heartBeatType, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1146q2.p1157z0.AbstractC19605b
    /* renamed from: c */
    public ListenableWorker.AbstractC0414a mo13105c(HeartBeatType heartBeatType) {
        Object obj;
        ListenableWorker.AbstractC0414a.C0416b c0416b;
        AppHeartBeatTaskEvent.Result result;
        l.e(heartBeatType, "type");
        try {
            try {
                obj = (EventsUploadResult) ((AbstractC19463a0) ((AbstractC19854f) this.f54479d.get()).mo11854a()).mo13110b(m13103e(heartBeatType.getStringRepr()), this.f54490o).mo11831c();
            } catch (Throwable th) {
                obj = C25225a.m3935a0(th);
            }
            Object obj2 = obj;
            if (obj instanceof l.a) {
                obj2 = null;
            }
            EventsUploadResult eventsUploadResult = (EventsUploadResult) obj2;
            if (this.f54489n.m10961i0().isEnabled()) {
                if (eventsUploadResult != null) {
                    int ordinal = eventsUploadResult.ordinal();
                    if (ordinal == 0) {
                        result = AppHeartBeatTaskEvent.Result.SUCCESS;
                    } else if (ordinal == 2) {
                        result = AppHeartBeatTaskEvent.Result.QUEUED;
                    }
                    n.B0(new AppHeartBeatTaskEvent(result, TimeUnit.MILLISECONDS.toMinutes(j.a(this.f54487l.mo13819c() - ((AbstractC8541a) this.f54486k.get()).getLong("hbLastTime", 0L), 0L))), this.f54488m);
                }
                result = AppHeartBeatTaskEvent.Result.FAILURE;
                n.B0(new AppHeartBeatTaskEvent(result, TimeUnit.MILLISECONDS.toMinutes(j.a(this.f54487l.mo13819c() - ((AbstractC8541a) this.f54486k.get()).getLong("hbLastTime", 0L), 0L))), this.f54488m);
            }
            if (eventsUploadResult == null) {
                ListenableWorker.AbstractC0414a.C0416b c0416b2 = new ListenableWorker.AbstractC0414a.C0416b();
                s1.z.c.l.d(c0416b2, "ListenableWorker.Result.retry()");
                c0416b = c0416b2;
            } else {
                int ordinal2 = eventsUploadResult.ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 == 1) {
                        ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
                        s1.z.c.l.d(c0415a, "ListenableWorker.Result.failure()");
                        c0416b = c0415a;
                    } else if (ordinal2 != 2) {
                        throw new s1.i();
                    }
                }
                ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                s1.z.c.l.d(c0417c, "ListenableWorker.Result.success()");
                c0416b = c0417c;
            }
            return c0416b;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            if (this.f54489n.m10961i0().isEnabled()) {
                n.B0(new AppHeartBeatTaskEvent(AppHeartBeatTaskEvent.Result.FAILED_BUILDING_EVENT, 0L, 2), this.f54488m);
            }
            ListenableWorker.AbstractC0414a.C0416b c0416b3 = new ListenableWorker.AbstractC0414a.C0416b();
            s1.z.c.l.d(c0416b3, "ListenableWorker.Result.retry()");
            return c0416b3;
        }
    }

    /* renamed from: d */
    public final void m13104d(C17703q0.C17705b c17705b, TelephonyManager telephonyManager) {
        List<CellInfo> list;
        int i;
        try {
            list = telephonyManager.getAllCellInfo();
        } catch (SecurityException e) {
            list = null;
        }
        int i2 = 0;
        if (list == null) {
            try {
                CellLocation cellLocation = telephonyManager.getCellLocation();
                if (!(cellLocation instanceof GsmCellLocation)) {
                    if (!(cellLocation instanceof CdmaCellLocation)) {
                        return;
                    }
                    Schema schema = C17622k3.f49695c;
                    C17622k3.C17624b c17624b = new C17622k3.C17624b(null);
                    CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                    c17624b.m15918b(cdmaCellLocation.getBaseStationLatitude());
                    c17624b.m15917c(cdmaCellLocation.getBaseStationLongitude());
                    c17705b.m15844b(c17624b.build());
                    return;
                }
                String networkOperator = telephonyManager.getNetworkOperator();
                if (networkOperator != null && networkOperator.length() > 3) {
                    try {
                        String substring = networkOperator.substring(0, 3);
                        s1.z.c.l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        i = Integer.parseInt(substring);
                        try {
                            String substring2 = networkOperator.substring(3);
                            s1.z.c.l.d(substring2, "(this as java.lang.String).substring(startIndex)");
                            i2 = Integer.parseInt(substring2);
                        } catch (NumberFormatException e2) {
                        }
                    } catch (NumberFormatException e3) {
                    }
                    C17712q3.C17714b m15839a = C17712q3.m15839a();
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                    m15839a.m15837b(gsmCellLocation.getCid());
                    m15839a.m15836c(gsmCellLocation.getLac());
                    m15839a.m15834e(i2);
                    m15839a.m15835d(i);
                    c17705b.m15843c(m15839a.build());
                    return;
                }
                i = 0;
                C17712q3.C17714b m15839a2 = C17712q3.m15839a();
                GsmCellLocation gsmCellLocation2 = (GsmCellLocation) cellLocation;
                m15839a2.m15837b(gsmCellLocation2.getCid());
                m15839a2.m15836c(gsmCellLocation2.getLac());
                m15839a2.m15834e(i2);
                m15839a2.m15835d(i);
                c17705b.m15843c(m15839a2.build());
                return;
            } catch (SecurityException e4) {
                return;
            }
        }
        for (CellInfo cellInfo : list) {
            if (cellInfo.isRegistered()) {
                if (cellInfo instanceof CellInfoGsm) {
                    CellIdentityGsm cellIdentity = ((CellInfoGsm) cellInfo).getCellIdentity();
                    if (cellIdentity != null) {
                        s1.z.c.l.d(cellIdentity, "cell.cellIdentity ?: continue@loop");
                        C17712q3.C17714b m15839a3 = C17712q3.m15839a();
                        m15839a3.m15835d(cellIdentity.getMcc());
                        m15839a3.m15834e(cellIdentity.getMnc());
                        m15839a3.m15836c(cellIdentity.getLac());
                        m15839a3.m15837b(cellIdentity.getCid());
                        c17705b.m15843c(m15839a3.build());
                        return;
                    }
                } else {
                    boolean z = true;
                    if (cellInfo instanceof CellInfoLte) {
                        CellIdentityLte cellIdentity2 = ((CellInfoLte) cellInfo).getCellIdentity();
                        if (cellIdentity2 != null) {
                            s1.z.c.l.d(cellIdentity2, "cell.cellIdentity ?: continue@loop");
                            Schema schema2 = C17757t3.f50346e;
                            C17757t3.C17759b c17759b = new C17757t3.C17759b(null);
                            int mcc = cellIdentity2.getMcc();
                            c17759b.validate(c17759b.fields()[0], Integer.valueOf(mcc));
                            c17759b.f50354a = mcc;
                            c17759b.fieldSetFlags()[0] = true;
                            int mnc = cellIdentity2.getMnc();
                            c17759b.validate(c17759b.fields()[1], Integer.valueOf(mnc));
                            c17759b.f50355b = mnc;
                            c17759b.fieldSetFlags()[1] = true;
                            int ci = cellIdentity2.getCi();
                            c17759b.validate(c17759b.fields()[2], Integer.valueOf(ci));
                            c17759b.f50356c = ci;
                            c17759b.fieldSetFlags()[2] = true;
                            int tac = cellIdentity2.getTac();
                            c17759b.validate(c17759b.fields()[3], Integer.valueOf(tac));
                            c17759b.f50357d = tac;
                            c17759b.fieldSetFlags()[3] = true;
                            C17757t3 build = c17759b.build();
                            c17705b.validate(c17705b.fields()[8], build);
                            c17705b.f50107g = build;
                            c17705b.fieldSetFlags()[8] = true;
                            return;
                        }
                    } else if (cellInfo instanceof CellInfoCdma) {
                        CellIdentityCdma cellIdentity3 = ((CellInfoCdma) cellInfo).getCellIdentity();
                        if (cellIdentity3 != null) {
                            s1.z.c.l.d(cellIdentity3, "cell.cellIdentity ?: continue@loop");
                            Schema schema3 = C17622k3.f49695c;
                            C17622k3.C17624b c17624b2 = new C17622k3.C17624b(null);
                            c17624b2.m15918b(cellIdentity3.getLongitude());
                            c17624b2.m15917c(cellIdentity3.getLatitude());
                            c17705b.m15844b(c17624b2.build());
                            return;
                        }
                    } else if (!(cellInfo instanceof CellInfoWcdma)) {
                        continue;
                    } else {
                        CellIdentityWcdma cellIdentity4 = ((CellInfoWcdma) cellInfo).getCellIdentity();
                        if (cellIdentity4 != null) {
                            s1.z.c.l.d(cellIdentity4, "cell.cellIdentity ?: return false");
                            C17712q3.C17714b m15839a4 = C17712q3.m15839a();
                            m15839a4.m15835d(cellIdentity4.getMcc());
                            m15839a4.m15834e(cellIdentity4.getMnc());
                            m15839a4.m15836c(cellIdentity4.getLac());
                            m15839a4.m15837b(cellIdentity4.getCid());
                            c17705b.m15843c(m15839a4.build());
                        } else {
                            z = false;
                        }
                        if (z) {
                            return;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x03cb, code lost:
        if (r5 != null) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0722 A[Catch: SecurityException -> 0x073a, TRY_LEAVE, TryCatch #4 {SecurityException -> 0x073a, blocks: (B:121:0x0715, B:123:0x0722, B:124:0x0730), top: B:149:0x0715 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0730 A[Catch: SecurityException -> 0x073a, TRY_ENTER, TRY_LEAVE, TryCatch #4 {SecurityException -> 0x073a, blocks: (B:121:0x0715, B:123:0x0722, B:124:0x0730), top: B:149:0x0715 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x078f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x07be  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x04d3  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p1050l5.p1051a.C17703q0 m13103e(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 2077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1157z0.C19606c.m13103e(java.lang.String):e.a.l5.a.q0");
    }
}
