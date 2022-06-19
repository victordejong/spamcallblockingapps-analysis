package p193e.p194a.p195a.p244k.p255y;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.Telephony;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import com.truecaller.messaging.transport.mms.PduEntity;
import com.truecaller.multisim.SimInfo;
import e.d.b.a.b.t;
import io.agora.rtc.Constants;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import o3.a;
import org.apache.avro.generic.GenericRecord;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1436b.p1437a.p1438b.C22111f;
import p193e.p1432d.p1436b.p1437a.p1438b.C22123n;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
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
import p193e.p194a.p195a.p244k.p252c0.C6671a;
import p193e.p194a.p195a.p244k.p253d0.AbstractC6673a;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.l;
import u3.a0;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.k.y.o */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/o.class */
public class C6745o implements AbstractC6704q<C6747p> {

    /* renamed from: u */
    public static final int[] f22220u;

    /* renamed from: x */
    public static final String f22223x;

    /* renamed from: y */
    public static final Uri f22224y;

    /* renamed from: z */
    public static final String f22225z;

    /* renamed from: a */
    public final Context f22226a;

    /* renamed from: b */
    public final AbstractC6392i0 f22227b;

    /* renamed from: c */
    public final a<AbstractC19854f<AbstractC6233m>> f22228c;

    /* renamed from: d */
    public final AbstractC13497p f22229d;

    /* renamed from: e */
    public final C6741l f22230e;

    /* renamed from: f */
    public final AbstractC19230g f22231f;

    /* renamed from: g */
    public final C6743n f22232g;

    /* renamed from: h */
    public final AbstractC6727d f22233h;

    /* renamed from: i */
    public final TelephonyManager f22234i;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC7343q> f22236k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC19463a0> f22237l;

    /* renamed from: m */
    public final C6713w.AbstractC6717c f22238m;

    /* renamed from: n */
    public final AbstractC19462a f22239n;

    /* renamed from: o */
    public final AbstractC19219a0 f22240o;

    /* renamed from: p */
    public final AbstractC7156p f22241p;

    /* renamed from: q */
    public final AbstractC6673a f22242q;

    /* renamed from: t */
    public static final long f22219t = TimeUnit.DAYS.toSeconds(7);

    /* renamed from: v */
    public static final String[] f22221v = {"date", "m_cls", "pri", "d_rpt", "rr"};

    /* renamed from: w */
    public static final String[] f22222w = {"charset", "address"};

    /* renamed from: j */
    public final Set<Long> f22235j = new HashSet();

    /* renamed from: r */
    public C6746a f22243r = null;

    /* renamed from: s */
    public boolean f22244s = false;

    /* renamed from: e.a.a.k.y.o$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/o$a.class */
    public static class C6746a extends AbstractC6696o.AbstractC6701e {

        /* renamed from: a */
        public final long f22245a;

        /* renamed from: b */
        public final Lock f22246b;

        /* renamed from: c */
        public final Condition f22247c;

        public C6746a(long j) {
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f22246b = reentrantLock;
            this.f22247c = reentrantLock.newCondition();
            this.f22245a = j;
        }

        @Override // p193e.p194a.p195a.p244k.AbstractC6696o.AbstractC6701e
        /* renamed from: a */
        public AbstractC6696o mo30471a(long j, TimeUnit timeUnit) {
            this.f22246b.lock();
            try {
                if (this.f22247c.await(j, timeUnit)) {
                    AbstractC6696o.C6700d c6700d = new AbstractC6696o.C6700d(String.valueOf(this.f22245a));
                    this.f22246b.unlock();
                    return c6700d;
                }
            } catch (InterruptedException e) {
            } catch (Throwable th) {
                this.f22246b.unlock();
                throw th;
            }
            this.f22246b.unlock();
            return new AbstractC6696o.C6698b("INTERNAL_CLIENT");
        }
    }

    static {
        String str;
        int[] iArr = {Constants.ERR_WATERMARK_READ, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, Constants.ERR_PUBLISH_STREAM_CDN_ERROR};
        f22220u = iArr;
        StringBuilder m8728C = C22128a.m8728C("type IN (");
        if (iArr == null) {
            str = null;
        } else {
            int length = iArr.length;
            int i = length + 0;
            if (i <= 0) {
                str = "";
            } else {
                StringBuilder sb = new StringBuilder(i * 16);
                for (int i2 = 0; i2 < length; i2++) {
                    if (i2 > 0) {
                        sb.append(',');
                    }
                    sb.append(iArr[i2]);
                }
                str = sb.toString();
            }
        }
        f22223x = C22128a.m8618h(m8728C, str, ")");
        Uri uri = Telephony.Mms.CONTENT_URI;
        f22224y = uri;
        f22225z = uri.getAuthority();
    }

