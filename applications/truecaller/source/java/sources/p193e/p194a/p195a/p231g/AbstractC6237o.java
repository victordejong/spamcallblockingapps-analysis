package p193e.p194a.p195a.p231g;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TextEntity;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.NullTransportInfo;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Provider;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.AbstractC18094f;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.AbstractC18420r1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p1129p5.C19236j;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p230f1.C6063b;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6130c;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p276p0.AbstractC7158b;
import p193e.p194a.p195a.p276p0.C7164e;
import p193e.p194a.p195a.p276p0.C7166g;
import p193e.p194a.p195a.p276p0.C7167h;
import p193e.p194a.p195a.p276p0.C7168i;
import p193e.p194a.p195a.p276p0.C7169j;
import p193e.p194a.p195a.p276p0.C7170k;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p529e.C9980a;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
import p193e.p194a.p437c.p552i.p560h.AbstractC10347a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10419a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10546e;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.u.i;
import s1.w.f;
import s1.z.c.c0;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.g;
@Deprecated
/* renamed from: e.a.a.g.o */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/o.class */
public abstract class AbstractC6237o {

    /* renamed from: N */
    public static final ContentProviderResult[] f20945N = new ContentProviderResult[0];

    /* renamed from: O */
    public static final b f20946O = new b(9999, 1, 1, 0, 0, 0, g.b);

    /* renamed from: P */
    public static volatile boolean f20947P = false;

    /* renamed from: Q */
    public static volatile long f20948Q = -1;

    /* renamed from: R */
    public static volatile int f20949R = -1;

    /* renamed from: S */
    public static volatile long f20950S = -1;

    /* renamed from: T */
    public static volatile Exception f20951T = null;

    /* renamed from: U */
    public static final AtomicBoolean f20952U = new AtomicBoolean(false);

    /* renamed from: V */
    public static final AtomicInteger f20953V = new AtomicInteger(0);

    /* renamed from: A */
    public final AbstractC18951b0 f20954A;

    /* renamed from: C */
    public final AbstractC19510i0 f20956C;

    /* renamed from: D */
    public final a<AbstractC18094f> f20957D;

    /* renamed from: E */
    public final a<AbstractC19854f<AbstractC7343q>> f20958E;

    /* renamed from: F */
    public final C19236j f20959F;

    /* renamed from: G */
    public final C7164e f20960G;

    /* renamed from: H */
    public final AbstractC10347a f20961H;

    /* renamed from: I */
    public final AbstractC10028o f20962I;

    /* renamed from: J */
    public final a<AbstractC7158b> f20963J;

    /* renamed from: K */
    public final boolean f20964K;

    /* renamed from: a */
    public final ContentResolver f20967a;

    /* renamed from: b */
    public final File f20968b;

    /* renamed from: c */
    public File[] f20969c;

    /* renamed from: d */
    public final a<AbstractC6708t> f20970d;

    /* renamed from: e */
    public final a<AbstractC6690i> f20971e;

    /* renamed from: f */
    public final Provider<AbstractC6694m> f20972f;

    /* renamed from: g */
    public final Provider<AbstractC6691j> f20973g;

    /* renamed from: h */
    public final AbstractC6392i0 f20974h;

    /* renamed from: i */
    public final AbstractC6115g f20975i;

    /* renamed from: j */
    public final AbstractC6106b0 f20976j;

    /* renamed from: k */
    public AbstractC7201a f20977k;

    /* renamed from: l */
    public final AbstractC19109u1 f20978l;

    /* renamed from: m */
    public final a<AbstractC7290a> f20979m;

    /* renamed from: o */
    public final AbstractC19247m0 f20981o;

    /* renamed from: p */
    public final a<AbstractC19854f<AbstractC6523c0>> f20982p;

    /* renamed from: q */
    public final a<C20592g> f20983q;

    /* renamed from: r */
    public final a<AbstractC18420r1> f20984r;

    /* renamed from: s */
    public final a<C7170k> f20985s;

    /* renamed from: t */
    public final a<C6063b> f20986t;

    /* renamed from: u */
    public final a<AbstractC10435f> f20987u;

    /* renamed from: v */
    public final a<AbstractC9691j> f20988v;

    /* renamed from: w */
    public final a<AbstractC19230g> f20989w;

    /* renamed from: x */
    public final a<AbstractC7156p> f20990x;

    /* renamed from: y */
    public final a<AbstractC10315a> f20991y;

    /* renamed from: z */
    public final a<AbstractC10419a> f20992z;

    /* renamed from: n */
    public C6240c f20980n = null;

    /* renamed from: B */
    public boolean f20955B = true;

    /* renamed from: L */
    public boolean f20965L = false;

    /* renamed from: M */
    public final int f20966M = f20953V.getAndIncrement();

    /* renamed from: e.a.a.g.o$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/o$a.class */
    public interface AbstractC6238a {
        /* renamed from: a */
        void mo31585a(String str);
    }

    /* renamed from: e.a.a.g.o$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/o$b.class */
    public static class C6239b implements AbstractC6251z {

        /* renamed from: a */
        public final AbstractC6691j f20993a;

        /* renamed from: b */
        public final AbstractC6694m f20994b;

        /* renamed from: c */
        public b f20995c;

        /* renamed from: d */
        public final SparseArray<b> f20996d = new SparseArray<>();

        /* renamed from: e */
        public b f20997e;

        /* renamed from: f */
        public final boolean f20998f;

        public C6239b(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, C6240c c6240c, boolean z) {
            this.f20993a = abstractC6691j;
            this.f20994b = abstractC6694m;
            this.f20995c = c6240c.f21000b;
            this.f20997e = c6240c.f21001c;
            this.f20998f = z;
        }

        public String toString() {
            Locale locale = Locale.US;
            int r = this.f20995c.r();
            int s = this.f20995c.s();
            b bVar = this.f20995c;
            Objects.requireNonNull(bVar);
            int c = ((e) bVar).b.H().c(((e) bVar).a);
            int q = this.f20995c.q();
            int t = this.f20995c.t();
            int u = this.f20995c.u();
            int r2 = this.f20997e.r();
            int s2 = this.f20997e.s();
            b bVar2 = this.f20997e;
            Objects.requireNonNull(bVar2);
            return String.format(locale, "Batch from %1$02d:%2$02d:%3$02d %4$02d/%5$02d/%6$04d to %7$02d:%8$02d:%9$02d %10$02d/%11$02d/%12$04d", Integer.valueOf(r), Integer.valueOf(s), Integer.valueOf(c), Integer.valueOf(q), Integer.valueOf(t), Integer.valueOf(u), Integer.valueOf(r2), Integer.valueOf(s2), Integer.valueOf(((e) bVar2).b.H().c(((e) bVar2).a)), Integer.valueOf(this.f20997e.q()), Integer.valueOf(this.f20997e.t()), Integer.valueOf(this.f20997e.u()));
        }
    }

    /* renamed from: e.a.a.g.o$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/o$c.class */
    public static class C6240c {

        /* renamed from: a */
        public final int f20999a;

        /* renamed from: b */
        public final b f21000b;

        /* renamed from: c */
        public final b f21001c;

        /* renamed from: d */
        public final Set<AbstractC6704q> f21002d;

        public C6240c(b bVar, b bVar2, int i, Set<AbstractC6704q> set) {
            this.f21000b = bVar;
            this.f21001c = bVar2;
            this.f20999a = i;
            this.f21002d = set;
        }
    }

    public AbstractC6237o(ContentResolver contentResolver, File file, File[] fileArr, AbstractC6392i0 abstractC6392i0, AbstractC6115g abstractC6115g, a<AbstractC19854f<AbstractC6523c0>> aVar, a<AbstractC6708t> aVar2, a<AbstractC6690i> aVar3, Provider<AbstractC6691j> provider, Provider<AbstractC6694m> provider2, AbstractC6106b0 abstractC6106b0, AbstractC7201a abstractC7201a, AbstractC19109u1 abstractC19109u1, AbstractC19247m0 abstractC19247m0, a<AbstractC7290a> aVar4, a<C20592g> aVar5, a<AbstractC18420r1> aVar6, a<C7170k> aVar7, a<C6063b> aVar8, a<AbstractC10435f> aVar9, a<AbstractC9691j> aVar10, a<AbstractC19230g> aVar11, a<AbstractC7156p> aVar12, a<AbstractC10315a> aVar13, AbstractC18951b0 abstractC18951b0, a<AbstractC10419a> aVar14, AbstractC19510i0 abstractC19510i0, a<AbstractC18094f> aVar15, a<AbstractC19854f<AbstractC7343q>> aVar16, C19236j c19236j, C7164e c7164e, AbstractC10347a abstractC10347a, AbstractC10028o abstractC10028o, boolean z, a<AbstractC7158b> aVar17) {
        this.f20967a = contentResolver;
        this.f20968b = new File(file, "msg_media");
        this.f20969c = fileArr;
        this.f20974h = abstractC6392i0;
        this.f20970d = aVar2;
        this.f20971e = aVar3;
        this.f20975i = abstractC6115g;
        this.f20982p = aVar;
        this.f20973g = provider;
        this.f20972f = provider2;
        this.f20976j = abstractC6106b0;
        this.f20977k = abstractC7201a;
        this.f20978l = abstractC19109u1;
        this.f20981o = abstractC19247m0;
        this.f20979m = aVar4;
        this.f20983q = aVar5;
        this.f20984r = aVar6;
        this.f20985s = aVar7;
        this.f20986t = aVar8;
        this.f20987u = aVar9;
        this.f20988v = aVar10;
        this.f20989w = aVar11;
        this.f20990x = aVar12;
        this.f20991y = aVar13;
        this.f20954A = abstractC18951b0;
        this.f20992z = aVar14;
        this.f20956C = abstractC19510i0;
        this.f20957D = aVar15;
        this.f20958E = aVar16;
        this.f20959F = c19236j;
        this.f20960G = c7164e;
        this.f20961H = abstractC10347a;
        this.f20962I = abstractC10028o;
        this.f20964K = z;
        this.f20963J = aVar17;
    }

