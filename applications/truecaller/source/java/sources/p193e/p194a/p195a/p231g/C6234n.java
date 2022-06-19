package p193e.p194a.p195a.p231g;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.SparseBooleanArray;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import io.agora.rtc.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
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
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p1129p5.C19236j;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p230f1.C6063b;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p244k.AbstractC6690i;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p276p0.AbstractC7158b;
import p193e.p194a.p195a.p276p0.C7164e;
import p193e.p194a.p195a.p276p0.C7170k;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
import p193e.p194a.p437c.p552i.p560h.AbstractC10347a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10419a;
import p193e.p194a.p437c.p552i.p569m.AbstractC10435f;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.f0;
import s1.z.c.m;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.g.n */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/n.class */
public final class C6234n extends AbstractC6237o implements AbstractC6233m {

    /* renamed from: W */
    public final ContentResolver f20932W;

    /* renamed from: X */
    public final AbstractC6392i0 f20933X;

    /* renamed from: Y */
    public final AbstractC6115g f20934Y;

    /* renamed from: Z */
    public final a<AbstractC6708t> f20935Z;

    /* renamed from: a0 */
    public final a<AbstractC19854f<AbstractC7343q>> f20936a0;

    /* renamed from: b0 */
    public final a<AbstractC7290a> f20937b0;

    /* renamed from: c0 */
    public final a<C20592g> f20938c0;

    /* renamed from: d0 */
    public final AbstractC6241p f20939d0;

    /* renamed from: e0 */
    public final a<AbstractC19230g> f20940e0;

    /* renamed from: f0 */
    public final AbstractC18951b0 f20941f0;

    /* renamed from: g0 */
    public final a<AbstractC8541a> f20942g0;

    /* renamed from: e.a.a.g.n$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/n$a.class */
    public static final class C6235a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C6235a f20943b = new C6235a();

        public C6235a() {
            super(1);
        }

