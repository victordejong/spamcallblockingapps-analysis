package p193e.p194a.p195a.p244k.p250a0;

import android.app.PendingIntent;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.provider.Telephony;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.sms.SmsReceiver;
import com.truecaller.messaging.transport.sms.SmsTransportInfo;
import com.truecaller.multisim.SimInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.C6676e;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import p193e.p194a.p712e4.AbstractC13490i;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.u.i;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.k.a0.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/g.class */
public class C6661g implements AbstractC6704q<C6666i> {

    /* renamed from: r */
    public static final SmsMessage[] f21972r = new SmsMessage[0];

    /* renamed from: s */
    public static final Uri f21973s;

    /* renamed from: t */
    public static final String f21974t;

    /* renamed from: a */
    public final Context f21975a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19463a0> f21976b;

    /* renamed from: c */
    public final AbstractC19230g f21977c;

    /* renamed from: d */
    public final HandlerThread f21978d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC6233m>> f21979e;

    /* renamed from: f */
    public final C6660f f21980f;

    /* renamed from: g */
    public final AbstractC6392i0 f21981g;

    /* renamed from: h */
    public final AbstractC19854f<AbstractC7343q> f21982h;

    /* renamed from: i */
    public final AbstractC13497p f21983i;

    /* renamed from: j */
    public final AbstractC8621z f21984j;

    /* renamed from: k */
    public final C6713w.AbstractC6717c f21985k;

    /* renamed from: l */
    public final AbstractC19462a f21986l;

    /* renamed from: m */
    public final AbstractC19219a0 f21987m;

    /* renamed from: n */
    public final C20592g f21988n;

    /* renamed from: o */
    public final AbstractC7156p f21989o;

    /* renamed from: p */
    public C6663b f21990p = null;

    /* renamed from: q */
    public boolean f21991q = false;

    /* renamed from: e.a.a.k.a0.g$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/g$b.class */
    public static class C6663b extends AbstractC6696o.AbstractC6701e {

        /* renamed from: a */
        public final Uri f21992a;

        /* renamed from: b */
        public long f21993b;

        /* renamed from: c */
        public final BlockingQueue<AbstractC6696o> f21994c = new LinkedBlockingQueue();

        public C6663b(Uri uri, int i, C6662a c6662a) {
            this.f21992a = uri;
            this.f21993b = ((long) Math.pow(2.0d, i)) - 1;
        }

        @Override // p193e.p194a.p195a.p244k.AbstractC6696o.AbstractC6701e
        /* renamed from: a */
        public AbstractC6696o mo30471a(long j, TimeUnit timeUnit) {
            try {
                C6657c poll = this.f21994c.poll(j, timeUnit);
                if (poll == null) {
                    poll = new C6657c("timeout", null, null);
                }
                return poll;
            } catch (InterruptedException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                return new C6657c("resultInterrupted", null, null);
            }
        }

        /* renamed from: b */
        public boolean m30592b(Uri uri, int i, int i2, long j) {
            if (!this.f21992a.equals(uri)) {
                return true;
            }
            if (i != -1) {
                this.f21994c.add(new C6657c("errorResult", Integer.valueOf(i), Integer.valueOf(i2)));
                return true;
            }
            long pow = this.f21993b & (((int) Math.pow(2.0d, j)) ^ (-1));
            this.f21993b = pow;
            if (pow != 0) {
                return false;
            }
            this.f21994c.add(new AbstractC6696o.C6700d(null));
            return true;
        }
    }

    /* renamed from: e.a.a.k.a0.g$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/g$c.class */
    public static class C6664c extends ContentObserver {

        /* renamed from: a */
        public final ContentResolver f21995a;

        /* renamed from: b */
        public final a<AbstractC19854f<AbstractC6233m>> f21996b;

