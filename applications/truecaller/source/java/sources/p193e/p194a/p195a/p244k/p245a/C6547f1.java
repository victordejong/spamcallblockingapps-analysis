package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.a.a.a.v0.f.d;
import s1.e0.x;
import s1.u.i;
import s1.u.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.f1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f1.class */
public final class C6547f1 implements AbstractC6543e1 {

    /* renamed from: a */
    public final int f21611a;

    /* renamed from: b */
    public final int f21612b;

    /* renamed from: c */
    public final AbstractC19222c f21613c;

    /* renamed from: d */
    public final AbstractC6625s1 f21614d;

    /* renamed from: e */
    public final ContentResolver f21615e;

    /* renamed from: f */
    public final AbstractC8432l f21616f;

    /* renamed from: g */
    public final AbstractC19022f0 f21617g;

    /* renamed from: h */
    public final AbstractC6392i0 f21618h;

    /* renamed from: i */
    public final AbstractC19321u f21619i;

    /* renamed from: j */
    public final a<AbstractC19854f<AbstractC17419h>> f21620j;

    /* renamed from: k */
    public final AbstractC6489q f21621k;

    /* renamed from: e.a.a.k.a.f1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f1$a.class */
    public static final class C6548a extends m implements l<List<? extends String>, Collection<? extends String>> {

        /* renamed from: c */
        public final /* synthetic */ boolean f21623c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6548a(boolean z) {
            super(1);
            C6547f1.this = r4;
            this.f21623c = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Collection] */
        /* renamed from: d */
        public Object m30780d(Object obj) {
            List list = (List) obj;
            s1.z.c.l.e(list, "it");
            if (!this.f21623c) {
                list = C6547f1.m30783i(C6547f1.this, list);
            }
            return list;
        }
    }

    /* renamed from: e.a.a.k.a.f1$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f1$b.class */
    public static final class C6549b extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C6549b f21624b = new C6549b();

        public C6549b() {
            super(1);
        }