    /* renamed from: A0 */
    public final void m31657A0(Iterable<AbstractC6704q> iterable) {
        AbstractC6704q m31597r0;
        this.f20961H.mo26318a();
        if (!((AbstractC9691j) this.f20988v.get()).mo27246n() || (m31597r0 = m31597r0(iterable, 0)) == null) {
            return;
        }
        m31597r0.mo14985j().L().toString();
        if (!m31597r0.mo14985j().f(new b(0L)) || !((AbstractC10435f) this.f20987u.get()).mo26143g()) {
            ((AbstractC10435f) this.f20987u.get()).mo26145e();
        } else {
            ((AbstractC10435f) this.f20987u.get()).mo26144f("re_run_context_translations");
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x01c7 -> B:39:0x00fd). Please submit an issue!!! */
    /* renamed from: B */
    public AbstractC19891x<Draft> m31656B(Draft draft, String str) {
        Throwable th;
        Entity[] entityArr;
        AssertionUtil.AlwaysFatal.isNotNull(draft.f13270e, new String[0]);
        AssertionUtil.AlwaysFatal.isTrue(draft.f13270e.length > 0, new String[0]);
        String str2 = "Saving draft: " + draft;
        if (draft.m35059d() && !draft.m35060c()) {
            long j = draft.f13266a;
            boolean z = false;
            if (j != -1) {
                z = true;
            }
            Draft draft2 = draft;
            if (z) {
                m31613h(j);
                Draft.C4194b m35061b = draft.m35061b();
                m35061b.f13284a = -1L;
                draft2 = m35061b.m35055c();
            }
            return AbstractC19891x.m11834h(draft2);
        }
        Message m31644I0 = m31644I0(draft.m35062a("-1", str), draft.f13270e);
        if (m31644I0 == null) {
            return AbstractC19891x.m11834h(draft);
        }
        AbstractC6126a abstractC6126a = null;
        try {
            AbstractC6126a mo31772t = this.f20975i.mo31772t(this.f20967a.query(C8582g0.m28313g(m31644I0.f13381b), null, null, null, null));
            Conversation conversation = null;
            if (mo31772t != null) {
                conversation = null;
                try {
                    if (mo31772t.moveToFirst()) {
                        conversation = mo31772t.mo31752p();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    abstractC6126a = mo31772t;
                    if (abstractC6126a != null) {
                        try {
                            abstractC6126a.close();
                        } catch (IOException e) {
                        }
                    }
                    throw th;
                }
            }
            if (mo31772t != null) {
                try {
                    mo31772t.close();
                } catch (IOException e2) {
                }
            }
            Draft.C4194b c4194b = new Draft.C4194b();
            c4194b.f13284a = m31644I0.f13380a;
            c4194b.f13291h = draft.f13273h;
            Collections.addAll(c4194b.f13286c, draft.f13270e);
            c4194b.f13292i = draft.f13275j;
            c4194b.f13293j = draft.f13278m;
            for (Entity entity : m31644I0.f13394o) {
                if (entity.mo34894r()) {
                    c4194b.f13288e = ((TextEntity) entity).f13465i;
                } else {
                    c4194b.m35056b((BinaryEntity) entity);
                }
            }
            c4194b.f13299p = draft.f13282q;
            if (conversation != null) {
                c4194b.f13285b = conversation;
                c4194b.f13291h = conversation.f13188C;
            }
            Draft m35055c = c4194b.m35055c();
            String str3 = "Draft saved. New draft: " + m35055c;
            return AbstractC19891x.m11834h(m35055c);
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: B0 */
    public final void m31655B0(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        for (int i = 0; i < sparseBooleanArray2.size(); i++) {
            int keyAt = sparseBooleanArray2.keyAt(i);
            boolean z = true;
            if (!sparseBooleanArray2.valueAt(i) || !sparseBooleanArray.get(keyAt, true)) {
                z = false;
            }
            sparseBooleanArray.put(keyAt, z);
        }
    }

    /* renamed from: C */
    public AbstractC19891x<Boolean> m31654C(Conversation[] conversationArr) {
        return AbstractC19891x.m11834h(Boolean.valueOf(m31639L0(conversationArr, true)));
    }

    /* renamed from: C0 */
    public final void m31653C0(boolean z, Iterable<AbstractC6704q> iterable) {
        m31657A0(iterable);
        m31648F0(this.f20954A.mo14285j(), new b(0L), z ? 1 : 0, iterable);
    }

    /* renamed from: D */
    public AbstractC19891x<Boolean> m31652D(Message message, long j) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a)).withValue("date_sent", Long.valueOf(j)).withValue("date", Long.valueOf(j)).build());
        return AbstractC19891x.m11834h(Boolean.valueOf(m31602n0(arrayList).length > 0));
    }

    /* renamed from: D0 */
    public void m31651D0(boolean z, Iterable<AbstractC6704q> iterable) {
        m31657A0(iterable);
        if (!(this.f20974h.mo31097b4(0L) != 0)) {
            m31622b(z);
            return;
        }
        b mo14285j = this.f20954A.mo14285j();
        for (AbstractC6704q abstractC6704q : iterable) {
            b mo14985j = abstractC6704q.mo14985j();
            b bVar = mo14985j;
            if (mo14985j.g()) {
                bVar = new b(0L);
            }
            if (bVar.i(mo14285j)) {
                mo14285j = bVar;
            }
        }
        m31648F0(this.f20954A.mo14285j(), mo14285j, z ? 1 : 0, iterable);
    }

    /* renamed from: E0 */
    public final int m31650E0(AbstractC6251z abstractC6251z, int i, AbstractC19244l0 abstractC19244l0, Iterable<AbstractC6704q> iterable) {
        if (f20947P && f20952U.compareAndSet(false, true)) {
            StringBuilder m8728C = C22128a.m8728C("timeSinceSyncStart: ");
            m8728C.append(SystemClock.elapsedRealtime() - f20950S);
            m8728C.append(" syncingThreadId: ");
            m8728C.append(f20948Q);
            m8728C.append(" currentThreadId: ");
            m8728C.append(Thread.currentThread().getId());
            m8728C.append(" syncingInstanceId: ");
            m8728C.append(f20949R);
            m8728C.append(" currentInstanceId: ");
            m8728C.append(this.f20966M);
            m8728C.append(" actorsThreadCount: ");
            C6123i c6123i = C6123i.f20338b;
            m8728C.append(C6123i.f20337a.get());
            m8728C.append(" isRecursiveCall: ");
            m8728C.append(this.f20965L);
            UnmutedException.C4152k c4152k = new UnmutedException.C4152k(m8728C.toString());
            Exception exc = f20951T;
            if (exc != null) {
                c4152k.initCause(exc);
            }
            C10480a.m26061I1(c4152k);
        }
        this.f20965L = true;
        f20947P = true;
        f20948Q = Thread.currentThread().getId();
        f20949R = this.f20966M;
        f20950S = SystemClock.elapsedRealtime();
        f20951T = new Exception();
        try {
            int m31647G0 = m31647G0(abstractC6251z, i, abstractC19244l0, iterable);
            f20947P = false;
            this.f20965L = false;
            return m31647G0;
        } catch (Throwable th) {
            f20947P = false;
            this.f20965L = false;
            throw th;
        }
    }

