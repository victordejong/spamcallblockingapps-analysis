package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.messenger.p138v1.UpdateContextSettings;
import com.truecaller.api.services.messenger.p138v1.models.input.InputReportType;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.messaging.transport.p170im.SendImReportWorker;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6625s1;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.k.a.a.v */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/v.class */
public final class C6494v implements AbstractC6493u {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f21507a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC6543e1> f21508b;

    /* renamed from: c */
    public final AbstractC21309b f21509c;

    /* renamed from: d */
    public final ContentResolver f21510d;

    /* renamed from: e */
    public final AbstractC26857y f21511e;

    /* renamed from: f */
    public final AbstractC6392i0 f21512f;

    /* renamed from: g */
    public final AbstractC6625s1 f21513g;

    /* renamed from: h */
    public final f f21514h;

    @e(c = "com.truecaller.messaging.transport.im.groups.ImReportHelperImpl$updateReadReportsSetting$1", f = "ImReportHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.a.v$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/v$a.class */
    public static final class C6495a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ boolean f21516f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6495a(boolean z, d dVar) {
            super(2, dVar);
            C6494v.this = r5;
            this.f21516f = z;
        }

        /* renamed from: i */
        public final d<s> m30854i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6495a(this.f21516f, dVar);
        }

        /* renamed from: k */
        public final Object m30853k(Object obj, Object obj2) {
            C20458b.C20459a mo20911c;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6494v c6494v = C6494v.this;
            boolean z = this.f21516f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            try {
                UpdateContextSettings.Request.C3119a newBuilder = UpdateContextSettings.Request.newBuilder();
                UpdateContextSettings.Request.InputGlobalContextSettingsUpdate.C3116a newBuilder2 = UpdateContextSettings.Request.InputGlobalContextSettingsUpdate.newBuilder();
                newBuilder2.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder2).instance.setReadReportsEnabled(z);
                UpdateContextSettings.Request.InputGlobalContextSettingsUpdate build = newBuilder2.build();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setUpdateGlobalContext(build);
                UpdateContextSettings.Request build2 = newBuilder.build();
                mo20911c = c6494v.f21513g.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
                C20458b.C20459a c20459a = mo20911c;
                if (c20459a != null) {
                    c20459a.m11104u(build2);
                }
            } catch (RuntimeException e) {
            }
            return sVar;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x005e -> B:6:0x005a). Please submit an issue!!! */
        /* renamed from: s */
        public final Object m30852s(Object obj) {
            C20458b.C20459a mo20911c;
            C25225a.m3932a3(obj);
            try {
                UpdateContextSettings.Request.C3119a newBuilder = UpdateContextSettings.Request.newBuilder();
                UpdateContextSettings.Request.InputGlobalContextSettingsUpdate.C3116a newBuilder2 = UpdateContextSettings.Request.InputGlobalContextSettingsUpdate.newBuilder();
                boolean z = this.f21516f;
                newBuilder2.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder2).instance.setReadReportsEnabled(z);
                UpdateContextSettings.Request.InputGlobalContextSettingsUpdate build = newBuilder2.build();
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setUpdateGlobalContext(build);
                UpdateContextSettings.Request build2 = newBuilder.build();
                mo20911c = C6494v.this.f21513g.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
                C20458b.C20459a c20459a = mo20911c;
                if (c20459a != null) {
                    c20459a.m11104u(build2);
                }
            } catch (RuntimeException e) {
            }
            return s.a;
        }
    }

    @Inject
    public C6494v(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC19854f<AbstractC6543e1> abstractC19854f, AbstractC21309b abstractC21309b, ContentResolver contentResolver, AbstractC26857y abstractC26857y, AbstractC6392i0 abstractC6392i0, AbstractC6625s1 abstractC6625s1, @Named("IO") f fVar) {
        l.e(aVar, "messageStorage");
        l.e(abstractC19854f, "imUserManager");
        l.e(abstractC21309b, "dataManager");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC26857y, "workManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC6625s1, "stubManager");
        l.e(fVar, "asyncCoroutineContext");
        this.f21507a = aVar;
        this.f21508b = abstractC19854f;
        this.f21509c = abstractC21309b;
        this.f21510d = contentResolver;
        this.f21511e = abstractC26857y;
        this.f21512f = abstractC6392i0;
        this.f21513g = abstractC6625s1;
        this.f21514h = fVar;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u
    /* renamed from: a */
    public C6702p mo30861a(Message message) {
        Boolean bool;
        boolean z;
        l.e(message, "message");
        TransportInfo transportInfo = message.f13393n;
        l.d(transportInfo, "message.getTransportInfo()");
        ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
        C6702p c6702p = null;
        switch (imTransportInfo.f13745r) {
            case 1000:
                TransportInfo transportInfo2 = message.f13393n;
                l.d(transportInfo2, "message.getTransportInfo<ImTransportInfo>()");
                ImTransportInfo imTransportInfo2 = (ImTransportInfo) transportInfo2;
                ContentValues contentValues = new ContentValues();
                contentValues.put("info1", Integer.valueOf(imTransportInfo2.f13731d));
                if (message.f13382c.f11569b == 4 ? m30855g(imTransportInfo2, contentValues, "info1 != ?", new String[]{String.valueOf(imTransportInfo2.f13731d)}) : m30856f(imTransportInfo2, contentValues)) {
                    String str = imTransportInfo2.f13729b;
                    ContentResolver contentResolver = this.f21510d;
                    Uri m28305o = C8582g0.m28305o(2);
                    ContentValues contentValues2 = new ContentValues();
                    b bVar = message.f13383d;
                    l.d(bVar, "message.dateSent");
                    contentValues2.put("date_sent", Long.valueOf(((w3.b.a.e0.e) bVar).a));
                    if (contentResolver.update(m28305o, contentValues2, "raw_id = ?", new String[]{str}) > 0) {
                        z = true;
                        bool = Boolean.valueOf(z);
                        break;
                    }
                }
                z = false;
                bool = Boolean.valueOf(z);
            case 1001:
                TransportInfo transportInfo3 = message.f13393n;
                l.d(transportInfo3, "message.getTransportInfo()");
                ImTransportInfo imTransportInfo3 = (ImTransportInfo) transportInfo3;
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("info2", Integer.valueOf(imTransportInfo3.f13732e));
                contentValues3.put("info10", Long.valueOf(imTransportInfo3.f13739l));
                bool = Boolean.valueOf(message.f13382c.f11569b == 4 ? m30855g(imTransportInfo3, contentValues3, "info2 != ?", new String[]{String.valueOf(imTransportInfo3.f13732e)}) : this.f21512f.mo31048k() ? m30856f(imTransportInfo3, contentValues3) : false);
                break;
            case 1002:
                ContentValues contentValues4 = new ContentValues();
                contentValues4.put("info3", Integer.valueOf(imTransportInfo.f13733f));
                bool = Boolean.valueOf(m30856f(imTransportInfo, contentValues4));
                break;
            case 1003:
                ContentValues contentValues5 = new ContentValues();
                contentValues5.put("info4", Integer.valueOf(imTransportInfo.f13734g));
                bool = Boolean.valueOf(m30856f(imTransportInfo, contentValues5));
                break;
            default:
                bool = null;
                break;
        }
        if (bool != null) {
            c6702p = bool.booleanValue() ? new C6702p(true, false, false, null) : new C6702p(false, false, false, null);
        }
        return c6702p;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u
    /* renamed from: b */
    public void mo30860b(InputReportType inputReportType, long j) {
        l.e(inputReportType, "type");
        l.e(inputReportType, "reportType");
        C26842r.C26843a m1269e = new C26842r.C26843a(SendImReportWorker.class).m1269e(EnumC26674a.EXPONENTIAL, 30L, TimeUnit.SECONDS);
        HashMap hashMap = new HashMap();
        hashMap.put("report_type", Integer.valueOf(inputReportType.getNumber()));
        hashMap.put("message_id", Long.valueOf(j));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        m1269e.f75127c.f74906e = c26829f;
        m1269e.f75128d.add("send_im_report");
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1269e.f75127c.f74911j = new C26825d(c26826a);
        C26842r m1272b = m1269e.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        this.f21511e.m1279i("SendImReportV2", EnumC26832h.APPEND, m1272b);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u
    /* renamed from: c */
    public void mo30859c(Intent intent) {
        int i;
        l.e(intent, "intent");
        int intExtra = intent.getIntExtra("report_type", -1);
        if (intExtra == 0) {
            i = 1002;
        } else if (intExtra != 1) {
            return;
        } else {
            i = 1003;
        }
        ImTransportInfo imTransportInfo = (ImTransportInfo) intent.getParcelableExtra("transport_info");
        if (imTransportInfo != null) {
            ImTransportInfo.C4257a m34906a = imTransportInfo.m34906a();
            m34906a.f13754h = i;
            ImTransportInfo m34905a = m34906a.m34905a();
            Message.C4209b c4209b = new Message.C4209b();
            c4209b.f13423c = Participant.f11566B;
            c4209b.f13431k = 2;
            c4209b.f13434n = m34905a;
            Message m35012a = c4209b.m35012a();
            l.d(m35012a, "Message.Builder()\n      …nfo)\n            .build()");
            ((AbstractC6233m) ((AbstractC19854f) this.f21507a.get()).mo11854a()).mo31694d0(m35012a, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30858d(com.truecaller.api.services.messenger.p138v1.events.Event.ReportSent r9) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.p246a.C6494v.mo30858d(com.truecaller.api.services.messenger.v1.events.Event$ReportSent):void");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u
    /* renamed from: e */
    public void mo30857e(boolean z) {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f21514h, (j0) null, new C6495a(z, null), 2, (Object) null);
    }

    /* renamed from: f */
    public final boolean m30856f(ImTransportInfo imTransportInfo, ContentValues contentValues) {
        boolean z = false;
        AssertionUtil.AlwaysFatal.isNotNull(imTransportInfo.f13729b, new String[0]);
        if (this.f21510d.update(C8582g0.m28305o(2), contentValues, "raw_id = ?", new String[]{imTransportInfo.f13729b}) > 0) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public final boolean m30855g(ImTransportInfo imTransportInfo, ContentValues contentValues, String str, String[] strArr) {
        boolean z = true;
        Cursor query = this.f21510d.query(C8582g0.m28305o(2), new String[]{"conversation_id", "sequence_number"}, "raw_id = ?", new String[]{imTransportInfo.f13729b}, null);
        if (query != null) {
            try {
                k kVar = query.moveToFirst() ? new k(Long.valueOf(query.getLong(0)), Long.valueOf(query.getLong(1))) : null;
                C25225a.m4016G(query, null);
                if (kVar == null) {
                    return false;
                }
                long longValue = ((Number) kVar.a).longValue();
                long longValue2 = ((Number) kVar.b).longValue();
                if (this.f21510d.update(C8582g0.m28305o(2), contentValues, '(' + str + ") AND conversation_id = ? AND sequence_number <= ?", (String[]) s1.u.i.t0(strArr, new String[]{String.valueOf(longValue), String.valueOf(longValue2)})) <= 0) {
                    z = false;
                }
                return z;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
        return false;
    }
}