        /* renamed from: d */
        public Object m31659d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "rawId");
            return '\'' + str + '\'';
        }
    }

    /* renamed from: e.a.a.g.n$b */
    /* loaded from: classes6-dex2jar.jar:e/a/a/g/n$b.class */
    public static final class C6236b extends m implements l<Long, CharSequence> {

        /* renamed from: b */
        public static final C6236b f20944b = new C6236b();

        public C6236b() {
            super(1);
        }

        /* renamed from: d */
        public /* bridge */ /* synthetic */ Object m31658d(Object obj) {
            ((Number) obj).longValue();
            return "?";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6234n(ContentResolver contentResolver, @Named("cache_dir") File file, @Named("storage_dirs") File[] fileArr, AbstractC6392i0 abstractC6392i0, AbstractC6115g abstractC6115g, a<AbstractC19854f<AbstractC6523c0>> aVar, a<AbstractC6708t> aVar2, a<AbstractC6690i> aVar3, a<AbstractC19854f<AbstractC7343q>> aVar4, Provider<AbstractC6691j> provider, Provider<AbstractC6694m> provider2, AbstractC6106b0 abstractC6106b0, AbstractC7201a abstractC7201a, AbstractC19109u1 abstractC19109u1, AbstractC19247m0 abstractC19247m0, a<AbstractC7290a> aVar5, a<C20592g> aVar6, a<AbstractC18420r1> aVar7, a<C7170k> aVar8, a<C6063b> aVar9, AbstractC6241p abstractC6241p, a<AbstractC10435f> aVar10, a<AbstractC9691j> aVar11, a<AbstractC19230g> aVar12, a<AbstractC7156p> aVar13, a<AbstractC10315a> aVar14, a<AbstractC10419a> aVar15, AbstractC18951b0 abstractC18951b0, a<AbstractC8541a> aVar16, AbstractC19510i0 abstractC19510i0, a<AbstractC18094f> aVar17, C19236j c19236j, C7164e c7164e, AbstractC10347a abstractC10347a, AbstractC10028o abstractC10028o, boolean z, a<AbstractC7158b> aVar18) {
        super(contentResolver, file, fileArr, abstractC6392i0, abstractC6115g, aVar, aVar2, aVar3, provider, provider2, abstractC6106b0, abstractC7201a, abstractC19109u1, abstractC19247m0, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12, aVar13, aVar14, abstractC18951b0, aVar15, abstractC19510i0, aVar17, aVar4, c19236j, c7164e, abstractC10347a, abstractC10028o, z, aVar18);
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(file, "cacheDir");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC6115g, "cursorsFactory");
        s1.z.c.l.e(aVar, "imReactionManager");
        s1.z.c.l.e(aVar2, "transportManager");
        s1.z.c.l.e(aVar3, "messagesProcessor");
        s1.z.c.l.e(aVar4, "notificationsManager");
        s1.z.c.l.e(provider, "threadInfoCache");
        s1.z.c.l.e(provider2, "participantCache");
        s1.z.c.l.e(abstractC6106b0, "batchExecutor");
        s1.z.c.l.e(abstractC7201a, "spamSearchTrigger");
        s1.z.c.l.e(abstractC19109u1, "entityCleaner");
        s1.z.c.l.e(abstractC19247m0, "traceUtil");
        s1.z.c.l.e(aVar5, "messagesMonitor");
        s1.z.c.l.e(aVar6, "featuresRegistry");
        s1.z.c.l.e(aVar7, "messagesBackupManager");
        s1.z.c.l.e(aVar8, "unclassifiedMessagesSyncHelper");
        s1.z.c.l.e(aVar9, "historyEventsMessagesStorageHelper");
        s1.z.c.l.e(abstractC6241p, "queryHelper");
        s1.z.c.l.e(aVar10, "syncManager");
        s1.z.c.l.e(aVar11, "insightsStatusProvider");
        s1.z.c.l.e(aVar12, "deviceInfoUtil");
        s1.z.c.l.e(aVar13, "defaultSmsPackageCache");
        s1.z.c.l.e(aVar14, "insightsEnrichmentManager");
        s1.z.c.l.e(aVar15, "insightsDuplicateManager");
        s1.z.c.l.e(abstractC18951b0, "dateHelper");
        s1.z.c.l.e(aVar16, "coreSettings");
        s1.z.c.l.e(abstractC19510i0, "messageAnalytics");
        s1.z.c.l.e(aVar17, "messageLinksHelper");
        s1.z.c.l.e(c19236j, "fileUtils");
        s1.z.c.l.e(c7164e, "insightsImSyncHelper");
        s1.z.c.l.e(abstractC10347a, "insightsMigrationManager");
        s1.z.c.l.e(abstractC10028o, "insightConfig");
        s1.z.c.l.e(aVar18, "categorizerManager");
        this.f20932W = contentResolver;
        this.f20933X = abstractC6392i0;
        this.f20934Y = abstractC6115g;
        this.f20935Z = aVar2;
        this.f20936a0 = aVar4;
        this.f20937b0 = aVar5;
        this.f20938c0 = aVar6;
        this.f20939d0 = abstractC6241p;
        this.f20940e0 = aVar12;
        this.f20941f0 = abstractC18951b0;
        this.f20942g0 = aVar16;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: A */
    public AbstractC19891x<Boolean> mo31680A(long j) {
        boolean z = true;
        if (this.f20932W.delete(C8582g0.m28295y(), "conversation_id =? AND (status & 128) = 128", new String[]{String.valueOf(j)}) <= 0) {
            z = false;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h, "Promise.wrap(result > 0)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: E */
    public void mo31679E(List<Long> list) {
        s1.z.c.l.e(list, "conversationIds");
        if (list.isEmpty()) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C(" conversation_id IN (");
        C22128a.m8666T0(m8728C, i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6236b.f20944b, 31), ")\n            AND transport = 2\n            AND status = 1\n            AND ((", "\n            info1 = 3 \n            AND info2 != 3 \n            AND date_sent < ?\n        ", ") OR (");
        String m8618h = C22128a.m8618h(m8728C, "\n            info1 != 3 \n            AND info2 != 3 \n            AND date_sent < ?\n        ", "))\n        ");
        long currentTimeMillis = System.currentTimeMillis();
        TimeUnit timeUnit = TimeUnit.MINUTES;
        long millis = timeUnit.toMillis(((C20592g) this.f20938c0.get()).m10975b0().mo10939d(60L));
        long currentTimeMillis2 = System.currentTimeMillis();
        long millis2 = timeUnit.toMillis(((C20592g) this.f20938c0.get()).m10973c0().mo10939d(720L));
        ContentResolver contentResolver = this.f20932W;
        Uri m28295y = C8582g0.m28295y();
        ContentValues contentValues = new ContentValues();
        contentValues.put("info16", (Integer) 0);
        f0 f0Var = new f0(3);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Number number : list) {
            arrayList.add(String.valueOf(number.longValue()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        f0Var.a(array);
        f0Var.a.add(String.valueOf(currentTimeMillis - millis));
        f0Var.a.add(String.valueOf(currentTimeMillis2 - millis2));
        contentResolver.update(m28295y, contentValues, m8618h, (String[]) f0Var.a.toArray(new String[f0Var.b()]));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: G */
    public void mo31678G() {
        ContentResolver contentResolver = this.f20932W;
        Uri m28295y = C8582g0.m28295y();
        ContentValues contentValues = new ContentValues();
        contentValues.put("category", (Integer) 3);
        contentResolver.update(m28295y, contentValues, "category = 4", null);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: H */
    public AbstractC19891x<Boolean> mo31677H(long j, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(UpdateKey.STATUS, (Integer) 9);
        boolean z = this.f20932W.update(C8582g0.m28295y(), contentValues, "_id =? AND (status & 128) = 128", new String[]{String.valueOf(j)}) > 0;
        if (z) {
            m31607k(true, i.y0(Integer.valueOf(i)));
        }
        ((AbstractC7290a) this.f20937b0.get()).mo29847a(false, i);
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h, "Promise.wrap(updated)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: K */
    public AbstractC19891x<SparseBooleanArray> mo31676K(boolean z, List<String> list) {
        s1.z.c.l.e(list, "rawIds");
        if (list.isEmpty()) {
            AbstractC19891x<SparseBooleanArray> m11834h = AbstractC19891x.m11834h(new SparseBooleanArray());
            s1.z.c.l.d(m11834h, "Promise.wrap(SparseBooleanArray())");
            return m11834h;
        }
        AbstractC19891x<SparseBooleanArray> m11834h2 = AbstractC19891x.m11834h(m31605l0(C22128a.m8630e(C22128a.m8696K("transport = 2 AND ", "raw_id IN ("), i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6235a.f20943b, 31), ')'), z, m31608j0()));
        s1.z.c.l.d(m11834h2, "Promise.wrap(deleteMessa…Entities, canWriteSms()))");
        return m11834h2;
    }

    /* renamed from: O0 */
    public final String m31675O0(Message message) {
        String str;
        Participant participant = message.f13382c;
        if (participant.f11569b == 4) {
            String str2 = participant.f11572e;
            s1.z.c.l.d(str2, "participant.normalizedAddress");
            ContentResolver contentResolver = this.f20932W;
            Uri m28338C = C8582g0.m28338C();
            s1.z.c.l.d(m28338C, "ImGroupInfoTable.getContentUri()");
            str = C19286f.m13696H(contentResolver, m28338C, "title", "im_group_id = ?", new String[]{str2}, null, 16);
        } else {
            str = null;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: R */
    public AbstractC19891x<Boolean> mo31674R(Conversation[] conversationArr, boolean z) {
        ContentProviderOperation contentProviderOperation;
        s1.z.c.l.e(conversationArr, "conversations");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Conversation conversation : conversationArr) {
            long j = conversation.f13199a;
            int i = conversation.f13216r;
            int i2 = conversation.f13218t;
            ContentValues contentValues = new ContentValues();
            contentValues.put("pinned_date", Long.valueOf((z ? ((e) this.f20941f0.mo14285j()).a : false) == true ? 1L : 0L));
            if (i2 == 0) {
                contentProviderOperation = ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValues(contentValues).withSelection("conversation_id = ? AND  filter = ?", new String[]{String.valueOf(j), String.valueOf(1)}).build();
                s1.z.c.l.d(contentProviderOperation, "ContentProviderOperation…\n                .build()");
            } else {
                contentProviderOperation = ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValues(contentValues).withSelection("conversation_id = ? AND  (filter = ? OR filter = ?)", new String[]{String.valueOf(j), String.valueOf(1), String.valueOf(i)}).build();
                s1.z.c.l.d(contentProviderOperation, "ContentProviderOperation…\n                .build()");
            }
            arrayList.add(contentProviderOperation);
        }
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        s1.z.c.l.d(m31602n0, "executeOperations(operations)");
        boolean z2 = false;
        if (m31602n0.length == 0) {
            z2 = true;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(!z2));
        s1.z.c.l.d(m11834h, "Promise.wrap(executeOper…operations).isNotEmpty())");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: S */
    public void mo31673S(long j) {
        ContentResolver contentResolver = this.f20932W;
        Uri m28305o = C8582g0.m28305o(2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("info21", (Integer) 1);
        contentResolver.update(m28305o, contentValues, "_id=" + j, null);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: c0 */
    public void mo31672c0(long j, int i, int i2) {
        ContentProviderOperation m31588x0 = m31588x0(j, i, i2, true);
        s1.z.c.l.d(m31588x0, "markConversationUnread(c…, filter, criteria, true)");
        m31602n0(i.e(new ContentProviderOperation[]{m31588x0}));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo31671e() {
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.TRUE);
        s1.z.c.l.d(m11834h, "Promise.wrap(true)");
        return m11834h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo31670f(Conversation[] conversationArr, boolean z) {
        String[] strArr;
        String str;
        s1.z.c.l.e(conversationArr, "conversations");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        for (Conversation conversation : conversationArr) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("archived_date", Long.valueOf((z ? ((e) this.f20941f0.mo14285j()).a : false) == true ? 1L : 0L));
            if (z) {
                contentValues.put("pinned_date", (Integer) 0);
            }
            if (conversation.f13218t == 0) {
                strArr = new String[]{String.valueOf(conversation.f13199a), String.valueOf(1)};
                str = "conversation_id = ? AND filter = ?";
            } else {
                strArr = new String[]{String.valueOf(conversation.f13199a), String.valueOf(1), String.valueOf(conversation.f13216r)};
                str = "conversation_id = ? AND (filter = ? OR filter = ?)";
            }
            ContentProviderOperation build = ContentProviderOperation.newUpdate(C17891a1.C17905n.m15550a()).withValues(contentValues).withSelection(str, strArr).build();
            s1.z.c.l.d(build, "ContentProviderOperation…\n                .build()");
            arrayList.add(build);
        }
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        s1.z.c.l.d(m31602n0, "executeOperations(operations)");
        boolean z2 = false;
        if (m31602n0.length == 0) {
            z2 = true;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(!z2));
        s1.z.c.l.d(m11834h, "Promise.wrap(executeOper…operations).isNotEmpty())");
        return m11834h;
    }

    /* JADX WARN: Type inference failed for: r0v275, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    @Override // p193e.p194a.p195a.p231g.AbstractC6237o, p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: i */
    public void mo31611i() {
        C10263b.m26509a("notifyMessages called");
        Object obj = this.f20935Z.get();
        s1.z.c.l.d(obj, "transportManager.get()");
        List<Integer> mo30553i = ((AbstractC6708t) obj).mo30553i();
        s1.z.c.l.d(mo30553i, "it");
        if (!(!mo30553i.isEmpty())) {
            mo30553i = null;
        }
        if (mo30553i == null) {
            C10263b.m26509a("No transports to notify");
            return;
        }
        AbstractC6149q query = this.f20932W.query(C17891a1.C17897f.m15702a(), new String[]{"_id"}, C22128a.m8575r2("muted >= ", ((e) this.f20941f0.mo14285j()).a, " OR muted = -1"), null, null);
        if (query != null) {
            try {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                while (query.moveToNext()) {
                    s1.z.c.l.d(query, "cursor");
                    linkedHashSet.add(Long.valueOf(C19291g.m13632E0(query, "_id")));
                }
                if (!linkedHashSet.isEmpty()) {
                    ContentResolver contentResolver = this.f20932W;
                    Uri m28295y = C8582g0.m28295y();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("seen", (Integer) 1);
                    contentResolver.update(m28295y, contentValues, "conversation_id IN (" + i.O(linkedHashSet, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62) + ") AND transport IN (" + i.O(mo30553i, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62) + ") AND seen = 0", null);
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        ContentResolver contentResolver2 = this.f20932W;
        Uri m28294z = C8582g0.m28294z();
        ?? mo31040l1 = this.f20933X.mo31040l1();
        char c = mo31040l1;
        if (mo31040l1 == 0) {
            c = mo31040l1;
            if (m31608j0()) {
                c = Math.max(((AbstractC8541a) this.f20942g0.get()).getLong("profileVerificationDate", 0L), ((AbstractC19230g) this.f20940e0.get()).mo13795b());
                this.f20933X.mo31196I1(c);
            }
        }
        boolean isEnabled = ((C20592g) this.f20938c0.get()).m10963h0().isEnabled();
        s1.z.c.l.e(mo30553i, "transportsToNotify");
        StringBuilder m8728C = C22128a.m8728C("seen = 0");
        if (isEnabled) {
            m8728C.append(" AND category != 3");
        }
        if (c > 0) {
            StringBuilder m8728C2 = C22128a.m8728C(" AND (");
            ListIterator<Integer> listIterator = mo30553i.listIterator();
            StringBuilder sb = new StringBuilder();
            while (listIterator.hasNext()) {
                int intValue = listIterator.next().intValue();
                sb.append("(");
                sb.append("transport=" + intValue);
                if (intValue == 0 || intValue == 1) {
                    sb.append(" AND date > " + ((long) c));
                }
                sb.append(")");
                if (listIterator.hasNext()) {
                    sb.append(" OR ");
                }
            }
            String sb2 = sb.toString();
            s1.z.c.l.d(sb2, "StringBuilder().apply(builderAction).toString()");
            m8728C2.append(sb2);
            m8728C2.append(')');
            m8728C.append(m8728C2.toString());
        } else {
            StringBuilder m8728C3 = C22128a.m8728C(" AND transport IN (");
            m8728C3.append(i.O(mo30553i, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62));
            m8728C3.append(')');
            m8728C.append(m8728C3.toString());
        }
        m8728C.append(" OR (send_schedule_date > 0 AND (status & 8 != 0 OR status = 1)) ");
        String sb3 = m8728C.toString();
        s1.z.c.l.d(sb3, "StringBuilder().apply(builderAction).toString()");
        Cursor query2 = contentResolver2.query(m28294z, null, sb3, null, "date DESC LIMIT 25");
        if (query2 == null) {
            C10263b.m26509a("No cursor returned");
            return;
        }
        query = this.f20934Y.mo31783i(query2);
        if (query == null) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            while (query.moveToNext()) {
                s1.z.c.l.d(query, "messageCursor");
                Message message = query.getMessage();
                s1.z.c.l.d(message, "messageCursor.message");
                int i = message.f13386g & 1;
                C10263b.m26509a("Message: address: " + message.f13398s + " || status: " + i);
                if (i == 0) {
                    if (((AbstractC6708t) this.f20935Z.get()).mo30559c(message) != 2) {
                        arrayList.add(message);
                        C10263b.m26509a("Message added id: " + message.f13380a);
                    } else {
                        C10263b.m26509a("Message not loaded yet id: " + message.f13380a);
                    }
                } else if ((message.f13386g & 8) == 8) {
                    b bVar = message.f13385f;
                    s1.z.c.l.d(bVar, "message.sendScheduleDate");
                    if (((e) bVar).a > 0) {
                        ((AbstractC7343q) ((AbstractC19854f) this.f20936a0.get()).mo11854a()).mo29772e(message, m31675O0(message));
                        mo31663u(message.f13380a, 0L);
                    } else {
                        m31640L(message.f13380a);
                        ((AbstractC7343q) ((AbstractC19854f) this.f20936a0.get()).mo11854a()).mo29764m(message, m31675O0(message));
                    }
                } else {
                    b bVar2 = message.f13385f;
                    s1.z.c.l.d(bVar2, "message.sendScheduleDate");
                    if (((e) bVar2).a > 0) {
                        ((AbstractC7343q) ((AbstractC19854f) this.f20936a0.get()).mo11854a()).mo29769h(message, m31675O0(message));
                        mo31663u(message.f13380a, 0L);
                    } else {
                        arrayList.add(message);
                    }
                }
            }
            C10263b.m26509a("Unseen messages: " + arrayList.size());
            ((AbstractC7343q) ((AbstractC19854f) this.f20936a0.get()).mo11854a()).mo29767j(this.f20939d0.mo31583b(arrayList));
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: l */
    public AbstractC19891x<Boolean> mo31669l(long j, ContentValues contentValues) {
        s1.z.c.l.e(contentValues, "values");
        boolean z = true;
        if (this.f20932W.update(C17891a1.C17897f.m15702a(), contentValues, "_id = ?", new String[]{String.valueOf(j)}) <= 0) {
            z = false;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h, "contentResolver.update(\n… { Promise.wrap(it > 0) }");
        return m11834h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r2v2 */
    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: n */
    public AbstractC19891x<Boolean> mo31668n(long[] jArr, boolean z) {
        s1.z.c.l.e(jArr, "messageIds");
        String m31593u0 = m31593u0(jArr);
        s1.z.c.l.d(m31593u0, "getSelectionByMessageIds(messageIds)");
        ContentResolver contentResolver = this.f20932W;
        Uri m28295y = C8582g0.m28295y();
        ContentValues contentValues = new ContentValues();
        contentValues.put("important", Integer.valueOf(z ? 1 : 0));
        contentValues.put("important_date", Long.valueOf((z ? ((e) this.f20941f0.mo14285j()).a : false) == true ? 1L : 0L));
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(contentResolver.update(m28295y, contentValues, m31593u0, null) > 0));
        s1.z.c.l.d(m11834h, "Promise.wrap(result > 0)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: o */
    public void mo31667o(long j) {
        ContentResolver contentResolver = this.f20932W;
        Uri m28305o = C8582g0.m28305o(2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("info16", (Integer) 1);
        contentResolver.update(m28305o, contentValues, "_id=" + j, null);
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: q */
    public AbstractC19891x<Boolean> mo31666q(long j, int i) {
        ContentResolver contentResolver = this.f20932W;
        Uri m15702a = C17891a1.C17897f.m15702a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("load_events_mode", Integer.valueOf(i));
        boolean z = true;
        if (contentResolver.update(m15702a, contentValues, "_id=?", new String[]{String.valueOf(j)}) <= 0) {
            z = false;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h, "Promise.wrap(\n          …          ) > 0\n        )");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: r */
    public AbstractC19891x<Boolean> mo31665r(ArrayList<ContentProviderOperation> arrayList) {
        s1.z.c.l.e(arrayList, "operations");
        ContentProviderResult[] m31602n0 = m31602n0(arrayList);
        s1.z.c.l.d(m31602n0, "executeOperations(operations)");
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(!(m31602n0.length == 0)));
        s1.z.c.l.d(m11834h, "Promise.wrap(result)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: s */
    public void mo31664s(long j, long[] jArr, String str) {
        s1.z.c.l.e(jArr, "messageIds");
        s1.z.c.l.e(str, "analyticsContext");
        m31630U(str, true, false, new long[]{j}, Arrays.copyOf(jArr, jArr.length));
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: u */
    public AbstractC19891x<Boolean> mo31663u(long j, long j2) {
        ContentResolver contentResolver = this.f20932W;
        Uri m28340A = C8582g0.m28340A(j);
        ContentValues contentValues = new ContentValues();
        contentValues.put("send_schedule_date", Long.valueOf(j2));
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(contentResolver.update(m28340A, contentValues, null, null) > 0));
        s1.z.c.l.d(m11834h, "Promise.wrap(updatedRows > 0)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: v */
    public AbstractC19891x<Long> mo31662v(Message message, Participant[] participantArr, long j) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(participantArr, "participants");
        AssertionUtil.isTrue(message.f13390k == 3, new String[0]);
        AssertionUtil.isTrue(!(participantArr.length == 0), new String[0]);
        List<Entity> m31606k0 = m31606k0(message.f13394o, false);
        ArrayList<ContentProviderOperation> m8670S = C22128a.m8670S(m31606k0, "copyFilesToCache(message.entities, false)");
        int m25969e1 = C10480a.m25969e1(m8670S, participantArr[0]);
        int length = participantArr.length;
        for (int i = 1; i < length; i++) {
            C10480a.m25969e1(m8670S, participantArr[i]);
        }
        int m25974d1 = C10480a.m25974d1(m8670S, C25225a.m3887j3(participantArr), message.f13365A);
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28295y());
        s1.z.c.l.d(newInsert, "ContentProviderOperation…gesTable.getContentUri())");
        newInsert.withValueBackReference("participant_id", m25969e1);
        newInsert.withValueBackReference("conversation_id", m25974d1);
        newInsert.withValue("date", Long.valueOf(((e) this.f20941f0.mo14285j()).a));
        newInsert.withValue(UpdateKey.STATUS, Integer.valueOf((int) Constants.ERR_WATERMARK_READ));
        newInsert.withValue("seen", 1);
        newInsert.withValue("read", 1);
        newInsert.withValue("locked", 0);
        newInsert.withValue("transport", 3);
        newInsert.withValue("scheduled_transport", Integer.valueOf(message.f13391l));
        newInsert.withValue("hidden_number", Boolean.valueOf(message.f13365A));
        newInsert.withValue("category", 2);
        newInsert.withValue("reply_to_msg_id", -1L);
        newInsert.withValue("sim_token", message.f13392m);
        newInsert.withValue("send_schedule_date", Long.valueOf(j));
        int size = m8670S.size();
        m8670S.add(newInsert.build());
        for (Entity entity : m31606k0) {
            s1.z.c.l.d(entity, "it");
            m8670S.add(C10480a.m25992Z2(entity, size));
        }
        Mention[] mentionArr = message.f13395p;
        s1.z.c.l.d(mentionArr, "message.mentions");
        for (Mention mention : mentionArr) {
            s1.z.c.l.d(mention, "it");
            m8670S.add(C10480a.m25987a3(mention, size));
        }
        ContentProviderResult[] m31602n0 = m31602n0(m8670S);
        s1.z.c.l.d(m31602n0, "executeOperations(operations)");
        if (m31602n0.length == 0) {
            AbstractC19891x<Long> m11834h = AbstractC19891x.m11834h(-1L);
            s1.z.c.l.d(m11834h, "Promise.wrap(-1L)");
            return m11834h;
        }
        Uri uri = m31602n0[size].uri;
        if (uri == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        AbstractC19891x<Long> m11834h2 = AbstractC19891x.m11834h(Long.valueOf(ContentUris.parseId(uri)));
        s1.z.c.l.d(m11834h2, "Promise.wrap(ContentUris…sult[messageIndex].uri)))");
        return m11834h2;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: y */
    public AbstractC19891x<Boolean> mo31661y(long j) {
        ContentResolver contentResolver = this.f20932W;
        Uri m28340A = C8582g0.m28340A(j);
        ContentValues contentValues = new ContentValues();
        boolean z = false;
        contentValues.put("edit_message_date", (Integer) 0);
        contentValues.put("edit_message_id", (Long) (-1L));
        if (contentResolver.update(m28340A, contentValues, null, null) > 0) {
            z = true;
        }
        AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.valueOf(z));
        s1.z.c.l.d(m11834h, "Promise.wrap(result > 0)");
        return m11834h;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6233m
    /* renamed from: z */
    public AbstractC19891x<SparseBooleanArray> mo31660z(boolean z, List<Message> list) {
        s1.z.c.l.e(list, "messages");
        if (list.isEmpty()) {
            AbstractC19891x<SparseBooleanArray> m11834h = AbstractC19891x.m11834h(new SparseBooleanArray());
            s1.z.c.l.d(m11834h, "Promise.wrap(SparseBooleanArray())");
            return m11834h;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Message message : list) {
            if (message.f13368D > 1) {
                arrayList2.add(Long.valueOf(message.f13372L));
            } else if (message.f13369E > 1) {
                arrayList3.add(Long.valueOf(message.f13373M));
            } else {
                arrayList.add(Long.valueOf(message.f13380a));
            }
        }
        StringBuilder m8728C = C22128a.m8728C("_id IN (");
        C22128a.m8669S0(m8728C, i.O(arrayList, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 63), ") OR ", "group_id_day IN (");
        C22128a.m8669S0(m8728C, i.O(arrayList2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 63), ") OR ", "group_id_minute IN (");
        AbstractC19891x<SparseBooleanArray> m11834h2 = AbstractC19891x.m11834h(m31605l0(C22128a.m8630e(m8728C, i.O(arrayList3, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 63), ')'), z, m31608j0()));
        s1.z.c.l.d(m11834h2, "Promise.wrap(deleteMessa…Entities, canWriteSms()))");
        return m11834h2;
    }
}