        /* renamed from: d */
        public Object m30779d(Object obj) {
            s1.z.c.l.e((String) obj, "it");
            return "?";
        }
    }

    /* renamed from: e.a.a.k.a.f1$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f1$c.class */
    public static final class C6550c extends m implements l<List<? extends String>, Collection<? extends String>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6550c() {
            super(1);
            C6547f1.this = r4;
        }

        /* renamed from: d */
        public Object m30778d(Object obj) {
            List list = (List) obj;
            s1.z.c.l.e(list, "it");
            return C6547f1.m30783i(C6547f1.this, list);
        }
    }

    @Inject
    public C6547f1(@Named("max_get_users_batch_size") int i, @Named("max_db_argument_count") int i2, AbstractC19222c abstractC19222c, AbstractC6625s1 abstractC6625s1, ContentResolver contentResolver, AbstractC8432l abstractC8432l, AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, AbstractC19321u abstractC19321u, a<AbstractC19854f<AbstractC17419h>> aVar, AbstractC6489q abstractC6489q) {
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC6625s1, "stubManager");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC8432l, "accountManager");
        s1.z.c.l.e(abstractC19022f0, "deviceManager");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19321u, "networkUtil");
        s1.z.c.l.e(aVar, "presenceManager");
        s1.z.c.l.e(abstractC6489q, "groupUtil");
        this.f21611a = i;
        this.f21612b = i2;
        this.f21613c = abstractC19222c;
        this.f21614d = abstractC6625s1;
        this.f21615e = contentResolver;
        this.f21616f = abstractC8432l;
        this.f21617g = abstractC19022f0;
        this.f21618h = abstractC6392i0;
        this.f21619i = abstractC19321u;
        this.f21620j = aVar;
        this.f21621k = abstractC6489q;
    }

    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* renamed from: i */
    public static final Collection m30783i(C6547f1 c6547f1, Collection collection) {
        ArrayList arrayList;
        Long valueOf = Long.valueOf(c6547f1.f21618h.mo31179L3());
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        char longValue = valueOf != null ? valueOf.longValue() : C6567h1.f21661a;
        long mo13819c = c6547f1.f21613c.mo13819c();
        ContentResolver contentResolver = c6547f1.f21615e;
        Uri m28297w = C8582g0.m28297w();
        String m8618h = C22128a.m8618h(C22128a.m8728C("normalized_number IN ("), i.O(collection, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6558g1.f21643b, 31), ")\n                AND (im_peer_id IS NOT NULL OR date BETWEEN ? AND ?)");
        Object[] array = ((ArrayList) i.m0(i.m0(collection, String.valueOf(mo13819c - longValue)), String.valueOf(mo13819c))).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor query = contentResolver.query(m28297w, new String[]{"normalized_number"}, m8618h, (String[]) array, null);
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            arrayList = s.a;
        }
        return i.Z(collection, arrayList);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo30791a(Collection<String> collection, boolean z) {
        s1.z.c.l.e(collection, "normalizedNumbers");
        if (!this.f21616f.mo28580d() || !this.f21619i.mo13429d()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
            s1.z.c.l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        Iterator it = x.b(d.W0(x.k(x.b(i.h(collection), this.f21612b), new C6548a(z))), this.f21611a).iterator();
        boolean z2 = true;
        while (true) {
            boolean z3 = z2;
            if (!it.hasNext()) {
                AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.valueOf(z3));
                s1.z.c.l.d(m11834h2, "normalizedNumbers.asSequ….let { Promise.wrap(it) }");
                return m11834h2;
            }
            z2 = z3 & m30781k((List) it.next(), true);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: b */
    public void mo30790b(String str, String str2, boolean z) {
        s1.z.c.l.e(str, "imPeerId");
        s1.z.c.l.e(str2, "normalizedNumber");
        m30782j(str, "normalized_number", str2, z);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: c */
    public void mo30789c(Collection<String> collection) {
        s1.z.c.l.e(collection, "normalizedNumbers");
        if (!this.f21616f.mo28580d() || !this.f21619i.mo13429d()) {
            return;
        }
        List r = x.r(d.W0(x.k(x.b(i.h(collection), this.f21612b), new C6550c())));
        if (r.isEmpty()) {
            return;
        }
        ((AbstractC17419h) ((AbstractC19854f) this.f21620j.get()).mo11854a()).mo16127e(r).mo11828g();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo30788d(String str, String str2) {
        s1.z.c.l.e(str, "imPeerId");
        this.f21615e.delete(C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_im_users").appendQueryParameter("im_peer_id", str).build(), null, null);
        if (str2 == null) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
            s1.z.c.l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        List m3962T1 = C25225a.m3962T1(str2);
        Intent intent = new Intent("com.truecaller.messaging.transport.im.ACTION_IM_USED_ADDED");
        intent.putStringArrayListExtra("phone_numbers", new ArrayList<>(m3962T1));
        this.f21617g.mo14236j(intent);
        boolean z = false;
        m30781k(i.e(new String[]{str2}), true);
        Cursor query = this.f21615e.query(C8582g0.m28297w(), new String[]{"im_peer_id"}, "normalized_number = ? AND im_peer_id NOT NULL", new String[]{str2}, null);
        if (query != null) {
            try {
                s1.z.c.l.d(query, "it");
                z = query.getCount() > 0;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h2, "Promise.wrap(hasImId(normalizedNumber))");
        return m11834h2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
        if (r14 != null) goto L7;
     */
    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.util.List<p193e.p194a.p195a.p244k.p245a.C6582k1>> mo30787e(long r11) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6547f1.mo30787e(long):e.a.r2.x");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: f */
    public void mo30786f(String str, String str2, boolean z) {
        s1.z.c.l.e(str, "imPeerId");
        s1.z.c.l.e(str2, "tcId");
        m30782j(str, "tc_id", str2, z);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: g */
    public void mo30785g(List<String> list) {
        s1.z.c.l.e(list, "numbers");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (String str : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("normalized_number", str);
            contentValues.put("join_im_notification", (Integer) 1);
            arrayList.add(contentValues);
        }
        Object[] array = arrayList.toArray(new ContentValues[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        this.f21615e.bulkInsert(C8582g0.m28297w(), (ContentValues[]) array);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6543e1
    /* renamed from: h */
    public AbstractC19891x<String> mo30784h(String str) {
        s1.z.c.l.e(str, "imPeerId");
        Cursor query = this.f21615e.query(C8582g0.m28297w(), new String[]{"normalized_number"}, "im_peer_id=?", new String[]{str}, null);
        String str2 = null;
        if (query != null) {
            try {
                str2 = query.moveToFirst() ? query.getString(0) : null;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        AbstractC19891x<String> m11834h = AbstractC19891x.m11834h(str2);
        s1.z.c.l.d(m11834h, "Promise.wrap(number)");
        return m11834h;
    }

    /* renamed from: j */
    public final void m30782j(String str, String str2, String str3, boolean z) {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        if (!z) {
            arrayList.add(ContentProviderOperation.newAssertQuery(C8582g0.m28297w()).withSelection(C22128a.m8725C2("im_peer_id = ? AND ", str2, " NOT NULL"), new String[]{str}).withExpectedCount(0).build());
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("im_peer_id", str);
        contentValues.put("fallback_name", this.f21621k.mo30871d(str));
        contentValues.put("date", Long.valueOf(this.f21613c.mo13819c()));
        contentValues.put(str2, str3);
        arrayList.add(ContentProviderOperation.newInsert(C8582g0.m28297w()).withValues(contentValues).build());
        try {
            ContentResolver contentResolver = this.f21615e;
            Uri uri = C17891a1.f50888a;
            s1.z.c.l.d(contentResolver.applyBatch("com.truecaller", arrayList), "contentResolver.applyBat…tAuthority(), operations)");
        } catch (OperationApplicationException e) {
        } catch (RemoteException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x021d, code lost:
        if (r15 != null) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02f4  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30781k(java.util.Collection<java.lang.String> r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6547f1.m30781k(java.util.Collection, boolean):boolean");
    }
}