    public C6745o(Context context, a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC6392i0 abstractC6392i0, AbstractC19230g abstractC19230g, AbstractC13497p abstractC13497p, C6741l c6741l, TelephonyManager telephonyManager, C6743n c6743n, AbstractC19854f<AbstractC7343q> abstractC19854f, AbstractC6727d abstractC6727d, AbstractC19854f<AbstractC19463a0> abstractC19854f2, C6713w.AbstractC6717c abstractC6717c, AbstractC19462a abstractC19462a, AbstractC19219a0 abstractC19219a0, AbstractC7156p abstractC7156p, AbstractC6673a abstractC6673a) {
        this.f22226a = context;
        this.f22227b = abstractC6392i0;
        this.f22228c = aVar;
        this.f22231f = abstractC19230g;
        this.f22232g = c6743n;
        this.f22229d = abstractC13497p;
        this.f22230e = c6741l;
        this.f22234i = telephonyManager;
        this.f22236k = abstractC19854f;
        this.f22237l = abstractC19854f2;
        this.f22233h = abstractC6727d;
        this.f22238m = abstractC6717c;
        this.f22239n = abstractC19462a;
        this.f22240o = abstractC19219a0;
        this.f22241p = abstractC7156p;
        this.f22242q = abstractC6673a;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return this.f22240o.mo13825h("android.permission.READ_SMS") && m30487E();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    public AbstractC6704q.C6705a mo15187B(Message message, Participant[] participantArr) {
        Entity[] entityArr;
        int i;
        ArrayList arrayList = new ArrayList();
        for (Entity entity : message.f13394o) {
            if (entity.mo35000g()) {
                return new AbstractC6704q.C6705a(0);
            }
            if (Entity.m35046p(entity.f13307b)) {
                GifEntity gifEntity = (GifEntity) entity;
                a0 h = a0.h(gifEntity.f13309A);
                if (h != null) {
                    entity = this.f22242q.mo30589b(new C6671a(-1L, entity.f13306a, h, Uri.EMPTY, 0L, entity.f13307b, gifEntity.f13349x));
                }
            }
            arrayList.add(entity);
        }
        Message.C4209b m35024b = message.m35024b();
        m35024b.m35011b();
        m35024b.m35007f(arrayList);
        Message m35012a = m35024b.m35012a();
        if (!m30487E()) {
            return new AbstractC6704q.C6705a(0);
        }
        if (m35012a.f13390k != 3) {
            MmsTransportInfo.C4261b m34903a = ((MmsTransportInfo) m35012a.f13393n).m34903a();
            m34903a.f13838v = 4;
            m34903a.f13839w = 128;
            m34903a.m34898c(f22219t);
            m34903a.f13831o = "personal";
            m34903a.f13841y = Constants.ERR_WATERMARK_READ;
            m34903a.f13812A = Constants.ERR_WATERMARK_READ;
            m34903a.f13834r = Constants.ERR_WATERMARK_READ;
            m34903a.f13828l = "application/vnd.wap.multipart.related";
            MmsTransportInfo m34899b = m34903a.m34899b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("date", Long.valueOf(((e) m35012a.f13384e).a / 1000));
            contentValues.put("date_sent", Long.valueOf(((e) m35012a.f13383d).a / 1000));
            contentValues.put("msg_box", (Integer) 4);
            try {
                i = this.f22226a.getContentResolver().update(f22224y, contentValues, "_id=?", new String[]{String.valueOf(m34899b.f13787b)});
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                i = 0;
            }
            return i == 0 ? new AbstractC6704q.C6705a(0) : new AbstractC6704q.C6705a(m34899b);
        }
        MmsTransportInfo.C4261b c4261b = new MmsTransportInfo.C4261b();
        c4261b.f13817a = m35012a.f13380a;
        c4261b.f13823g = "No title";
        c4261b.f13824h = 106;
        c4261b.f13839w = 128;
        c4261b.m34898c(f22219t);
        c4261b.f13831o = "personal";
        c4261b.f13841y = Constants.ERR_WATERMARK_READ;
        c4261b.f13812A = Constants.ERR_WATERMARK_READ;
        c4261b.f13834r = Constants.ERR_WATERMARK_READ;
        c4261b.f13828l = "application/vnd.wap.multipart.related";
        if (c4261b.f13816E == null) {
            c4261b.f13816E = new SparseArray<>();
        }
        Set<String> set = c4261b.f13816E.get(Constants.ERR_PUBLISH_STREAM_CDN_ERROR);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            c4261b.f13816E.put(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, hashSet);
        }
        for (Participant participant : participantArr) {
            hashSet.add(participant.f11572e);
        }
        Message m30474R = m30474R(m35012a, c4261b.m34899b(), false);
        return m30474R == null ? new AbstractC6704q.C6705a(0) : new AbstractC6704q.C6705a(m30474R.f13393n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x03a0, code lost:
        if (r0.length == 0) goto L115;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle mo15186C(android.content.Intent r8, int r9) {
        /*
            Method dump skipped, instructions count: 1296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6745o.mo15186C(android.content.Intent, int):android.os.Bundle");
    }

    /* renamed from: D */
    public final boolean m30488D(String str) {
        SimInfo mo21719v = this.f22229d.mo21719v(str);
        boolean z = false;
        if (mo21719v != null && this.f22227b.mo31202H0(mo21719v.f13983a)) {
            if (!this.f22234i.isNetworkRoaming() || this.f22227b.mo31230B2(mo21719v.f13983a)) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: E */
    public final boolean m30487E() {
        return this.f22231f.mo13782o(this.f22241p.getName());
    }

    /* renamed from: F */
    public final long m30486F(Message message, MmsTransportInfo mmsTransportInfo) {
        Set<String> set;
        SparseArray<Set<String>> sparseArray = mmsTransportInfo.f13785E;
        AssertionUtil.AlwaysFatal.isNotNull(sparseArray, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(sparseArray.size() > 0, new String[0]);
        HashSet hashSet = new HashSet();
        for (int i : f22220u) {
            Set<String> set2 = sparseArray.get(i);
            if (set2 != null) {
                hashSet.addAll(set2);
            }
        }
        if ((message.f13386g & 1) == 0) {
            if (hashSet.size() == 1) {
                hashSet.clear();
            }
            hashSet.add(message.f13382c.f11572e);
        } else if (hashSet.size() > 1 && (set = sparseArray.get(137)) != null) {
            hashSet.addAll(set);
        }
        try {
            return Telephony.Threads.getOrCreateThreadId(this.f22226a, hashSet);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("For some reasons we can not create thread for addresses: [");
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                sb.append("{");
                sb.append("isEmpty:");
                sb.append(h.e("insert-address-token", str));
                sb.append(", length:");
                sb.append(str == null ? -1 : str.length());
                sb.append("}, ");
            }
            sb.append("]");
            AssertionUtil.reportWeirdnessButNeverCrash(sb.toString());
            return -1L;
        }
    }

    /* renamed from: G */
    public final boolean m30485G(Message message, boolean z) {
        MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) message.f13393n;
        AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(mmsTransportInfo.f13786a != -1, new String[0]);
        AssertionUtil.AlwaysFatal.isFalse(mmsTransportInfo.f13800o.isEmpty(), new String[0]);
        if (mmsTransportInfo.f13797l == null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Should never try to download MMS content without content uri");
            return false;
        }
        synchronized (this.f22235j) {
            if (this.f22235j.contains(Long.valueOf(mmsTransportInfo.f13787b))) {
                return true;
            }
            this.f22235j.add(Long.valueOf(mmsTransportInfo.f13787b));
            this.f22230e.m30502a(message.f13392m, this.f22229d).mo11854a().mo30503d(mmsTransportInfo.f13787b, mmsTransportInfo.f13800o.getBytes(), mmsTransportInfo.f13797l, !z);
            return true;
        }
    }

    /* renamed from: H */
    public final b m30484H(Uri uri) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = this.f22226a.getContentResolver().query(uri, new String[]{"date"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        b bVar = new b(cursor.getLong(0) * 1000);
                        cursor.close();
                        return bVar;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor == null) {
                return null;
            }
            cursor.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: I */
    public final Message m30483I(Intent intent) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(RemoteMessageConst.DATA);
        if (byteArrayExtra == null) {
            AssertionUtil.reportWeirdnessButNeverCrash("Got new MMS intent without PDU");
            return null;
        }
        String mo21739k = this.f22229d.mo21739k(intent);
        String str = mo21739k;
        if ("-1".equals(mo21739k)) {
            str = this.f22229d.mo21743b();
        }
        C22111f m8758b = new C22123n(byteArrayExtra, this.f22229d.mo21726i(str).mo21759f()).m8758b();
        if (m8758b != null) {
            return this.f22233h.mo30526a(m8758b, m30488D(str), str, -1L);
        }
        return null;
    }

    /* renamed from: J */
    public final List<String> m30482J(Uri uri) {
        long parseId = ContentUris.parseId(uri);
        Cursor cursor = null;
        if (parseId == -1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.f22226a.getContentResolver().query(Uri.parse("content://mms/" + parseId + "/addr"), f22222w, f22223x, null, null);
            if (query != null) {
                while (true) {
                    cursor = query;
                    if (!query.moveToNext()) {
                        break;
                    }
                    int i = query.getInt(0);
                    String string = query.getString(1);
                    String str = string;
                    if (string != null) {
                        str = C26232y.m2349h0(string.getBytes(), i);
                    }
                    arrayList.add(str);
                }
            }
            if (query != null) {
                try {
                    query.close();
                } catch (IOException e) {
                }
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    /* renamed from: K */
    public final void m30481K(String str) {
        AbstractC19462a abstractC19462a = this.f22239n;
        LinkedHashMap m8655X = C22128a.m8655X("DeliverMmsError", "type");
        C22128a.m8684N0("DeliverMmsError", C22128a.m8652Y("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* renamed from: L */
    public final void m30480L(MmsTransportInfo mmsTransportInfo, int i) {
        LinkedHashMap m8655X = C22128a.m8655X("MmsFailureInfo", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String valueOf = String.valueOf(i);
        l.e("resultCode", AnalyticsConstants.NAME);
        l.e(valueOf, "value");
        m8655X.put("resultCode", valueOf);
        String valueOf2 = String.valueOf(mmsTransportInfo.f13804s);
        l.e("responseStatus", AnalyticsConstants.NAME);
        l.e(valueOf2, "value");
        m8655X.put("responseStatus", valueOf2);
        String valueOf3 = String.valueOf(mmsTransportInfo.f13803r);
        l.e("retrieveStatus", AnalyticsConstants.NAME);
        l.e(valueOf3, "value");
        m8655X.put("retrieveStatus", valueOf3);
        C22128a.m8684N0("MmsFailureInfo", linkedHashMap, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", this.f22239n);
    }

    /* renamed from: M */
    public final void m30479M(String str) {
        LinkedHashMap m8655X = C22128a.m8655X("MessageDownload", "type");
        LinkedHashMap m8649Z = C22128a.m8649Z("type", AnalyticsConstants.NAME, "mms", "value", m8655X, "type", "mms", UpdateKey.STATUS, AnalyticsConstants.NAME, str, "value", UpdateKey.STATUS, str);
        String str2 = this.f22229d.mo21740h() ? "Multi" : "Single";
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("sim", AnalyticsConstants.NAME, str2, "value", m8655X, "sim", str2, "MessageDownload", m8649Z);
        m8560v1.m15848d(m8655X);
        GenericRecord build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f22239n.mo13275a(build);
    }

    /* renamed from: N */
    public final void m30478N(String str) {
        int mo21749m = this.f22229d.mo21749m(str);
        String str2 = mo21749m == 1 ? "On" : mo21749m == 2 ? "Off" : "Unknown";
        LinkedHashMap m8655X = C22128a.m8655X("SendMmsMobileDataState", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("state", AnalyticsConstants.NAME, str2, "value", m8655X, "state", str2);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("SendMmsMobileDataState");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(m8655X);
        GenericRecord build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f22239n.mo13275a(build);
    }

    /* renamed from: O */
    public final void m30477O(Uri uri, SparseArray<Set<String>> sparseArray) {
        long parseId = ContentUris.parseId(uri);
        if (parseId == -1 || sparseArray.size() == 0) {
            return;
        }
        Uri parse = Uri.parse("content://mms/" + parseId + "/addr");
        ContentResolver contentResolver = this.f22226a.getContentResolver();
        contentResolver.delete(parse, null, null);
        ContentValues contentValues = new ContentValues();
        for (int i = 0; i < sparseArray.size(); i++) {
            contentValues.put("type", Integer.valueOf(sparseArray.keyAt(i)));
            for (String str : sparseArray.valueAt(i)) {
                contentValues.put("address", str);
                contentValues.put("charset", (Integer) 106);
                contentResolver.insert(parse, contentValues);
            }
        }
    }

    /* renamed from: P */
    public final Entity m30476P(long j, PduEntity pduEntity) {
        Throwable th;
        ContentValues contentValues;
        ContentResolver contentResolver;
        Uri parse;
        Closeable closeable;
        InputStream inputStream;
        Throwable th2;
        OutputStream outputStream;
        IOException e;
        Entity.C4195a c4195a = Entity.f13305h;
        try {
            contentValues = new ContentValues();
            this.f22233h.mo30524c(pduEntity, contentValues);
            contentResolver = this.f22226a.getContentResolver();
            parse = Uri.parse("content://mms/" + j + "/part");
            parse.toString();
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            try {
                Uri insert = contentResolver.insert(parse, contentValues);
                if (insert == null) {
                    if (!"file".equals(pduEntity.f13173i.getScheme())) {
                        return null;
                    }
                    File file = new File(pduEntity.f13173i.getPath());
                    if (!file.exists()) {
                        return null;
                    }
                    file.delete();
                    return null;
                }
                parse.toString();
                String str = pduEntity.f13307b;
                insert.toString();
                if (contentValues.containsKey("text")) {
                    Entity m35042a = Entity.C4195a.m35042a(c4195a, -1L, pduEntity.f13307b, 0, contentValues.getAsString("text"), false, -1, -1, -1, pduEntity.f13175k, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261632);
                    if ("file".equals(pduEntity.f13173i.getScheme())) {
                        File file2 = new File(pduEntity.f13173i.getPath());
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                    return m35042a;
                }
                try {
                    try {
                        inputStream = contentResolver.openInputStream(pduEntity.f13173i);
                    } catch (Throwable th4) {
                        th2 = th4;
                        inputStream = null;
                    }
                } catch (IOException e2) {
                    e = e2;
                    outputStream = null;
                    inputStream = null;
                } catch (Throwable th5) {
                    th2 = th5;
                    closeable = null;
                    inputStream = null;
                }
                try {
                    if (inputStream == null) {
                        String str2 = "Can't open input stream for: " + pduEntity.f13173i + " content type: " + contentValues.get("ct");
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                            }
                        }
                        if (!"file".equals(pduEntity.f13173i.getScheme())) {
                            return null;
                        }
                        File file3 = new File(pduEntity.f13173i.getPath());
                        if (!file3.exists()) {
                            return null;
                        }
                        file3.delete();
                        return null;
                    }
                    outputStream = contentResolver.openOutputStream(insert);
                    try {
                        if (outputStream != null) {
                            C19291g.m13574X1(inputStream, outputStream);
                            outputStream.flush();
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                            }
                            try {
                                outputStream.close();
                            } catch (IOException e5) {
                            }
                            BinaryEntity m35041b = Entity.C4195a.m35041b(c4195a, -1L, Entity.m35046p(pduEntity.f13307b) ? ContentFormat.IMAGE_GIF : pduEntity.f13307b, 0, insert, -1, -1, -1, pduEntity.f13175k, false, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261632);
                            if ("file".equals(pduEntity.f13173i.getScheme())) {
                                File file4 = new File(pduEntity.f13173i.getPath());
                                if (file4.exists()) {
                                    file4.delete();
                                }
                            }
                            return m35041b;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Can't open output stream for: ");
                        sb.append(insert);
                        sb.append(" content type: ");
                        sb.append(contentValues.get("ct"));
                        sb.toString();
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e7) {
                            }
                        }
                        if (!"file".equals(pduEntity.f13173i.getScheme())) {
                            return null;
                        }
                        File file5 = new File(pduEntity.f13173i.getPath());
                        if (!file5.exists()) {
                            return null;
                        }
                        file5.delete();
                        return null;
                    } catch (IOException e8) {
                        e = e8;
                        AssertionUtil.reportThrowableButNeverCrash(e);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e9) {
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e10) {
                            }
                        }
                        if (!"file".equals(pduEntity.f13173i.getScheme())) {
                            return null;
                        }
                        File file6 = new File(pduEntity.f13173i.getPath());
                        if (!file6.exists()) {
                            return null;
                        }
                        file6.delete();
                        return null;
                    }
                } catch (IOException e11) {
                    e = e11;
                    outputStream = null;
                } catch (Throwable th6) {
                    th2 = th6;
                    closeable = null;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e12) {
                        }
                    }
                    if (closeable != null) {
                        try {
                            closeable.close();
                        } catch (IOException e13) {
                        }
                    }
                    throw th2;
                }
            } catch (RuntimeException e14) {
                AssertionUtil.reportThrowableButNeverCrash(e14);
                if (!"file".equals(pduEntity.f13173i.getScheme())) {
                    return null;
                }
                File file7 = new File(pduEntity.f13173i.getPath());
                if (!file7.exists()) {
                    return null;
                }
                file7.delete();
                return null;
            }
        } catch (Throwable th7) {
            th = th7;
            if ("file".equals(pduEntity.f13173i.getScheme())) {
                File file8 = new File(pduEntity.f13173i.getPath());
                if (file8.exists()) {
                    file8.delete();
                }
            }
            throw th;
        }
    }

    /* renamed from: Q */
    public final C22111f m30475Q(Uri uri, boolean z) throws IOException {
        Closeable closeable = null;
        try {
            InputStream openInputStream = this.f22226a.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                l.e(openInputStream, "$this$readFully");
                C22111f m8758b = new C22123n(C25225a.m3838t2(openInputStream), z).m8758b();
                try {
                    openInputStream.close();
                } catch (IOException e) {
                }
                return m8758b;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Can't open stream with PDU content from ");
            sb.append(uri);
            throw new IOException(sb.toString());
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:5|(1:10)(1:9)|11|(4:13|(1:15)|16|(2:20|(5:22|24|189|25|(4:27|49|50|(6:56|(1:58)|59|(2:63|(1:65)(1:66))|67|139)(1:55))(7:28|(1:34)|35|36|(1:38)(4:39|(4:42|(2:44|200)(1:201)|45|40)|199|46)|50|(1:52)(7:53|56|(0)|59|(3:61|63|(0)(0))|67|139)))))|23|24|189|25|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0288, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0289, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0632  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x07d1  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0a78  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01e4 A[Catch: RuntimeException -> 0x0288, TRY_ENTER, TryCatch #1 {RuntimeException -> 0x0288, blocks: (B:25:0x01d0, B:28:0x01e4, B:30:0x01f9, B:32:0x0205, B:34:0x020d), top: B:189:0x01d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0323  */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.messaging.data.types.Message m30474R(com.truecaller.messaging.data.types.Message r8, com.truecaller.messaging.transport.mms.MmsTransportInfo r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 2700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6745o.m30474R(com.truecaller.messaging.data.types.Message, com.truecaller.messaging.transport.mms.MmsTransportInfo, boolean):com.truecaller.messaging.data.types.Message");
    }

    /* renamed from: S */
    public final void m30473S(b bVar) {
        long mo31057i2 = this.f22227b.mo31057i2(1, 0L);
        b O = bVar.O(0);
        if (O.h(mo31057i2)) {
            this.f22227b.mo31147S0(1, ((e) O).a);
        }
    }

    /* renamed from: T */
    public final boolean m30472T(long j, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("msg_box", Integer.valueOf(i));
        boolean z = true;
        if (this.f22226a.getContentResolver().update(f22224y, contentValues, "_id=?", new String[]{String.valueOf(j)}) <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0111  */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p244k.C6702p mo15185a(com.truecaller.messaging.data.types.Message r11) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6745o.mo15185a(com.truecaller.messaging.data.types.Message):e.a.a.k.p");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        Cursor cursor;
        Closeable closeable;
        Throwable th;
        synchronized (this) {
            m30478N(message.f13392m);
            MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) message.f13393n;
            AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo, new String[0]);
            AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo.f13790e, new String[0]);
            List<String> m30482J = m30482J(mmsTransportInfo.f13790e);
            if (m30482J == null) {
                return new AbstractC6696o.C6698b("INTERNAL_CLIENT");
            }
            try {
                ContentResolver contentResolver = this.f22226a.getContentResolver();
                cursor = contentResolver.query(mmsTransportInfo.f13790e, f22221v, null, null, null);
                if (cursor != null) {
                    closeable = null;
                    try {
                        if (cursor.moveToFirst()) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("content://mms/");
                            sb.append(mmsTransportInfo.f13787b);
                            sb.append("/part");
                            Cursor query = contentResolver.query(Uri.parse(sb.toString()), C6733i.f22180e, null, null, null);
                            if (query == null) {
                                AbstractC6696o.C6698b c6698b = new AbstractC6696o.C6698b("INTERNAL_CLIENT");
                                try {
                                    cursor.close();
                                } catch (IOException e) {
                                }
                                if (query != null) {
                                    try {
                                        query.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                return c6698b;
                            }
                            t mo30525b = this.f22233h.mo30525b(cursor.getString(1), cursor.getLong(0), cursor.getInt(2), cursor.getInt(3), cursor.getInt(4), m30482J, new C6733i(query), message.f13392m);
                            if (mo30525b == null) {
                                AbstractC6696o.C6698b c6698b2 = new AbstractC6696o.C6698b("INTERNAL_CLIENT");
                                try {
                                    cursor.close();
                                } catch (IOException e3) {
                                }
                                try {
                                    query.close();
                                } catch (IOException e4) {
                                }
                                return c6698b2;
                            }
                            try {
                                cursor.close();
                            } catch (IOException e5) {
                            }
                            try {
                                query.close();
                            } catch (IOException e6) {
                            }
                            this.f22230e.m30502a(message.f13392m, this.f22229d).mo11854a().mo30504c(mmsTransportInfo.f13787b, ((e) message.f13384e).a, mo30525b, mmsTransportInfo.f13790e);
                            C6746a c6746a = new C6746a(mmsTransportInfo.f13787b);
                            this.f22243r = c6746a;
                            return c6746a;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (IOException e7) {
                            }
                        }
                        if (closeable != null) {
                            try {
                                closeable.close();
                            } catch (IOException e8) {
                            }
                        }
                        throw th;
                    }
                }
                AbstractC6696o.C6698b c6698b3 = new AbstractC6696o.C6698b("INTERNAL_CLIENT");
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (IOException e9) {
                    }
                }
                return c6698b3;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
                closeable = null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) message.f13393n;
        synchronized (this.f22235j) {
            if (this.f22235j.contains(Long.valueOf(mmsTransportInfo.f13787b))) {
                return 2;
            }
            if (mmsTransportInfo.f13792g != 130 || mmsTransportInfo.f13801p.j()) {
                return 0;
            }
            int i = mmsTransportInfo.f13803r;
            boolean z = false;
            if (i >= 192) {
                z = false;
                if (i < 255) {
                    z = true;
                }
            }
            return z ? 3 : 1;
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        AssertionUtil.AlwaysFatal.isTrue(message.f13390k == 1, new String[0]);
        return m30485G(message, true);
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
        return "mms";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 1;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        this.f22227b.mo31147S0(1, ((e) bVar.O(0)).a);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v7, types: [java.io.IOException] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        Cursor cursor;
        RuntimeException e;
        char c;
        char c2;
        Throwable th;
        char mo31057i2 = this.f22227b.mo31057i2(1, 0L);
        char c3 = mo31057i2;
        if (!this.f22244s) {
            c3 = mo31057i2;
            if (this.f22240o.mo13825h("android.permission.SEND_SMS")) {
                c3 = mo31057i2;
                if (this.f22240o.mo13825h("android.permission.READ_SMS")) {
                    ContentResolver contentResolver = this.f22226a.getContentResolver();
                    Cursor e2 = null;
                    try {
                        try {
                            try {
                                Uri uri = f22224y;
                                cursor = contentResolver.query(uri, new String[]{"date"}, "msg_box=4", null, "date DESC LIMIT 1");
                                c2 = mo31057i2;
                                e2 = false;
                                if (cursor != null) {
                                    char c4 = mo31057i2;
                                    c2 = mo31057i2;
                                    try {
                                        e2 = false;
                                        if (cursor.moveToNext()) {
                                            ?? r0 = cursor.getLong(0) * 1000;
                                            ContentValues contentValues = new ContentValues();
                                            contentValues.put("msg_box", (Integer) 5);
                                            contentResolver.update(uri, contentValues, "msg_box=4", null);
                                            c2 = mo31057i2;
                                            if (r0 < mo31057i2) {
                                                c2 = r0;
                                            }
                                            c4 = c2;
                                            this.f22227b.mo31147S0(1, c2);
                                            e2 = contentValues;
                                        }
                                    } catch (RuntimeException e3) {
                                        e = e3;
                                        c = c4;
                                        e2 = cursor;
                                        AssertionUtil.reportThrowableButNeverCrash(e);
                                        mo31057i2 = c;
                                        if (cursor != null) {
                                            cursor.close();
                                            mo31057i2 = c;
                                            e2 = e2;
                                        }
                                        this.f22244s = true;
                                        c3 = mo31057i2;
                                        return new b(c3);
                                    } catch (Throwable th2) {
                                        e2 = cursor;
                                        th = th2;
                                        if (e2 != null) {
                                            try {
                                                e2.close();
                                            } catch (IOException e4) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                mo31057i2 = c2;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (RuntimeException e5) {
                            e = e5;
                            cursor = null;
                            c = mo31057i2;
                        }
                        if (cursor != null) {
                            cursor.close();
                            mo31057i2 = c2;
                            e2 = e2;
                        }
                    } catch (IOException e6) {
                        e2 = e6;
                    }
                    this.f22244s = true;
                    c3 = mo31057i2;
                }
            }
        }
        return new b(c3);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return (j / 1000) * 1000;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        return str;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        if (!this.f22240o.mo13825h("android.permission.READ_SMS")) {
            return 0L;
        }
        return this.f22232g.mo30495j(abstractC6691j, abstractC6694m, abstractC6139g0, bVar, bVar2, i, list, abstractC19244l0, z, c10545d);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        return !c6713w.mo30534c() && c6713w.f22101a.equals(f22225z);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6747p c6747p, boolean z, Set set) {
        C6747p c6747p2 = c6747p;
        boolean z2 = false;
        if (c6747p2.f22248d) {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof MmsTransportInfo, new String[0]);
            MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo.f13790e, new String[0]);
            c6747p2.m30536a(c6747p2.m30533d(mmsTransportInfo.f13790e).m30531a());
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6747p c6747p) {
        C6747p c6747p2 = c6747p;
        boolean z = false;
        if (c6747p2.f22248d) {
            try {
                if (this.f22238m.mo30530a(c6747p2).length != 0) {
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
        throw new IllegalStateException("Mms transport can not be used to cancel attachments.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6747p c6747p) {
        C6747p c6747p2 = c6747p;
        boolean z = false;
        if (c6747p2.f22248d) {
            AssertionUtil.AlwaysFatal.isTrue(message.f13393n instanceof MmsTransportInfo, new String[0]);
            MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) message.f13393n;
            C6713w.C6715b.C6716a m30532e = c6747p2.m30532e(f22224y);
            m30532e.f22110c.put("msg_box", Integer.valueOf(MmsTransportInfo.m34902b(i)));
            long j = mmsTransportInfo.f13787b;
            int m34902b = MmsTransportInfo.m34902b(message.f13386g);
            z = true;
            m30532e.f22111d = "_id=? AND msg_box = ?";
            m30532e.f22112e = new String[]{String.valueOf(j), String.valueOf(m34902b)};
            c6747p2.m30536a(m30532e.m30531a());
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new IllegalStateException("MMS transport does not support retry");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6747p c6747p, boolean z) {
        boolean z2;
        C6747p c6747p2 = c6747p;
        if (!c6747p2.f22248d) {
            z2 = false;
        } else {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof MmsTransportInfo, new String[0]);
            MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo.f13790e, new String[0]);
            C6713w.C6715b.C6716a m30532e = c6747p2.m30532e(mmsTransportInfo.f13790e);
            if (z) {
                m30532e.f22110c.put("seen", (Integer) 1);
            }
            m30532e.f22110c.put("read", (Integer) 1);
            c6747p2.m30536a(m30532e.m30531a());
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        return m30487E();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6747p mo15166w() {
        return new C6747p(m30487E());
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        return participant.f11569b != 3;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6747p c6747p) {
        C6747p c6747p2 = c6747p;
        boolean z = false;
        if (c6747p2.f22248d) {
            AssertionUtil.AlwaysFatal.isTrue(transportInfo instanceof MmsTransportInfo, new String[0]);
            MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) transportInfo;
            AssertionUtil.AlwaysFatal.isNotNull(mmsTransportInfo.f13790e, new String[0]);
            C6713w.C6715b.C6716a m30532e = c6747p2.m30532e(mmsTransportInfo.f13790e);
            z = true;
            m30532e.f22110c.put("seen", (Integer) 1);
            c6747p2.m30536a(m30532e.m30531a());
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        c6676e.m30585a(0, 0, 0, 1);
        return false;
    }
}