    /* renamed from: F */
    public void m31649F(Message[] messageArr, int i) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        int i2 = i == 1 ? 3 : 2;
        for (Message message : messageArr) {
            C10480a.m26043N(arrayList, message.f13380a, i2, 1);
        }
        int length = m31602n0(arrayList).length;
    }

    /* renamed from: F0 */
    public final void m31648F0(b bVar, b bVar2, int i, Iterable<AbstractC6704q> iterable) {
        C6240c c6240c;
        C6240c c6240c2 = this.f20980n;
        if (c6240c2 != null) {
            b bVar3 = bVar;
            if (c6240c2.f21000b.f(bVar)) {
                bVar3 = c6240c2.f21000b;
            }
            b bVar4 = bVar2;
            if (c6240c2.f21001c.i(bVar2)) {
                bVar4 = c6240c2.f21001c;
            }
            this.f20980n = new C6240c(bVar3, bVar4, i | c6240c2.f20999a, i.q0(c6240c2.f21002d, iterable));
            c6240c = null;
        } else {
            c6240c = new C6240c(bVar, bVar2, i, i.d1(iterable));
            this.f20980n = c6240c;
        }
        if (c6240c == null) {
            return;
        }
        m31633P(new C6239b((AbstractC6691j) this.f20973g.get(), (AbstractC6694m) this.f20972f.get(), c6240c, ((C20592g) this.f20983q.get()).m10977a0().isEnabled()), c6240c.f20999a);
    }

    /* renamed from: G0 */
    public final int m31647G0(AbstractC6251z abstractC6251z, int i, AbstractC19244l0 abstractC19244l0, Iterable<AbstractC6704q> iterable) {
        f fVar;
        f fVar2;
        Throwable th;
        AbstractC6139g0 abstractC6139g0;
        Throwable th2;
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        C10545d c10545d = new C10545d();
        String str = "Staring sync batch " + abstractC6251z + " with messages limit " + i;
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        Iterator<AbstractC6704q> it = iterable.iterator();
        boolean z = false;
        int i2 = 0;
        while (true) {
            fVar = null;
            if (!it.hasNext()) {
                break;
            }
            AbstractC6704q next = it.next();
            int type = next.getType();
            C6239b c6239b = (C6239b) abstractC6251z;
            b bVar = c6239b.f20997e;
            b bVar2 = c6239b.f20996d.get(type);
            b bVar3 = bVar2;
            if (bVar2 == null) {
                bVar3 = f20946O;
            }
            if (!bVar3.m(bVar)) {
                try {
                    AbstractC6139g0 m31596s0 = m31596s0(type, bVar, bVar3);
                    if (m31596s0 == null) {
                        try {
                            ((C6239b) abstractC6251z).f20996d.put(type, bVar);
                            if (m31596s0 != null) {
                                try {
                                    m31596s0.close();
                                } catch (IOException e) {
                                }
                            }
                        } catch (Throwable th3) {
                            th2 = th3;
                            abstractC6139g0 = m31596s0;
                            if (abstractC6139g0 != null) {
                                try {
                                    abstractC6139g0.close();
                                } catch (IOException e2) {
                                }
                            }
                            throw th2;
                        }
                    } else {
                        int size = arrayList.size();
                        long mo14984m = next.mo14984m(((C6239b) abstractC6251z).f20993a, ((C6239b) abstractC6251z).f20994b, m31596s0, bVar, bVar3, i, arrayList, abstractC19244l0, ((C6239b) abstractC6251z).f20998f, c10545d);
                        if (((-4611686018427387904L) & mo14984m) == 0) {
                            ((C6239b) abstractC6251z).f20996d.put(type, bVar);
                            arrayList.subList(size, arrayList.size()).clear();
                        } else if ((Long.MIN_VALUE & mo14984m) != 0) {
                            ((C6239b) abstractC6251z).f20996d.put(type, bVar);
                            sparseBooleanArray.put(type, true);
                            z = true;
                        } else {
                            ((C6239b) abstractC6251z).f20996d.put(type, new b(mo14984m & 4611686018427387903L));
                            sparseBooleanArray.put(type, true);
                            z = true;
                            i2 = 1;
                        }
                        try {
                            m31596s0.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    abstractC6139g0 = null;
                }
            }
        }
        if (!z) {
            return 2;
        }
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        if (!arrayList.isEmpty() && m31602n0.length == 0) {
            return 2;
        }
        if (c10545d.f31471a.remove(-1L)) {
            ArrayList arrayList2 = new ArrayList();
            HashSet hashSet = new HashSet();
            for (ContentProviderResult contentProviderResult : m31602n0) {
                Uri uri = contentProviderResult.uri;
                if (uri != null && uri.getPath() != null && uri.getPath().contains("msg_messages")) {
                    hashSet.add(Long.valueOf(ContentUris.parseId(uri)));
                }
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new k((Long) it2.next(), AbstractC10546e.C10548b.f31474a));
            }
            l.e(arrayList2, "messageIds");
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                k kVar = (k) it3.next();
                c10545d.m25786a(((Number) kVar.a).longValue(), (AbstractC10546e) kVar.b);
            }
        }
        if (!c10545d.f31471a.isEmpty()) {
            C7170k c7170k = (C7170k) this.f20985s.get();
            Objects.requireNonNull(c7170k);
            l.e(c10545d, "messageToClassify");
            c0 c0Var = new c0();
            c0Var.a = null;
            ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
            c0 c0Var2 = new c0();
            c0Var2.a = new ArrayList();
            C9980a mo26385a = c7170k.f23051f.mo26385a();
            Set q0 = i.q0(i.d1(c10545d.f31471a), i.d1(c10545d.f31471a));
            Set d1 = i.d1(c10545d.f31471a);
            Iterator it4 = ((ArrayList) i.k(q0, 200)).iterator();
            while (it4.hasNext()) {
                List list = (List) it4.next();
                ContentResolver contentResolver = c7170k.f23047b;
                Set<Long> d12 = i.d1(list);
                Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("conversation_messages");
                for (Long l : d12) {
                    appendEncodedPath.appendQueryParameter("ids", String.valueOf(l));
                }
                Cursor query = contentResolver.query(appendEncodedPath.build(), null, null, null, null);
                if (query != null) {
                    try {
                        ArrayList arrayList4 = new ArrayList();
                        f fVar3 = fVar;
                        while (true) {
                            f fVar4 = fVar3;
                            if (!query.moveToNext()) {
                                break;
                            }
                            try {
                                l.d(query, "it");
                                int m13520q0 = C19291g.m13520q0(query, "message_status");
                                long m13632E0 = C19291g.m13632E0(query, "message_id");
                                int m13520q02 = C19291g.m13520q0(query, "conversation_split_criteria");
                                String m13628F1 = C19291g.m13628F1(query, "message_content");
                                if (m13628F1 == null) {
                                    m13628F1 = "";
                                }
                                String m13628F12 = C19291g.m13628F1(query, "message_sender_raw_address");
                                if (m13628F12 == null) {
                                    m13628F12 = "";
                                }
                                String m13628F13 = C19291g.m13628F1(query, "message_sim_token");
                                if (m13628F13 == null) {
                                    m13628F13 = "";
                                }
                                long m13632E02 = C19291g.m13632E0(query, "message_date");
                                long m13632E03 = C19291g.m13632E0(query, "message_conversation_id");
                                String m13628F14 = C19291g.m13628F1(query, "message_search_warning");
                                String m13628F15 = C19291g.m13628F1(query, "language");
                                try {
                                    ((ArrayList) c0Var2.a).add(d.H(h1.a, c7170k.f23055j, (j0) null, new C7167h(m13628F14, m13632E0, m13628F12, C19291g.m13520q0(query, "contact_badges"), C19291g.m13520q0(query, "transport"), m13520q0, m13628F1, m13628F13, m13632E03, m13632E02, (String) d.c3((f) null, new C7169j(c7170k, m13628F15 != null ? m13628F15 : (String) d.c3(fVar4, new C7166g(m13628F1, arrayList4, query, null, c7170k, c0Var2, c0Var, d1, mo26385a, arrayList3), 1, fVar4), m13628F1, new Mention[0], null), 1, (Object) null), C19291g.m13628F1(query, "message_sender_name"), m13520q02, null, c7170k, c0Var2, c0Var, d1, mo26385a, arrayList3), 2, (Object) null));
                                    fVar3 = null;
                                } catch (Throwable th5) {
                                    th = th5;
                                    try {
                                        throw th;
                                    } catch (Throwable th6) {
                                        C25225a.m4016G(query, th);
                                        throw th6;
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                            }
                        }
                        query.close();
                        fVar2 = null;
                        C25225a.m4016G(query, null);
                    } catch (Throwable th8) {
                        th = th8;
                        query = query;
                    }
                } else {
                    fVar2 = fVar;
                }
                d.b3(c7170k.f23055j, new C7168i(null, c7170k, c0Var2, c0Var, d1, mo26385a, arrayList3));
                fVar = fVar2;
            }
            m31602n0(arrayList3);
        }
        for (AbstractC6704q abstractC6704q : iterable) {
            if (sparseBooleanArray.get(abstractC6704q.getType(), false)) {
                b mo14985j = abstractC6704q.mo14985j();
                C6239b c6239b2 = (C6239b) abstractC6251z;
                if (mo14985j.i(c6239b2.f20995c)) {
                    abstractC6704q.mo14986h(c6239b2.f20995c);
                }
            }
        }
        return i2 ^ 1;
    }

    /* renamed from: H0 */
    public final void m31646H0(Conversation[] conversationArr) {
        boolean z;
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Conversation conversation : conversationArr) {
            Cursor query = this.f20967a.query(C17891a1.C17905n.m15550a(), new String[]{"unread_messages_count"}, m31610i0(conversation.f13199a, conversation.f13216r, conversation.f13218t), null, null);
            if (query != null) {
                try {
                    z = query.getCount() > 0;
                } finally {
                    query.close();
                }
            } else {
                z = false;
            }
            if (z) {
                arrayList.add(ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValue("unread_messages_count", 0).withSelection(m31610i0(conversation.f13199a, conversation.f13216r, conversation.f13218t), null).build());
                C10480a.m26061I1(new UnmutedException.C4148g());
            }
        }
        if (!arrayList.isEmpty()) {
            m31602n0(arrayList);
        }
    }

    /* renamed from: I */
    public AbstractC19891x<Message> m31645I(long j) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = this.f20967a.query(C8582g0.m28294z(), null, "_id = ?", new String[]{String.valueOf(j)}, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        AbstractC19891x<Message> m11834h = AbstractC19891x.m11834h(this.f20975i.mo31783i(cursor).getMessage());
                        cursor.close();
                        return m11834h;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            AbstractC19891x<Message> m11834h2 = AbstractC19891x.m11834h(null);
            if (cursor != null) {
                cursor.close();
            }
            return m11834h2;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: I0 */
    public final Message m31644I0(Message message, Participant[] participantArr) {
        Entity[] entityArr;
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Set<File> m31598q0 = message.m35019g() ? m31598q0(message.f13380a) : null;
        List<Entity> m31606k0 = m31606k0(message.f13394o, false);
        int m25969e1 = C10480a.m25969e1(arrayList, participantArr[0]);
        for (int i = 1; i < participantArr.length; i++) {
            C10480a.m25969e1(arrayList, participantArr[i]);
        }
        int m25974d1 = C10480a.m25974d1(arrayList, i.z0(participantArr), message.f13365A);
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28295y());
        long j = message.f13380a;
        if (j != -1) {
            newInsert.withValue("_id", Long.valueOf(j));
        }
        newInsert.withValueBackReference("participant_id", m25969e1);
        newInsert.withValueBackReference("conversation_id", m25974d1);
        newInsert.withValue("date", Long.valueOf(System.currentTimeMillis()));
        newInsert.withValue(UpdateKey.STATUS, 3);
        newInsert.withValue("seen", Boolean.valueOf(message.f13387h));
        newInsert.withValue("read", 1);
        newInsert.withValue("locked", 0);
        newInsert.withValue("transport", 3);
        newInsert.withValue("category", Integer.valueOf(message.f13399t));
        newInsert.withValue("reply_to_msg_id", Long.valueOf(message.f13366B));
        newInsert.withValue("info11", "");
        newInsert.withValue("edit_message_id", Long.valueOf(message.f13379S));
        int size = arrayList.size();
        arrayList.add(newInsert.build());
        ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(C8582g0.m28296x());
        newDelete.withSelection("message_id=?", new String[1]).withSelectionBackReference(0, size);
        arrayList.add(newDelete.build());
        ArrayList arrayList2 = (ArrayList) m31606k0;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Entity entity = (Entity) it.next();
            int i2 = -1;
            if (entity.mo34996o()) {
                i2 = arrayList.size();
            }
            arrayList.add(C10480a.m25992Z2(entity, size));
            if (entity.mo34996o()) {
                arrayList.add(ContentProviderOperation.newInsert(Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_attachments")).withValue("uri", ((LocationEntity) entity).f13173i.toString()).withValueBackReference("entity_id", i2).build());
            }
        }
        for (Mention mention : message.f13395p) {
            arrayList.add(C10480a.m25987a3(mention, size));
        }
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        if (m31602n0.length == 0) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Entity entity2 = (Entity) it2.next();
                if (!entity2.mo34894r()) {
                    BinaryEntity binaryEntity = (BinaryEntity) entity2;
                    if (binaryEntity.f13174j) {
                        this.f20978l.mo14084b(binaryEntity.f13173i);
                    } else if (m31590w0(binaryEntity.f13173i)) {
                        File file = new File(binaryEntity.f13173i.getPath());
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
            }
            return null;
        }
        for (Entity entity3 : message.f13394o) {
            if (entity3.mo35001f()) {
                BinaryEntity binaryEntity2 = (BinaryEntity) entity3;
                if (binaryEntity2.f13174j) {
                    this.f20978l.mo14085a(binaryEntity2);
                } else if (m31590w0(binaryEntity2.f13173i) && m31598q0 != null) {
                    m31598q0.remove(new File(binaryEntity2.f13173i.getPath()));
                }
            }
        }
        if (m31598q0 != null) {
            for (File file2 : m31598q0) {
                if (file2.exists()) {
                    file2.delete();
                }
            }
        }
        long parseId = ContentUris.parseId(m31602n0[m25974d1].uri);
        long parseId2 = ContentUris.parseId(m31602n0[size].uri);
        Message.C4209b m35024b = message.m35024b();
        m35024b.f13421a = parseId2;
        m35024b.f13422b = parseId;
        m35024b.m35011b();
        m35024b.m35007f(m31606k0);
        return m35024b.m35012a();
    }

    /* renamed from: J */
    public AbstractC19891x<Message> m31643J(Message message, long j, boolean z) {
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), new String[0]);
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 1) != 0, new String[0]);
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        arrayList.add(ContentProviderOperation.newAssertQuery(C8582g0.m28340A(message.f13380a)).withValue("retry_count", Integer.valueOf(message.f13402w)).build());
        arrayList.add(ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a)).withValue(UpdateKey.STATUS, 69).withValue("retry_count", Integer.valueOf(message.f13402w + (z ? 1 : 0))).withValue("retry_date", Long.valueOf(j)).build());
        AbstractC6704q mo30540w = ((AbstractC6708t) this.f20970d.get()).mo30540w(message.f13390k, null);
        if (mo30540w == null || m31602n0(arrayList).length == 0) {
            return AbstractC19891x.m11834h(null);
        }
        mo30540w.mo15169t(j);
        Message.C4209b m35024b = message.m35024b();
        m35024b.f13444x = message.f13402w + 1;
        return AbstractC19891x.m11834h(m35024b.m35012a());
    }

    /* renamed from: J0 */
    public final boolean m31642J0(long j, int i, boolean z) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        if (i == 3 || i == 1) {
            arrayList.add(m31635N0(j, i, z));
        } else {
            arrayList.add(m31637M0(j, i, z));
        }
        return m31602n0(arrayList).length > 0;
    }

    /* renamed from: K0 */
    public final boolean m31641K0(long[] jArr, boolean z) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (long j : jArr) {
            arrayList.add(ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValue("marked_unread", Boolean.valueOf(z)).withSelection("conversation_id= ?", new String[]{String.valueOf(j)}).build());
        }
        boolean z2 = false;
        if (m31602n0(arrayList).length > 0) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: L */
    public void m31640L(long j) {
        m31586z0(C22128a.m8583p2("_id=", j), m31608j0());
    }

    /* renamed from: L0 */
    public final boolean m31639L0(Conversation[] conversationArr, boolean z) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Conversation conversation : conversationArr) {
            arrayList.add(m31588x0(conversation.f13199a, conversation.f13216r, conversation.f13218t, z));
        }
        boolean z2 = false;
        if (m31602n0(arrayList).length > 0) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: M */
    public AbstractC19891x<SparseBooleanArray> m31638M(long[] jArr, String str, boolean z) {
        StringBuilder m8704I = C22128a.m8704I("conversation_id", " IN (");
        m8704I.append(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            m8704I.append(',');
            m8704I.append(jArr[i]);
        }
        m8704I.append(')');
        SparseBooleanArray m31587y0 = m31587y0(m8704I.toString(), m31608j0(), false, null, str, z, true, true);
        m31641K0(jArr, false);
        return AbstractC19891x.m11834h(m31587y0);
    }

    /* renamed from: M0 */
    public final ContentProviderOperation m31637M0(long j, int i, boolean z) {
        return ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValue("marked_unread", Boolean.valueOf(z)).withSelection("(filter=? OR filter=?) AND conversation_id= ?", new String[]{String.valueOf(1), String.valueOf(i), String.valueOf(j)}).build();
    }

    /* renamed from: N */
    public AbstractC19891x<Boolean> m31636N(b bVar) {
        String str;
        String[] strArr;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        Closeable closeable = null;
        Closeable closeable2 = null;
        try {
            if (bVar == null) {
                str = "status=17";
                strArr = null;
            } else {
                try {
                    str = "status=17 AND date< ?";
                    strArr = new String[]{String.valueOf(((e) bVar).a)};
                } catch (RuntimeException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (0 != 0) {
                        try {
                            closeable.close();
                        } catch (IOException e2) {
                        }
                    }
                    return AbstractC19891x.m11834h(bool2);
                }
            }
            AbstractC6149q mo31783i = this.f20975i.mo31783i(this.f20967a.query(C8582g0.m28294z(), null, str, strArr, "date ASC "));
            if (mo31783i == null) {
                AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(bool2);
                if (mo31783i != null) {
                    try {
                        mo31783i.close();
                    } catch (IOException e3) {
                    }
                }
                return m11834h;
            }
            b mo14285j = this.f20954A.mo14285j();
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            HashSet hashSet = new HashSet();
            while (mo31783i.moveToNext()) {
                Message message = mo31783i.getMessage();
                b m31603m0 = m31603m0(message, message.f13391l, arrayList);
                hashSet.add(((AbstractC6708t) this.f20970d.get()).mo30539x(message.f13391l));
                if (m31603m0.i(mo14285j)) {
                    mo14285j = m31603m0;
                }
            }
            if (arrayList.isEmpty()) {
                AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(bool);
                try {
                    mo31783i.close();
                } catch (IOException e4) {
                }
                return m11834h2;
            } else if (m31602n0(arrayList).length == 0) {
                AbstractC19891x<Boolean> m11834h3 = AbstractC19891x.m11834h(bool2);
                try {
                    mo31783i.close();
                } catch (IOException e5) {
                }
                return m11834h3;
            } else {
                m31648F0(this.f20954A.mo14285j(), mo14285j, 2, hashSet);
                AbstractC19891x<Boolean> m11834h4 = AbstractC19891x.m11834h(bool);
                try {
                    mo31783i.close();
                } catch (IOException e6) {
                }
                return m11834h4;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable2.close();
                } catch (IOException e7) {
                }
            }
            throw th;
        }
    }

    /* renamed from: N0 */
    public final ContentProviderOperation m31635N0(long j, int i, boolean z) {
        return ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValue("marked_unread", Boolean.valueOf(z)).withSelection("filter=? AND conversation_id= ?", new String[]{String.valueOf(i), String.valueOf(j)}).build();
    }

    /* renamed from: O */
    public void m31634O(Message[] messageArr, int i) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Message message : messageArr) {
            C10480a.m26043N(arrayList, message.f13380a, i, 1);
        }
        int length = m31602n0(arrayList).length;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: P */
    public void m31633P(AbstractC6251z abstractC6251z, int i) {
        boolean z;
        Object obj;
        AssertionUtil.AlwaysFatal.isNotNull(this.f20980n, "You can't trigger sync without setting its bounds");
        if (this.f20955B) {
            m31601o0(2);
            m31601o0(1);
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            Cursor query = this.f20967a.query(C8582g0.m28295y(), new String[]{"_id", "date"}, "scheduled_transport =? AND (status & 17) = 17", new String[]{String.valueOf(0)}, null);
            if (query != null) {
                b bVar = f20946O;
                while (query.moveToNext()) {
                    try {
                        long j = query.getLong(0);
                        b bVar2 = new b(query.getLong(1));
                        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28295y());
                        newUpdate.withValue(UpdateKey.STATUS, 9);
                        newUpdate.withValue("seen", 1);
                        newUpdate.withSelection("_id=? ", new String[]{String.valueOf(j)});
                        arrayList.add(newUpdate.build());
                        if (bVar2.i(bVar)) {
                            bVar = bVar2;
                        }
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                query.close();
                if (m31602n0(arrayList).length != 0) {
                    m31619d(0, bVar, false);
                }
            }
            C6063b c6063b = (C6063b) this.f20986t.get();
            if (((AbstractC6392i0) c6063b.f20130b.get()).mo31097b4(0L) != 0) {
                Object obj2 = c6063b.f20130b.get();
                l.d(obj2, "settings.get()");
                if (!((AbstractC6392i0) obj2).mo31123X()) {
                    ((AbstractC6233m) ((AbstractC19854f) c6063b.f20129a.get()).mo11854a()).mo31705V(false, i.y0(5));
                }
            }
            String mo14271x = c6063b.f20131c.mo14271x();
            l.d(c6063b.f20130b.get(), "settings.get()");
            if (!l.a(mo14271x, ((AbstractC6392i0) obj).mo31121X1())) {
                ((AbstractC6233m) ((AbstractC19854f) c6063b.f20129a.get()).mo11854a()).mo31697b0();
            }
            ((AbstractC18094f) this.f20957D.get()).mo15492b();
            ((AbstractC7158b) this.f20963J.get()).mo30047c();
            this.f20955B = false;
        }
        Set<AbstractC6704q> set = this.f20980n.f21002d;
        AbstractC19244l0 mo13749a = this.f20981o.mo13749a("MessagesStorage.performBatch");
        try {
            C6240c c6240c = this.f20980n;
            b bVar3 = c6240c.f21000b;
            b bVar4 = c6240c.f21001c;
            C6239b c6239b = (C6239b) abstractC6251z;
            if (c6239b.f20995c.i(bVar3)) {
                c6239b.f20995c = bVar3;
                c6239b.f20996d.clear();
                z = true;
            } else {
                z = false;
            }
            if (bVar4.i(c6239b.f20997e)) {
                c6239b.f20997e = bVar4;
                z = true;
            }
            if (z) {
                i |= this.f20980n.f20999a;
            }
            int m31650E0 = m31650E0(abstractC6251z, 200, mo13749a, set);
            if (m31650E0 == 0) {
                this.f20976j.mo31803a(abstractC6251z, i);
                String str = "Schedule next batch: " + abstractC6251z;
                for (AbstractC6704q abstractC6704q : set) {
                    if (abstractC6704q.mo15171r()) {
                        m31600p(abstractC6704q.getType(), this.f20954A.mo14285j());
                    }
                }
            } else if (m31650E0 == 1) {
                if (((C6239b) abstractC6251z).f20995c.e(this.f20974h.mo31097b4(0L))) {
                    boolean z2 = !((this.f20974h.mo31097b4(0L) > 0L ? 1 : (this.f20974h.mo31097b4(0L) == 0L ? 0 : -1)) != 0);
                    this.f20974h.mo31028n1(((e) ((C6239b) abstractC6251z).f20995c).a);
                    if (z2) {
                        this.f20977k.mo30000a();
                    }
                }
                m31615g();
                if (m31597r0(set, 0) != null || m31597r0(set, 1) != null || m31597r0(set, 4) != null || m31597r0(set, 2) != null) {
                    if (((e) ((C6239b) abstractC6251z).f20997e).a == 0) {
                        ((AbstractC10419a) this.f20992z.get()).mo26183a();
                        ((AbstractC18420r1) this.f20984r.get()).mo15026b();
                    } else {
                        ((AbstractC10315a) this.f20991y.get()).mo26382c();
                    }
                }
                this.f20980n = null;
                for (AbstractC6704q abstractC6704q2 : set) {
                    if (abstractC6704q2.mo15171r()) {
                        m31600p(abstractC6704q2.getType(), this.f20954A.mo14285j());
                    }
                }
                for (AbstractC6704q abstractC6704q3 : set) {
                    if (abstractC6704q3.getType() == 5) {
                        Object obj3 = ((C6063b) this.f20986t.get()).f20130b.get();
                        l.d(obj3, "settings.get()");
                        ((AbstractC6392i0) obj3).mo31070g1(true);
                    }
                }
            } else if (m31650E0 == 2) {
                this.f20980n = null;
                return;
            }
            if ((i & 1) == 1) {
                C10263b.m26509a("Sync Bounds has ACTION_NOTIFY");
                mo31611i();
                ((AbstractC6523c0) ((AbstractC19854f) this.f20982p.get()).mo11854a()).mo30801e();
            } else {
                C10263b.m26509a("Sync Bounds does not have ACTION_NOTIFY");
            }
        } finally {
            mo13749a.stop();
        }
    }

    /* renamed from: Q */
    public AbstractC19891x<SparseBooleanArray> m31632Q(long j) {
        return AbstractC19891x.m11834h(m31605l0(C22128a.m8583p2("_id=", j), false, m31608j0()));
    }

    /* renamed from: T */
    public void m31631T(boolean z) {
        m31651D0(z, ((AbstractC6708t) this.f20970d.get()).mo30552j());
    }

    /* renamed from: U */
    public void m31630U(String str, boolean z, boolean z2, long[] jArr, long... jArr2) {
        m31587y0(m31593u0(jArr2), m31608j0(), false, null, str, z, z2, true);
        m31641K0(jArr, false);
    }

    /* renamed from: V */
    public void m31629V(boolean z, Set<Integer> set) {
        Set<AbstractC6704q> m31592v0 = m31592v0(set);
        m31657A0(m31592v0);
        m31648F0(this.f20954A.mo14285j(), new b(0L), z ? 1 : 0, m31592v0);
    }

    /* renamed from: W */
    public AbstractC19891x<Boolean> m31628W(String str) {
        boolean z = true;
        Cursor query = this.f20967a.query(C8582g0.m28305o(2), new String[]{"_id"}, "raw_id = ?", new String[]{str}, null);
        if (query != null) {
            try {
                if (query.getCount() <= 0) {
                    z = false;
                }
                return AbstractC19891x.m11834h(Boolean.valueOf(z));
            } finally {
                query.close();
            }
        }
        return AbstractC19891x.m11834h(Boolean.FALSE);
    }

    /* renamed from: X */
    public AbstractC19891x<Draft> m31627X(Message message) {
        Entity[] entityArr;
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), "You can update status only for stored messages");
        AssertionUtil.AlwaysFatal.isTrue(message.f13390k == 3, "You can't cancel failed message");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(C8582g0.m28295y());
        newDelete.withSelection("conversation_id=? AND (status & 2) == 2", new String[]{String.valueOf(message.f13381b)});
        arrayList.add(newDelete.build());
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28295y());
        newUpdate.withValue(UpdateKey.STATUS, 3);
        newUpdate.withSelection("_id=? AND status = 17", new String[]{String.valueOf(message.f13380a)});
        arrayList.add(newUpdate.build());
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        if (m31602n0.length == 0 || m31602n0[1].count.intValue() == 0) {
            return AbstractC19891x.m11834h(null);
        }
        Conversation m31599p0 = m31599p0(message.f13381b);
        if (m31599p0 == null) {
            return AbstractC19891x.m11834h(null);
        }
        Draft.C4194b c4194b = new Draft.C4194b();
        Collections.addAll(c4194b.f13286c, m31599p0.f13211m);
        c4194b.f13285b = m31599p0;
        c4194b.f13291h = m31599p0.f13188C;
        c4194b.f13284a = message.f13380a;
        for (Entity entity : message.f13394o) {
            if (entity.mo34894r()) {
                c4194b.f13288e = ((TextEntity) entity).f13465i;
            } else {
                c4194b.m35056b((BinaryEntity) entity);
            }
        }
        ((AbstractC7290a) this.f20979m.get()).mo29846b(new AbstractC6696o.C6697a("INTERNAL_CLIENT"), message, message.f13391l);
        return AbstractC19891x.m11834h(c4194b.m35055c());
    }

    /* renamed from: Y */
    public AbstractC19891x<Message> m31626Y(Message message) {
        boolean z = true;
        if (message.f13386g != 1) {
            z = false;
        }
        AssertionUtil.isTrue(z, new String[0]);
        if (!message.m35020f()) {
            AssertionUtil.OnlyInDebug.fail("Can not schedule empty message for sending");
            return AbstractC19891x.m11834h(null);
        }
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(message.f13380a));
        newUpdate.withValue(UpdateKey.STATUS, 17);
        newUpdate.withValue("date_sent", Long.valueOf(System.currentTimeMillis()));
        arrayList.add(newUpdate.build());
        return m31602n0(arrayList).length == 0 ? AbstractC19891x.m11834h(null) : m31645I(message.f13380a);
    }

    /* renamed from: Z */
    public AbstractC19891x<SparseBooleanArray> m31625Z(Conversation[] conversationArr, final Long l, final String str) {
        final boolean m31608j0 = m31608j0();
        final SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        m31594t0(conversationArr, new AbstractC6238a() { // from class: e.a.a.g.c
            @Override // p193e.p194a.p195a.p231g.AbstractC6237o.AbstractC6238a
            /* renamed from: a */
            public final void mo31585a(String str2) {
                AbstractC6237o abstractC6237o = AbstractC6237o.this;
                abstractC6237o.m31655B0(sparseBooleanArray, abstractC6237o.m31587y0(str2, m31608j0, false, l, str, false, true, true));
            }
        });
        m31639L0(conversationArr, false);
        m31646H0(conversationArr);
        return AbstractC19891x.m11834h(sparseBooleanArray);
    }

    /* renamed from: a */
    public AbstractC19891x<Boolean> m31624a(Message message) {
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), "You can re-schedule only saved messages");
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 8) != 0, "You can re-schedule only failed messages");
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 1) != 0, "You can re-schedule only outgoing messages");
        Closeable closeable = null;
        try {
            AbstractC6149q mo31783i = this.f20975i.mo31783i(this.f20967a.query(C8582g0.m28294z(), null, "_id=?", new String[]{String.valueOf(message.f13380a)}, null));
            if (mo31783i != null && mo31783i.moveToNext()) {
                Message message2 = mo31783i.getMessage();
                try {
                    mo31783i.close();
                } catch (IOException e) {
                }
                if ((message2.f13386g & 9) != 9) {
                    return AbstractC19891x.m11834h(bool2);
                }
                int i = message2.f13390k;
                int i2 = i;
                if (i == 3) {
                    i2 = message2.f13391l;
                }
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                b m31603m0 = m31603m0(message2, i2, arrayList);
                if (arrayList.isEmpty()) {
                    return AbstractC19891x.m11834h(bool);
                }
                if (m31602n0(arrayList).length == 0) {
                    return AbstractC19891x.m11834h(bool2);
                }
                m31648F0(this.f20954A.mo14285j(), m31603m0, 2, Collections.singleton(((AbstractC6708t) this.f20970d.get()).mo30539x(i2)));
                return AbstractC19891x.m11834h(bool);
            }
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(bool2);
            if (mo31783i != null) {
                try {
                    mo31783i.close();
                } catch (IOException e2) {
                }
            }
            return m11834h;
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    /* renamed from: a0 */
    public void m31623a0(long j) {
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("actions_dismissed", (Integer) 1);
        this.f20967a.update(C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_thread_stats_specific_update").appendQueryParameter("conversation_id", String.valueOf(j)).build(), contentValues, null, null);
    }

    /* renamed from: b */
    public void m31622b(boolean z) {
        m31653C0(z, ((AbstractC6708t) this.f20970d.get()).mo30552j());
    }

    /* renamed from: b0 */
    public void m31621b0() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id_day", (Long) (-1L));
        contentValues.put("group_id_minute", (Long) (-1L));
        if (this.f20967a.update(C8582g0.m28295y(), contentValues, "transport = 5", null) > 0) {
            this.f20974h.mo30995t0(this.f20954A.mo14271x());
            m31622b(false);
        }
    }

    /* renamed from: c */
    public AbstractC19891x<Message> m31620c(Message message, Participant[] participantArr, int i) {
        AssertionUtil.isTrue(message.f13390k == 3, new String[0]);
        AssertionUtil.isTrue(message.f13386g == 3, new String[0]);
        if (!message.m35020f()) {
            AssertionUtil.OnlyInDebug.fail("Can not schedule empty message for sending");
            return AbstractC19891x.m11834h(null);
        }
        Message m31644I0 = m31644I0(message, participantArr);
        if (m31644I0 == null) {
            return AbstractC19891x.m11834h(null);
        }
        AbstractC6704q mo30539x = ((AbstractC6708t) this.f20970d.get()).mo30539x(i);
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        ContentProviderOperation.Builder newAssertQuery = ContentProviderOperation.newAssertQuery(C8582g0.m28340A(m31644I0.f13380a));
        newAssertQuery.withValue(UpdateKey.STATUS, 3);
        arrayList.add(newAssertQuery.build());
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28340A(m31644I0.f13380a));
        newUpdate.withValue(UpdateKey.STATUS, 17);
        newUpdate.withValue("scheduled_transport", Integer.valueOf(i));
        newUpdate.withValue("date_sent", Long.valueOf(mo30539x.mo15177k(((e) message.f13383d).a)));
        newUpdate.withValue("date", Long.valueOf(mo30539x.mo15177k(((e) message.f13384e).a)));
        newUpdate.withValue("sim_token", mo30539x.mo15176l(message.f13392m));
        newUpdate.withValue("category", Integer.valueOf(message.f13399t));
        newUpdate.withValue("send_schedule_date", Long.valueOf(((e) message.f13385f).a));
        newUpdate.withValue("important", Boolean.valueOf(message.f13374N));
        newUpdate.withValue("important_date", Long.valueOf(((e) message.f13375O).a));
        newUpdate.withValue("analytics_id", message.f13396q);
        newUpdate.withValue("analytics_context", message.f13397r);
        if (i == 2) {
            newUpdate.withValue("info19", Integer.valueOf(message.f13377Q));
            ImForwardInfo imForwardInfo = message.f13376P;
            if (imForwardInfo != null) {
                newUpdate.withValue("info13", imForwardInfo.f13315a);
                newUpdate.withValue("info14", message.f13376P.f13316b);
                newUpdate.withValue("info15", message.f13376P.f13317c);
                newUpdate.withValue("info18", message.f13376P.f13318d);
            }
        }
        arrayList.add(newUpdate.build());
        return m31602n0(arrayList).length == 0 ? AbstractC19891x.m11834h(null) : m31645I(m31644I0.f13380a);
    }

    /* renamed from: d */
    public void m31619d(int i, b bVar, boolean z) {
        ((AbstractC6708t) this.f20970d.get()).mo30539x(i).mo14986h(bVar);
        m31651D0(z, m31592v0(Collections.singleton(Integer.valueOf(i))));
    }

    /* renamed from: d0 */
    public void m31618d0(Message message, boolean z) {
        Message message2 = message;
        if (z) {
            Message.C4209b m35024b = message.m35024b();
            m35024b.m35010c(System.currentTimeMillis());
            message2 = m35024b.m35012a();
        }
        AbstractC6704q mo30540w = ((AbstractC6708t) this.f20970d.get()).mo30540w(message2.f13390k, null);
        if (mo30540w == null) {
            AssertionUtil.OnlyInDebug.fail("Can not save message to system table: " + message2);
            return;
        }
        C6702p mo15185a = mo30540w.mo15185a(message2);
        if (!mo15185a.f22069a || !mo15185a.f22070b) {
            return;
        }
        m31607k(mo15185a.f22071c, Collections.singleton(Integer.valueOf(mo30540w.getType())));
    }

    /* renamed from: e0 */
    public void m31617e0() {
        Cursor query = this.f20967a.query(C8582g0.m28295y(), new String[]{"_id", "read", "seen"}, "sync_status = 1", null, null);
        if (query != null) {
            boolean m31608j0 = m31608j0();
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (query.moveToNext()) {
                    boolean z = false;
                    long j = query.getLong(0);
                    boolean z2 = query.getInt(1) == 1;
                    if (query.getInt(2) == 1) {
                        z = true;
                    }
                    if (z2) {
                        arrayList.add(Long.valueOf(j));
                    } else if (z) {
                        arrayList2.add(Long.valueOf(j));
                    }
                }
                if (!arrayList.isEmpty()) {
                    m31587y0(m31593u0(w3.c.a.a.a.a.h((Long[]) arrayList.toArray(new Long[arrayList.size()]))), m31608j0, true, null, "unknown", true, true, false);
                }
                if (!arrayList2.isEmpty()) {
                    m31586z0(m31593u0(w3.c.a.a.a.a.h((Long[]) arrayList2.toArray(new Long[arrayList2.size()]))), m31608j0);
                }
            } finally {
                query.close();
            }
        }
    }

    /* renamed from: f0 */
    public void m31616f0() {
        Cursor query = this.f20967a.query(C8582g0.m28295y(), new String[]{"_id"}, "classification = 0 AND (status & 1) = 0", null, "_id LIMIT 1");
        if (query != null) {
            try {
                if (query.getCount() > 0) {
                    HashSet hashSet = new HashSet();
                    hashSet.add(0);
                    hashSet.add(4);
                    m31629V(false, hashSet);
                }
            } finally {
                query.close();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public void m31615g() {
        Pair pair;
        List<String> mo26829n = this.f20962I.mo26829n();
        if (!mo26829n.isEmpty()) {
            int size = mo26829n.size();
            StringBuilder m8728C = C22128a.m8728C("?");
            for (int i = 1; i < size; i++) {
                m8728C.append(",?");
            }
            StringBuilder m8728C2 = C22128a.m8728C("_id IN (SELECT DISTINCT message_id FROM msg_entities WHERE entity_info1 IN (");
            m8728C2.append(m8728C.toString());
            m8728C2.append(")) AND ");
            m8728C2.append("read");
            m8728C2.append(" = 0");
            Cursor query = this.f20967a.query(C8582g0.m28295y(), new String[]{"_id", "conversation_id"}, m8728C2.toString(), (String[]) mo26829n.toArray(new String[mo26829n.size()]), null);
            if (query != null) {
                long[] jArr = new long[query.getCount()];
                long[] jArr2 = new long[query.getCount()];
                while (query.moveToNext()) {
                    try {
                        jArr[query.getPosition()] = query.getLong(query.getColumnIndex("_id"));
                        jArr2[query.getPosition()] = query.getLong(query.getColumnIndex("conversation_id"));
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                query.close();
                pair = new Pair(jArr, jArr2);
            } else {
                pair = new Pair(new long[0], new long[0]);
            }
            long[] jArr3 = (long[]) pair.first;
            long[] jArr4 = (long[]) pair.second;
            if (jArr3.length <= 0 || jArr4.length <= 0) {
                return;
            }
            m31630U(RemoteMessageConst.NOTIFICATION, false, true, jArr4, jArr3);
            this.f20962I.mo26877F();
        }
    }

    /* renamed from: g0 */
    public void m31614g0(long[] jArr) {
        m31586z0(m31593u0(jArr), m31608j0());
    }

    /* renamed from: h */
    public AbstractC19891x<Boolean> m31613h(long j) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Set<File> m31598q0 = m31598q0(j);
        ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(C8582g0.m28295y());
        newDelete.withSelection("_id=? AND (status & 2) == 2", new String[]{String.valueOf(j)});
        arrayList.add(newDelete.build());
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        if (m31602n0.length == 0 || m31602n0[0].count.intValue() == 0) {
            return AbstractC19891x.m11834h(Boolean.FALSE);
        }
        Iterator it = ((HashSet) m31598q0).iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (file.exists()) {
                file.delete();
            }
        }
        return AbstractC19891x.m11834h(Boolean.TRUE);
    }

    /* renamed from: h0 */
    public void m31612h0(long j, int i, int i2, boolean z, String str) {
        StringBuilder m8712G = C22128a.m8712G("conversation_id = ", j, StringConstant.SPACE);
        m8712G.append(C8582g0.m28319a((C20592g) this.f20983q.get(), this.f20964K, i, i2, true));
        m31587y0(m8712G.toString(), m31608j0(), false, null, str, true, true, z);
        if (!((C20592g) this.f20983q.get()).m10963h0().isEnabled()) {
            m31641K0(new long[]{j}, false);
        } else if (i2 == 0) {
            m31642J0(j, 1, false);
        } else {
            m31642J0(j, i, false);
        }
        Conversation.C4191b c4191b = new Conversation.C4191b();
        c4191b.f13237a = j;
        c4191b.f13254r = i;
        c4191b.f13255s = i2;
        m31646H0(new Conversation[]{c4191b.m35063b()});
    }

    /* renamed from: i */
    public abstract void mo31611i();

    /* renamed from: i0 */
    public final String m31610i0(long j, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        if (i == 1 && i2 == 2) {
            sb.append("filter=2");
            sb.append(" AND ");
        } else if (i2 != 0) {
            sb.append("filter=" + i);
            sb.append(" AND ");
        }
        sb.append("conversation_id=" + j);
        sb.append(" AND unread_messages_count>0");
        return sb.toString();
    }

    /* renamed from: j */
    public AbstractC19891x<SparseBooleanArray> m31609j(Conversation[] conversationArr, final boolean z) {
        final boolean m31608j0 = m31608j0();
        final SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        m31594t0(conversationArr, new AbstractC6238a() { // from class: e.a.a.g.b
            @Override // p193e.p194a.p195a.p231g.AbstractC6237o.AbstractC6238a
            /* renamed from: a */
            public final void mo31585a(String str) {
                AbstractC6237o abstractC6237o = AbstractC6237o.this;
                abstractC6237o.m31655B0(sparseBooleanArray, abstractC6237o.m31605l0(str, z, m31608j0));
            }
        });
        return AbstractC19891x.m11834h(sparseBooleanArray);
    }

    /* renamed from: j0 */
    public boolean m31608j0() {
        return ((AbstractC19230g) this.f20989w.get()).mo13782o(((AbstractC7156p) this.f20990x.get()).getName());
    }

    /* renamed from: k */
    public void m31607k(boolean z, Set<Integer> set) {
        m31651D0(z, m31592v0(set));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        if (r27 != false) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04ff A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v283, types: [long] */
    /* renamed from: k0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.truecaller.messaging.data.types.Entity> m31606k0(com.truecaller.messaging.data.types.Entity[] r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 1331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.AbstractC6237o.m31606k0(com.truecaller.messaging.data.types.Entity[], boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0080, code lost:
        com.truecaller.log.AssertionUtil.OnlyInDebug.fail("Unsupported transport type: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00ab, code lost:
        r8.close();
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0270 -> B:32:0x013d). Please submit an issue!!! */
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.SparseBooleanArray m31605l0(java.lang.String r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.AbstractC6237o.m31605l0(java.lang.String, boolean, boolean):android.util.SparseBooleanArray");
    }

    /* renamed from: m */
    public AbstractC19891x<Conversation> m31604m(b bVar) {
        Cursor query = this.f20967a.query(C8582g0.m28306n(), null, "date>?", new String[]{String.valueOf(((e) bVar).a)}, "date DESC LIMIT 1");
        if (query == null || !query.moveToFirst()) {
            return AbstractC19891x.m11834h(null);
        }
        try {
            return AbstractC19891x.m11834h(this.f20975i.mo31772t(query).mo31752p());
        } finally {
            query.close();
        }
    }

    /* renamed from: m0 */
    public final b m31603m0(Message message, int i, List<ContentProviderOperation> list) {
        b bVar;
        String str = "Enqueue for sending message: " + message + " by transport: " + i;
        b bVar2 = message.f13384e;
        AbstractC6704q mo30540w = ((AbstractC6708t) this.f20970d.get()).mo30540w(i, null);
        if (mo30540w != null) {
            Conversation m31599p0 = m31599p0(message.f13381b);
            if (m31599p0 == null) {
                Message.C4209b m35024b = message.m35024b();
                m35024b.f13427g = 9;
                m35024b.f13428h = true;
                C10480a.m25877w3(list, m35024b.m35012a(), -1);
                String str2 = "Can't fetch conversation for message: " + message;
                AssertionUtil.reportWeirdnessButNeverCrash("Trying to enqueue a message but conversation doesn't exist");
                return bVar2;
            }
            AbstractC6704q.C6705a mo15187B = mo30540w.mo15187B(message, m31599p0.f13211m);
            int i2 = mo15187B.f22072a;
            if (i2 == 0) {
                Message.C4209b m35024b2 = message.m35024b();
                m35024b2.f13427g = 9;
                message = m35024b2.m35012a();
                C10480a.m25877w3(list, message, -1);
                ((AbstractC7290a) this.f20979m.get()).mo29846b(new AbstractC6696o.C6698b("INTERNAL_CLIENT"), message, mo30540w.getType());
                bVar = bVar2;
            } else if (i2 == 1) {
                AssertionUtil.AlwaysFatal.isNotNull(mo15187B.f22073b, new String[0]);
                Message.C4209b m35024b3 = message.m35024b();
                m35024b3.f13427g = 5;
                int type = mo30540w.getType();
                TransportInfo transportInfo = mo15187B.f22073b;
                m35024b3.f13431k = type;
                m35024b3.f13434n = transportInfo;
                message = m35024b3.m35012a();
                C10480a.m25877w3(list, message, -1);
                bVar = message.f13383d;
            } else if (i2 != 2) {
                bVar = bVar2;
            } else {
                list.add(ContentProviderOperation.newDelete(C8582g0.m28340A(message.f13380a)).build());
                bVar = message.f13383d;
            }
            ((AbstractC7290a) this.f20979m.get()).mo29841g(message.f13396q, message.f13390k);
        } else {
            Message.C4209b m35024b4 = message.m35024b();
            m35024b4.f13427g = 9;
            Message m35012a = m35024b4.m35012a();
            C10480a.m25877w3(list, m35012a, -1);
            ((AbstractC7290a) this.f20979m.get()).mo29846b(new AbstractC6696o.C6698b("INTERNAL_CLIENT"), m35012a, 3);
            bVar = bVar2;
        }
        return bVar;
    }

    /* renamed from: n0 */
    public ContentProviderResult[] m31602n0(ArrayList<ContentProviderOperation> arrayList) {
        try {
            ContentResolver contentResolver = this.f20967a;
            Uri uri = C17891a1.f50888a;
            return contentResolver.applyBatch("com.truecaller", arrayList);
        } catch (OperationApplicationException | SQLiteFullException | RemoteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return f20945N;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: o0 */
    public final void m31601o0(int i) {
        AbstractC6149q mo31778n;
        if (((AbstractC6708t) this.f20970d.get()).mo30540w(i, null) == null || (mo31778n = this.f20975i.mo31778n(this.f20967a.query(C8582g0.m28305o(i), null, "(status & 33) = 33", null, null))) == null) {
            return;
        }
        b bVar = f20946O;
        while (mo31778n.moveToNext()) {
            try {
                Message message = mo31778n.getMessage();
                m31589x(message).mo11829f(new AbstractC19851d0() { // from class: e.a.a.g.d
                    @Override // p193e.p194a.p1187r2.AbstractC19851d0
                    public final void onResult(Object obj) {
                        Message message2 = (Message) obj;
                        AbstractC6237o.this.mo31611i();
                    }
                });
                if (message.f13384e.i(bVar)) {
                    bVar = message.f13384e;
                }
            } catch (Throwable th) {
                mo31778n.close();
                throw th;
            }
        }
        mo31778n.close();
        m31619d(i, bVar, false);
    }

    /* renamed from: p */
    public void m31600p(int i, b bVar) {
        AbstractC6149q mo31783i = this.f20975i.mo31783i(this.f20967a.query(C8582g0.m28294z(), null, "(transport = ? OR scheduled_transport = ?) AND (status & 1) != 0 AND (status & 36) != 0", new String[]{String.valueOf(i), String.valueOf(i)}, C22128a.m8543z2("date_sent", ((AbstractC6708t) this.f20970d.get()).mo30539x(i).mo15179g() ? " LIMIT 1" : "")));
        if (mo31783i == null) {
            return;
        }
        while (mo31783i.moveToNext()) {
            try {
                Message message = mo31783i.getMessage();
                int i2 = message.f13386g;
                if ((i2 & 32) == 0 && ((i2 & 64) == 0 || !message.f13403x.f(bVar))) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(UpdateKey.STATUS, (Integer) 33);
                    if (this.f20967a.update(C8582g0.m28340A(message.f13380a), contentValues, null, null) != 0) {
                        ((AbstractC6690i) this.f20971e.get()).mo30577b(message);
                    }
                }
            } finally {
                mo31783i.close();
            }
        }
    }

    /* renamed from: p0 */
    public final Conversation m31599p0(long j) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = this.f20967a.query(C8582g0.m28313g(j), null, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        Conversation mo31752p = this.f20975i.mo31772t(cursor).mo31752p();
                        cursor.close();
                        return mo31752p;
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

    /* renamed from: q0 */
    public final Set<File> m31598q0(long j) {
        HashSet hashSet = new HashSet();
        AbstractC6130c abstractC6130c = null;
        try {
            AbstractC6130c mo31775q = this.f20975i.mo31775q(this.f20967a.query(C8582g0.m28296x(), null, "message_id=?", new String[]{String.valueOf(j)}, null));
            if (mo31775q != null) {
                while (true) {
                    abstractC6130c = mo31775q;
                    if (!mo31775q.moveToNext()) {
                        break;
                    }
                    Entity entity = mo31775q.getEntity();
                    if (!entity.mo34894r()) {
                        Uri uri = ((BinaryEntity) entity).f13173i;
                        if (m31590w0(uri)) {
                            hashSet.add(new File(uri.getPath()));
                        }
                    }
                }
            }
            if (mo31775q != null) {
                try {
                    mo31775q.close();
                } catch (IOException e) {
                }
            }
            return hashSet;
        } catch (Throwable th) {
            if (abstractC6130c != null) {
                try {
                    abstractC6130c.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    /* renamed from: r0 */
    public final AbstractC6704q m31597r0(Iterable<AbstractC6704q> iterable, int i) {
        for (AbstractC6704q abstractC6704q : iterable) {
            if (abstractC6704q.getType() == i) {
                return abstractC6704q;
            }
        }
        return null;
    }

    /* renamed from: s0 */
    public final AbstractC6139g0 m31596s0(int i, b bVar, b bVar2) {
        long j = ((e) bVar).a;
        long j2 = ((e) bVar2).a;
        ContentResolver contentResolver = this.f20967a;
        Uri m28305o = C8582g0.m28305o(i);
        String[] strArr = C6110d0.f20264z;
        return this.f20975i.mo31776p(contentResolver.query(m28305o, C6110d0.f20264z, "date>=? AND date <=?", new String[]{String.valueOf(j), String.valueOf(j2)}, "date DESC, CAST(raw_id AS integer) DESC"));
    }

    /* renamed from: t */
    public AbstractC19891x<SparseBooleanArray> m31595t(long j, int i, int i2, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("conversation_id=" + j);
        sb.append(StringConstant.SPACE);
        if (z2) {
            sb.append("AND status&2 = 0 ");
        }
        sb.append(C8582g0.m28319a((C20592g) this.f20983q.get(), this.f20964K, i, i2, false));
        if (this.f20964K) {
            sb.append(" AND transport != 5");
        }
        return AbstractC19891x.m11834h(m31605l0(sb.toString(), z, m31608j0()));
    }

    /* renamed from: t0 */
    public final void m31594t0(Conversation[] conversationArr, AbstractC6238a abstractC6238a) {
        int i = 0;
        while (i < conversationArr.length) {
            int min = Math.min(i + 200, conversationArr.length);
            StringBuilder sb = new StringBuilder();
            while (i < min) {
                if (sb.length() > 0) {
                    sb.append(" OR ");
                }
                sb.append("conversation_id = ");
                sb.append(conversationArr[i].f13199a);
                sb.append(StringConstant.SPACE);
                sb.append(C8582g0.m28319a((C20592g) this.f20983q.get(), this.f20964K, conversationArr[i].f13216r, conversationArr[i].f13218t, false));
                if (this.f20964K) {
                    sb.append(" AND transport != 5");
                }
                i++;
            }
            abstractC6238a.mo31585a(sb.toString());
        }
    }

    /* renamed from: u0 */
    public String m31593u0(long[] jArr) {
        StringBuilder m8704I = C22128a.m8704I("_id", " IN (");
        m8704I.append(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            m8704I.append(',');
            m8704I.append(jArr[i]);
        }
        m8704I.append(")");
        return m8704I.toString();
    }

    /* renamed from: v0 */
    public final Set<AbstractC6704q> m31592v0(Collection<Integer> collection) {
        HashSet hashSet = new HashSet();
        for (Integer num : collection) {
            hashSet.add(((AbstractC6708t) this.f20970d.get()).mo30539x(num.intValue()));
        }
        return hashSet;
    }

    /* renamed from: w */
    public AbstractC19891x<Message> m31591w(Message message, int i, String str) {
        List<Entity> m31606k0 = m31606k0(message.f13394o, true);
        Message.C4209b m35024b = message.m35024b();
        m35024b.f13421a = -1L;
        m35024b.m35011b();
        m35024b.m35007f(m31606k0);
        m35024b.f13427g = 3;
        m35024b.f13432l = i;
        NullTransportInfo nullTransportInfo = NullTransportInfo.f13677b;
        m35024b.f13431k = 3;
        m35024b.f13434n = nullTransportInfo;
        m35024b.f13439s = UUID.randomUUID().toString();
        String str2 = str;
        if (str == null) {
            str2 = "-1";
        }
        m35024b.f13433m = str2;
        m35024b.f13425e = this.f20954A.mo14285j();
        m35024b.f13424d = this.f20954A.mo14285j();
        return AbstractC19891x.m11834h(m35024b.m35012a());
    }

    /* renamed from: w0 */
    public final boolean m31590w0(Uri uri) {
        if (!"file".equals(uri.getScheme())) {
            return false;
        }
        return new File(uri.getPath()).getParentFile().equals(this.f20968b);
    }

    /* renamed from: x */
    public AbstractC19891x<Message> m31589x(Message message) {
        AssertionUtil.AlwaysFatal.isTrue(message.m35019g(), "You can update status only for stored messages");
        AssertionUtil.AlwaysFatal.isTrue(message.f13393n.mo34879u() != -1, "You can update status only for stored messages");
        AssertionUtil.AlwaysFatal.isTrue((message.f13386g & 1) != 0, new String[0]);
        String str = "Update message status for " + message + " from: " + message.f13386g + " to: 9 by transport: " + message.f13390k;
        AbstractC6704q mo30540w = ((AbstractC6708t) this.f20970d.get()).mo30540w(message.f13390k, null);
        if (mo30540w == null) {
            return AbstractC19891x.m11834h(null);
        }
        C6713w mo15166w = mo30540w.mo15166w();
        if (mo30540w.mo15170s(message, 9, mo15166w) && mo30540w.mo15173p(mo15166w)) {
            mo30540w.mo14986h(message.f13384e);
            m31607k(true, Collections.singleton(Integer.valueOf(mo30540w.getType())));
            ContentValues contentValues = new ContentValues();
            contentValues.put("retry_count", (Integer) 0);
            contentValues.put("seen", (Integer) 0);
            contentValues.put("read", (Integer) 0);
            contentValues.put(UpdateKey.STATUS, (Integer) 9);
            this.f20967a.update(C8582g0.m28340A(message.f13380a), contentValues, null, null);
            Message.C4209b m35024b = message.m35024b();
            m35024b.f13427g = 9;
            m35024b.f13444x = 0;
            return AbstractC19891x.m11834h(m35024b.m35012a());
        }
        return AbstractC19891x.m11834h(null);
    }

    /* renamed from: x0 */
    public ContentProviderOperation m31588x0(long j, int i, int i2, boolean z) {
        return !((C20592g) this.f20983q.get()).m10963h0().isEnabled() ? ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValue("marked_unread", Boolean.valueOf(z)).withSelection("conversation_id= ?", new String[]{String.valueOf(j)}).build() : i2 == 0 ? m31635N0(j, 1, z) : i != 3 ? m31637M0(j, i, z) : m31635N0(j, i, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00de, code lost:
        com.truecaller.log.AssertionUtil.OnlyInDebug.fail("Unsupported transport type: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0109, code lost:
        r0.close();
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0329 -> B:47:0x0217). Please submit an issue!!! */
    /* renamed from: y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.SparseBooleanArray m31587y0(java.lang.String r10, boolean r11, boolean r12, java.lang.Long r13, java.lang.String r14, boolean r15, boolean r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p231g.AbstractC6237o.m31587y0(java.lang.String, boolean, boolean, java.lang.Long, java.lang.String, boolean, boolean, boolean):android.util.SparseBooleanArray");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x020a -> B:37:0x015c). Please submit an issue!!! */
    /* renamed from: z0 */
    public final void m31586z0(String str, boolean z) {
        AbstractC6149q abstractC6149q;
        Throwable th;
        SparseArray sparseArray = new SparseArray(5);
        SparseArray sparseArray2 = new SparseArray(5);
        try {
            Cursor query = this.f20967a.query(C8582g0.m28295y(), null, str, null, null);
            if (query == null) {
                return;
            }
            abstractC6149q = this.f20975i.mo31778n(query);
            while (true) {
                try {
                    int i = 0;
                    if (abstractC6149q.moveToNext()) {
                        int mo31738R0 = abstractC6149q.mo31738R0();
                        TransportInfo mo31737h0 = abstractC6149q.mo31737h0();
                        AbstractC6704q mo30551k = ((AbstractC6708t) this.f20970d.get()).mo30551k(mo31738R0, z, null);
                        if (mo30551k == null) {
                            AssertionUtil.OnlyInDebug.fail("Unsupported transport type: " + mo31738R0);
                        } else {
                            C6713w c6713w = (C6713w) sparseArray.get(mo31738R0);
                            C6713w c6713w2 = c6713w;
                            if (c6713w == null) {
                                c6713w2 = mo30551k.mo15166w();
                                sparseArray.put(mo31738R0, c6713w2);
                                sparseArray2.put(mo31738R0, this.f20954A.mo14285j());
                            }
                            List<C6713w.C6715b> list = c6713w2.f22102b;
                            if (list != null) {
                                i = list.size();
                            }
                            if (!mo30551k.mo15164y(mo31737h0, c6713w2)) {
                                List<C6713w.C6715b> list2 = c6713w2.f22102b;
                                if (list2 != null) {
                                    int size = list2.size();
                                    while (i < size) {
                                        size--;
                                        c6713w2.f22102b.remove(size);
                                    }
                                }
                            } else {
                                b bVar = new b(abstractC6149q.mo31739C1());
                                if (((b) sparseArray2.get(mo31738R0)).f(bVar)) {
                                    sparseArray2.put(mo31738R0, bVar);
                                }
                            }
                        }
                    } else {
                        try {
                            break;
                        } catch (IOException e) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (abstractC6149q != null) {
                        try {
                            abstractC6149q.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            }
            abstractC6149q.close();
            HashSet hashSet = new HashSet();
            int size2 = sparseArray.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AbstractC6704q mo30551k2 = ((AbstractC6708t) this.f20970d.get()).mo30551k(sparseArray.keyAt(i2), z, null);
                AssertionUtil.AlwaysFatal.isNotNull(mo30551k2, "Only known transports should by part of transactions");
                C6713w c6713w3 = (C6713w) sparseArray.valueAt(i2);
                if (mo30551k2.mo15175n(c6713w3) && mo30551k2.mo15173p(c6713w3)) {
                    mo30551k2.mo14986h((b) sparseArray2.get(mo30551k2.getType()));
                    hashSet.add(mo30551k2);
                }
            }
            if (hashSet.isEmpty()) {
                return;
            }
            m31651D0(true, hashSet);
        } catch (Throwable th3) {
            th = th3;
            abstractC6149q = null;
        }
    }
}