        public C6664c(Looper looper, ContentResolver contentResolver, a<AbstractC19854f<AbstractC6233m>> aVar) {
            super(new Handler(looper));
            this.f21995a = contentResolver;
            this.f21996b = aVar;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            ((AbstractC6233m) ((AbstractC19854f) this.f21996b.get()).mo11854a()).mo31686k(true, Collections.singleton(0));
            this.f21995a.unregisterContentObserver(this);
        }
    }

    static {
        Uri uri = Telephony.Sms.CONTENT_URI;
        f21973s = uri;
        f21974t = uri.getAuthority();
    }

    public C6661g(Context context, AbstractC19854f<AbstractC19463a0> abstractC19854f, HandlerThread handlerThread, AbstractC19230g abstractC19230g, a<AbstractC19854f<AbstractC6233m>> aVar, C6660f c6660f, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC7343q> abstractC19854f2, AbstractC13497p abstractC13497p, AbstractC8621z abstractC8621z, C6713w.AbstractC6717c abstractC6717c, AbstractC19462a abstractC19462a, AbstractC19219a0 abstractC19219a0, C20592g c20592g, AbstractC7156p abstractC7156p) {
        this.f21975a = context;
        this.f21978d = handlerThread;
        this.f21976b = abstractC19854f;
        this.f21977c = abstractC19230g;
        this.f21979e = aVar;
        new C6664c(handlerThread.getLooper(), context.getContentResolver(), aVar);
        this.f21980f = c6660f;
        this.f21981g = abstractC6392i0;
        this.f21982h = abstractC19854f2;
        this.f21983i = abstractC13497p;
        this.f21984j = abstractC8621z;
        this.f21985k = abstractC6717c;
        this.f21986l = abstractC19462a;
        this.f21987m = abstractC19219a0;
        this.f21988n = c20592g;
        this.f21989o = abstractC7156p;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return this.f21987m.mo13825h("android.permission.READ_SMS") && m30597D();
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0165, code lost:
        if (r16 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0182, code lost:
        if (r16 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0185, code lost:
        r16.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018c, code lost:
        r19 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0254 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x025d A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.AbstractC6704q.C6705a mo15187B(com.truecaller.messaging.data.types.Message r11, com.truecaller.data.entity.messaging.Participant[] r12) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p250a0.C6661g.mo15187B(com.truecaller.messaging.data.types.Message, com.truecaller.data.entity.messaging.Participant[]):e.a.a.k.q$a");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
        if (r9 != 2) goto L30;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle mo15186C(android.content.Intent r8, int r9) {
        /*
            Method dump skipped, instructions count: 1135
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p250a0.C6661g.mo15186C(android.content.Intent, int):android.os.Bundle");
    }

    /* renamed from: D */
    public final boolean m30597D() {
        return this.f21977c.mo13782o(this.f21989o.getName());
    }

    /* renamed from: E */
    public final SmsMessage[] m30596E(Intent intent) {
        SmsMessage[] smsMessageArr = f21972r;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return smsMessageArr;
        }
        if (extras.get("pdus") != null) {
            SmsMessage[] messagesFromIntent = Telephony.Sms.Intents.getMessagesFromIntent(intent);
            return (messagesFromIntent == null || messagesFromIntent.length < 1) ? smsMessageArr : messagesFromIntent;
        }
        StringBuilder m8728C = C22128a.m8728C("Intent from Telephony.Sms.Intents.SMS_RECEIVED_ACTION does not have pdus extra, but has: [");
        m8728C.append(h.o(extras.keySet(), ','));
        m8728C.append("]");
        AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
        return smsMessageArr;
    }

    /* renamed from: F */
    public final boolean m30595F(String str) {
        SimInfo mo21719v = this.f21983i.mo21719v(str);
        AbstractC13490i mo21726i = this.f21983i.mo21726i(str);
        if (mo21719v == null) {
            return false;
        }
        boolean z = false;
        if (mo21726i.mo21761d()) {
            z = false;
            if (this.f21981g.mo31004r1(mo21719v.f13983a)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0127 -> B:15:0x00cf). Please submit an issue!!! */
    /* renamed from: G */
    public final Message m30594G(SmsMessage[] smsMessageArr, String str, int i) {
        String str2;
        SmsMessage smsMessage = smsMessageArr[0];
        SmsTransportInfo.C4266b c4266b = new SmsTransportInfo.C4266b();
        c4266b.f13882h = smsMessage.getServiceCenterAddress();
        c4266b.f13883i = i;
        c4266b.f13880f = smsMessage.getProtocolIdentifier();
        c4266b.f13884j = smsMessage.isReplyPathPresent();
        c4266b.f13877c = smsMessage.getStatus();
        String pseudoSubject = smsMessage.getPseudoSubject();
        if (!TextUtils.isEmpty(pseudoSubject)) {
            c4266b.f13885k = pseudoSubject;
        }
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.f13423c = Participant.m35458a((String) h.c(smsMessage.getDisplayOriginatingAddress(), "Unknown sender"), this.f21984j, str);
        c4209b.m35010c(System.currentTimeMillis());
        c4209b.m35009d(smsMessage.getTimestampMillis());
        if (smsMessageArr.length == 1) {
            String displayMessageBody = smsMessageArr[0].getDisplayMessageBody();
            if (displayMessageBody != null) {
                str2 = displayMessageBody.replace('\f', '\n');
            }
            str2 = "";
        } else {
            StringBuilder sb = new StringBuilder();
            for (SmsMessage smsMessage2 : smsMessageArr) {
                try {
                    sb.append(smsMessage2.getDisplayMessageBody());
                } catch (NullPointerException e) {
                }
            }
            String sb2 = sb.toString();
            if (sb2 != null) {
                str2 = sb2.replace('\f', '\n');
            }
            str2 = "";
        }
        c4209b.m35006g(Entity.m35050a(-1L, "text/plain", 0, str2));
        String str3 = str;
        if (str == null) {
            str3 = "-1";
        }
        c4209b.f13433m = str3;
        SmsTransportInfo m34886a = c4266b.m34886a();
        c4209b.f13431k = 0;
        c4209b.f13434n = m34886a;
        return c4209b.m35012a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0250  */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v0, types: [long] */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.net.Uri m30593H(android.content.Context r7, com.truecaller.messaging.data.types.Message r8) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p250a0.C6661g.m30593H(android.content.Context, com.truecaller.messaging.data.types.Message):android.net.Uri");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.C6702p mo15185a(com.truecaller.messaging.data.types.Message r8) {
        /*
            r7 = this;
            r0 = r7
            r1 = r7
            android.content.Context r1 = r1.f21975a
            r2 = r8
            android.net.Uri r0 = r0.m30593H(r1, r2)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L16
            r0 = r9
            long r0 = android.content.ContentUris.parseId(r0)     // Catch: java.lang.NumberFormatException -> Lc6
            r10 = r0
            goto L1a
        L16:
            r0 = -1
            r10 = r0
        L1a:
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L26
            e.a.a.k.p r0 = p193e.p194a.p195a.p244k.C6702p.m30566a()
            return r0
        L26:
            r0 = r8
            boolean r0 = r0.f13387h
            if (r0 == 0) goto L30
            goto Lba
        L30:
            r0 = r10
            r1 = r8
            w3.b.a.b r1 = r1.f13384e
            java.lang.String r0 = com.truecaller.messaging.data.types.Message.m35022d(r0, r1)
            r12 = r0
            r0 = r8
            com.truecaller.data.entity.messaging.Participant r0 = r0.f13382c
            java.lang.String r0 = r0.f11572e
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            java.lang.String r1 = "+"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L58
            r0 = r13
            r1 = 1
            java.lang.String r0 = r0.substring(r1)
            r9 = r0
        L58:
            r0 = r8
            int r0 = r0.f13386g     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto Lba
            org.apache.avro.Schema r0 = p193e.p194a.p1050l5.p1051a.C17436a1.f48828g     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r13 = r0
            e.a.l5.a.a1$b r0 = new e.a.l5.a.a1$b     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r13 = r0
            r0 = r13
            r1 = 0
            r0.<init>(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r0 = r13
            java.lang.String r1 = "sms"
            e.a.l5.a.a1$b r0 = r0.m16034c(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r0 = r13
            r1 = r12
            e.a.l5.a.a1$b r0 = r0.m16035b(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r0 = r13
            r1 = r9
            e.a.l5.a.a1$b r0 = r0.m16033d(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r0 = r13
            r1 = r8
            com.truecaller.data.entity.messaging.Participant r1 = r1.f13382c     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            java.lang.String r1 = r1.m35452g()     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            e.a.l5.a.a1$b r0 = r0.m16032e(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r0 = r13
            e.a.l5.a.a1 r0 = r0.build()     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r8 = r0
            r0 = r7
            e.a.r2.f<e.a.q2.a0> r0 = r0.f21976b     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            java.lang.Object r0 = r0.mo11854a()     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            e.a.q2.a0 r0 = (p193e.p194a.p1146q2.AbstractC19463a0) r0     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            r1 = r8
            r0.mo13111a(r1)     // Catch: org.apache.avro.AvroRuntimeException -> Lb1
            goto Lba
        Lb1:
            r8 = move-exception
            r0 = r8
            r1 = 0
            java.lang.String[] r1 = new java.lang.String[r1]
            com.truecaller.log.AssertionUtil.shouldNeverHappen(r0, r1)
        Lba:
            e.a.a.k.p r0 = new e.a.a.k.p
            r1 = r0
            r2 = 1
            r3 = 1
            r4 = 1
            r5 = 0
            r1.<init>(r2, r3, r4, r5)
            return r0
        Lc6:
            r9 = move-exception
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p250a0.C6661g.mo15185a(com.truecaller.messaging.data.types.Message):e.a.a.k.p");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        synchronized (this) {
            AssertionUtil.notOnMainThread(new String[0]);
            AssertionUtil.isTrue(message.f13390k == 0, new String[0]);
            SmsTransportInfo smsTransportInfo = (SmsTransportInfo) message.f13393n;
            AssertionUtil.isNotNull(smsTransportInfo.f13867e, "Save message to system database before actual sending");
            ArrayList<String> divideMessage = SmsManager.getDefault().divideMessage(message.m35025a());
            ArrayList<PendingIntent> arrayList = new ArrayList<>();
            ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
            int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728;
            int size = divideMessage.size();
            for (int i2 = 0; i2 < size; i2++) {
                Intent intent = new Intent(this.f21975a, SmsReceiver.class);
                intent.setAction("com.truecaller.messaging.SmsStatusReceived.SMS_SENT");
                intent.setData(smsTransportInfo.f13867e);
                intent.putExtra("message_part", i2);
                intent.setFlags(268435456);
                arrayList.add(PendingIntent.getBroadcast(this.f21975a, i2, intent, i));
            }
            if (m30595F(message.f13392m)) {
                Intent intent2 = new Intent(this.f21975a, SmsReceiver.class);
                intent2.setAction("com.truecaller.messaging.SmsStatusReceived.SMS_STATUS");
                intent2.setData(smsTransportInfo.f13867e);
                intent2.putExtra("date", ((e) message.f13384e).a);
                intent2.setFlags(268435456);
                arrayList2.add(PendingIntent.getBroadcast(this.f21975a, 0, intent2, i));
            }
            String str = message.f13382c.f11572e;
            AssertionUtil.isFalse(TextUtils.isEmpty(str), "Destination can not be empty");
            try {
                if (this.f21983i.mo21726i(message.f13392m).mo21763b()) {
                    int size2 = divideMessage.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        if (!this.f21983i.mo21738l(str, smsTransportInfo.f13871i, divideMessage.get(i3), arrayList.get(i3), (arrayList2.isEmpty() || i3 != size2 - 1) ? null : arrayList2.get(0), message.f13392m)) {
                            return new C6657c("sendFailed", null, null);
                        }
                        i3++;
                    }
                } else if (!this.f21983i.mo21737o(str, smsTransportInfo.f13871i, divideMessage, arrayList, arrayList2, message.f13392m)) {
                    return new C6657c("sendMultipartFailed", null, null);
                }
                C6663b c6663b = new C6663b(smsTransportInfo.f13867e, divideMessage.size(), null);
                this.f21990p = c6663b;
                return c6663b;
            } catch (RuntimeException e) {
                AssertionUtil.OnlyInDebug.shouldNeverHappen(e, new String[0]);
                AssertionUtil.reportThrowableButNeverCrash(e);
                return new C6657c("exception", null, null);
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return TokenResponseDto.METHOD_SMS;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        this.f21981g.mo31147S0(0, ((e) bVar).a);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        return message.m35020f() && !message.m35018h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.io.IOException] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        Cursor cursor;
        RuntimeException e;
        char c;
        Throwable th;
        char mo31057i2 = this.f21981g.mo31057i2(0, 0L);
        char c2 = mo31057i2;
        if (!this.f21991q) {
            c2 = mo31057i2;
            if (this.f21987m.mo13825h("android.permission.SEND_SMS")) {
                c2 = mo31057i2;
                if (this.f21987m.mo13825h("android.permission.READ_SMS")) {
                    ContentResolver contentResolver = this.f21975a.getContentResolver();
                    Cursor e2 = null;
                    try {
                        try {
                            try {
                                Uri uri = f21973s;
                                cursor = contentResolver.query(uri, new String[]{"date"}, "type=6", null, "date DESC LIMIT 1");
                                c = mo31057i2;
                                e2 = false;
                                if (cursor != null) {
                                    char c3 = mo31057i2;
                                    c = mo31057i2;
                                    try {
                                        e2 = false;
                                        if (cursor.moveToNext()) {
                                            ?? r0 = cursor.getLong(0);
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("type", (Integer) 5);
                                            contentResolver.update(uri, contentValues, "type=6", null);
                                            c = mo31057i2;
                                            if (r0 < mo31057i2) {
                                                c = r0;
                                            }
                                            c3 = c;
                                            this.f21981g.mo31147S0(0, c);
                                            e2 = contentValues;
                                        }
                                    } catch (RuntimeException e3) {
                                        e = e3;
                                        mo31057i2 = c3;
                                        e2 = cursor;
                                        AssertionUtil.reportThrowableButNeverCrash(e);
                                        c2 = mo31057i2;
                                        if (cursor != null) {
                                            cursor.close();
                                            c2 = mo31057i2;
                                            e2 = e2;
                                        }
                                        this.f21991q = true;
                                        return new b(c2);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        e2 = cursor;
                                        if (e2 != null) {
                                            try {
                                                e2.close();
                                            } catch (IOException e4) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                c2 = c;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (RuntimeException e5) {
                            e = e5;
                            cursor = null;
                        }
                        if (cursor != null) {
                            cursor.close();
                            c2 = c;
                            e2 = e2;
                        }
                    } catch (IOException e6) {
                        e2 = e6;
                    }
                    this.f21991q = true;
                }
            }
        }
        return new b(c2);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        return str;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        if (!this.f21987m.mo13825h("android.permission.READ_SMS")) {
            return 0L;
        }
        return this.f21980f.mo30495j(abstractC6691j, abstractC6694m, abstractC6139g0, bVar, bVar2, i, list, abstractC19244l0, z, c10545d);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        return !c6713w.mo30534c() && c6713w.f22101a.equals(f21974t);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6666i c6666i, boolean z, Set set) {
        C6666i c6666i2 = c6666i;
        boolean z2 = false;
        if (c6666i2.f21999e) {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof SmsTransportInfo, new String[0]);
            SmsTransportInfo smsTransportInfo = (SmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(smsTransportInfo.f13867e, new String[0]);
            c6666i2.f21998d.add(Long.valueOf(smsTransportInfo.f13864b));
            set.add(Long.valueOf(smsTransportInfo.f13863a));
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6666i c6666i) {
        C6666i c6666i2 = c6666i;
        boolean z = false;
        if (c6666i2.f21999e) {
            Iterator it = ((ArrayList) i.k(c6666i2.f21998d, 989)).iterator();
            while (it.hasNext()) {
                List<Number> list = (List) it.next();
                C6713w.C6715b.C6716a m30533d = c6666i2.m30533d(Telephony.Sms.CONTENT_URI);
                String m8630e = C22128a.m8630e(C22128a.m8728C("_id IN ("), i.O(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6665h.f21997b, 30), ')');
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (Number number : list) {
                    arrayList.add(String.valueOf(number.longValue()));
                }
                Object[] array = arrayList.toArray(new String[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                m30533d.f22111d = m8630e;
                m30533d.f22112e = (String[]) array;
                c6666i2.m30536a(m30533d.m30531a());
            }
            c6666i2.f21998d.clear();
            try {
                if (this.f21985k.mo30530a(c6666i2).length != 0) {
                    z = true;
                }
            } catch (OperationApplicationException | RemoteException | SecurityException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        throw new IllegalStateException("Sms transport can not be used to cancel attachments.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6666i c6666i) {
        C6666i c6666i2 = c6666i;
        boolean z = false;
        if (c6666i2.f21999e) {
            AssertionUtil.AlwaysFatal.isTrue(message.f13393n instanceof SmsTransportInfo, new String[0]);
            SmsTransportInfo smsTransportInfo = (SmsTransportInfo) message.f13393n;
            C6713w.C6715b.C6716a m30532e = c6666i2.m30532e(f21973s);
            m30532e.f22110c.put("type", Integer.valueOf(SmsTransportInfo.m34888a(i)));
            long j = smsTransportInfo.f13864b;
            int m34888a = SmsTransportInfo.m34888a(message.f13386g);
            z = true;
            m30532e.f22111d = "_id=? AND type = ?";
            m30532e.f22112e = new String[]{String.valueOf(j), String.valueOf(m34888a)};
            c6666i2.m30536a(m30532e.m30531a());
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new IllegalStateException("SMS transport does not support retry");
    }

    public String toString() {
        return "SMS transport";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6666i c6666i, boolean z) {
        boolean z2;
        C6666i c6666i2 = c6666i;
        if (!c6666i2.f21999e) {
            z2 = false;
        } else {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof SmsTransportInfo, new String[0]);
            SmsTransportInfo smsTransportInfo = (SmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(smsTransportInfo.f13867e, new String[0]);
            C6713w.C6715b.C6716a m30532e = c6666i2.m30532e(smsTransportInfo.f13867e);
            m30532e.f22110c.put("read", (Integer) 1);
            if (z) {
                m30532e.f22110c.put("seen", (Integer) 1);
            }
            c6666i2.m30536a(m30532e.m30531a());
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        return m30597D() && this.f21987m.mo13825h("android.permission.SEND_SMS") && mo15178i(message) && mo15165x(message.f13382c);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6666i mo15166w() {
        return new C6666i(m30597D());
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        int i = participant.f11569b;
        boolean z = true;
        if (i != 0) {
            z = i == 1;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6666i c6666i) {
        C6666i c6666i2 = c6666i;
        boolean z = false;
        if (c6666i2.f21999e) {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof SmsTransportInfo, new String[0]);
            SmsTransportInfo smsTransportInfo = (SmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(smsTransportInfo.f13867e, new String[0]);
            C6713w.C6715b.C6716a m30532e = c6666i2.m30532e(smsTransportInfo.f13867e);
            z = true;
            m30532e.f22110c.put("seen", (Integer) 1);
            c6666i2.m30536a(m30532e.m30531a());
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        if (str.isEmpty()) {
            c6676e.m30585a(0, 0, 0, 0);
            return false;
        }
        int[] calculateLength = SmsMessage.calculateLength(str, false);
        c6676e.m30585a(calculateLength[1], calculateLength[2], calculateLength[0], 0);
        return true;
    }
}
