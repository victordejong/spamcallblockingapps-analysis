package p193e.p194a.p1041l0;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.provider.CallLog;
import com.amazon.device.ads.MraidCloseCommand;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.service.WidgetListProvider;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1041l0.p1042u.p1043d.C17374c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1187r2.AbstractC19849c0;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19892y;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p804h.p806b.AbstractC14627w;
import p193e.p194a.p804h.p836t0.AbstractC14738b;
import p193e.p194a.p997k3.AbstractC16451d;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p1000l.C16502j;
import p193e.p194a.p997k3.p998j.C16462c;
import p193e.p194a.p997k3.p998j.C16463d;
import s1.i;
import s1.s;
import s1.z.b.a;
import s1.z.c.j;
import s1.z.c.l;
import s1.z.c.m;
import w3.c.a.a.a.h;
/* renamed from: e.a.l0.a */
/* loaded from: classes6-dex2jar.jar:e/a/l0/a.class */
public final class C17308a implements AbstractC17352g {

    /* renamed from: a */
    public boolean f48542a;

    /* renamed from: b */
    public final HashMap<String, Contact> f48543b = new HashMap<>(100);

    /* renamed from: c */
    public final HashMap<Long, HistoryEvent> f48544c = new HashMap<>(100);

    /* renamed from: d */
    public final Context f48545d;

    /* renamed from: e */
    public final AbstractC14738b f48546e;

    /* renamed from: f */
    public final AbstractC8541a f48547f;

    /* renamed from: g */
    public final AbstractC17351f f48548g;

    /* renamed from: h */
    public final CallingSettings f48549h;

    /* renamed from: i */
    public final AbstractC11705f f48550i;

    /* renamed from: j */
    public final AbstractC16451d f48551j;

    /* renamed from: k */
    public final AbstractC17356k f48552k;

    /* renamed from: l */
    public final AbstractC16498f f48553l;

    /* renamed from: m */
    public final AbstractC14627w f48554m;

    /* renamed from: n */
    public final boolean f48555n;

    /* renamed from: e.a.l0.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$a.class */
    public static final class C17309a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ int f48556b;

        /* renamed from: c */
        public final /* synthetic */ Object f48557c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17309a(int i, Object obj) {
            super(0);
            this.f48556b = i;
            this.f48557c = obj;
        }

        public final Object invoke() {
            int i = this.f48556b;
            if (i == 0) {
                boolean z = true;
                if (!((C17308a) this.f48557c).f48547f.getBoolean("flash_disabled")) {
                    z = !((C17308a) this.f48557c).f48547f.getBoolean("featureFlash");
                }
                return Boolean.valueOf(z);
            } else if (i == 1) {
                return Boolean.valueOf(!((C17308a) this.f48557c).f48546e.isEnabled());
            } else {
                if (i != 2) {
                    throw null;
                }
                return Boolean.valueOf(!((C17308a) this.f48557c).f48550i.isEnabled());
            }
        }
    }

    /* renamed from: e.a.l0.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$b.class */
    public static final class C17310b<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17310b f48558a = new C17310b();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    /* renamed from: e.a.l0.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$c.class */
    public static final class C17311c<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17311c f48559a = new C17311c();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    /* renamed from: e.a.l0.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$d.class */
    public static final class C17312d<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17312d f48560a = new C17312d();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    /* renamed from: e.a.l0.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$e.class */
    public static final class C17313e<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17313e f48561a = new C17313e();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    /* renamed from: e.a.l0.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$f.class */
    public static final class C17314f<T> implements AbstractC19849c0<AbstractC17373b> {

        /* renamed from: a */
        public static final C17314f f48562a = new C17314f();

        @Override // p193e.p194a.p1187r2.AbstractC19849c0
        /* renamed from: a */
        public void mo11855a(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            l.e(abstractC17373b2, "it");
            abstractC17373b2.close();
        }
    }

    /* renamed from: e.a.l0.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/l0/a$g.class */
    public static final /* synthetic */ class C17315g extends j implements s1.z.b.l<Cursor, s> {

        /* renamed from: j */
        public static final C17315g f48563j = new C17315g();

        public C17315g() {
            super(1, AbstractC17373b.class, MraidCloseCommand.NAME, "close()V", 0);
        }

        /* renamed from: d */
        public Object m16252d(Object obj) {
            AbstractC17373b abstractC17373b = (AbstractC17373b) obj;
            l.e(abstractC17373b, "p1");
            abstractC17373b.close();
            return s.a;
        }
    }

    @Inject
    public C17308a(Context context, AbstractC14738b abstractC14738b, AbstractC8541a abstractC8541a, AbstractC17351f abstractC17351f, CallingSettings callingSettings, AbstractC11705f abstractC11705f, AbstractC16451d abstractC16451d, AbstractC17356k abstractC17356k, AbstractC16498f abstractC16498f, AbstractC14627w abstractC14627w, @Named("FEATURE_CALL_LOG_PERFORMANCE") boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14738b, "whatsAppInCallLog");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC17351f, "callLogUtil");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC11705f, "voip");
        l.e(abstractC16451d, "extraInfoReaderProvider");
        l.e(abstractC17356k, "dialerCacheManager");
        l.e(abstractC16498f, "numberProvider");
        l.e(abstractC14627w, "dialerPerformanceAnalytics");
        this.f48545d = context;
        this.f48546e = abstractC14738b;
        this.f48547f = abstractC8541a;
        this.f48548g = abstractC17351f;
        this.f48549h = callingSettings;
        this.f48550i = abstractC11705f;
        this.f48551j = abstractC16451d;
        this.f48552k = abstractC17356k;
        this.f48553l = abstractC16498f;
        this.f48554m = abstractC14627w;
        this.f48555n = z;
        if (!z) {
            return;
        }
        abstractC17356k.mo16189c(new C17353h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0195  */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.database.Cursor] */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.truecaller.data.entity.HistoryEvent> m16257A(com.truecaller.callhistory.data.FilterType r11, java.lang.Integer r12, android.os.CancellationSignal r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17308a.m16257A(com.truecaller.callhistory.data.FilterType, java.lang.Integer, android.os.CancellationSignal, boolean):java.util.List");
    }

    /* renamed from: B */
    public final String m16256B(String str) {
        return C17355j.m16197a(C17355j.m16197a(C17355j.m16197a(str, "tc_flag!=3", new C17309a(0, this)), "(subscription_component_name!='com.whatsapp' OR subscription_component_name IS NULL)", new C17309a(1, this)), "(subscription_component_name NOT IN('com.truecaller.voip.manager.VOIP','com.truecaller.voip.manager.GROUP_VOIP') OR subscription_component_name IS NULL)", new C17309a(2, this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0051, code lost:
        if (r11 != null) goto L8;
     */
    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b> mo16220a(java.lang.String r10, java.lang.Integer r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "normalizedNumber"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            boolean r0 = w3.c.a.a.a.h.j(r0)
            r1 = 0
            java.lang.String[] r1 = new java.lang.String[r1]
            com.truecaller.log.AssertionUtil.AlwaysFatal.isFalse(r0, r1)
            r0 = r9
            android.content.Context r0 = r0.f48545d     // Catch: android.database.sqlite.SQLiteException -> L9b
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: android.database.sqlite.SQLiteException -> L9b
            r12 = r0
            android.net.Uri r0 = p193e.p194a.p1053m0.C17891a1.C17901j.m15697d()     // Catch: android.database.sqlite.SQLiteException -> L9b
            r13 = r0
            r0 = r9
            java.lang.String r1 = "type IN (1,2,3)  AND normalized_number=?"
            java.lang.String r0 = r0.m16256B(r1)     // Catch: android.database.sqlite.SQLiteException -> L9b
            r14 = r0
            r0 = r11
            if (r0 == 0) goto L57
            r0 = r11
            int r0 = r0.intValue()     // Catch: android.database.sqlite.SQLiteException -> L9b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: android.database.sqlite.SQLiteException -> L9b
            r15 = r0
            r0 = r15
            r0.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9b
            r0 = r15
            java.lang.String r1 = "timestamp DESC LIMIT "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: android.database.sqlite.SQLiteException -> L9b
            r0 = r15
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: android.database.sqlite.SQLiteException -> L9b
            r0 = r15
            java.lang.String r0 = r0.toString()     // Catch: android.database.sqlite.SQLiteException -> L9b
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L57
            goto L5b
        L57:
            java.lang.String r0 = "timestamp DESC"
            r11 = r0
        L5b:
            r0 = r12
            r1 = r13
            r2 = 0
            r3 = r14
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: android.database.sqlite.SQLiteException -> L9b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: android.database.sqlite.SQLiteException -> L9b
            r5 = r11
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L9b
            r11 = r0
            r0 = r11
            if (r0 == 0) goto Lac
            r0 = r11
            r1 = 0
            r2 = 0
            r3 = 3
            e.a.l0.u.d.c r0 = p193e.p194a.p1066n.C18334g0.m15262I0(r0, r1, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L97
            r10 = r0
            e.a.l0.a$c r0 = p193e.p194a.p1041l0.C17308a.C17311c.f48559a     // Catch: android.database.sqlite.SQLiteException -> L97
            r14 = r0
            e.a.r2.y r0 = new e.a.r2.y     // Catch: android.database.sqlite.SQLiteException -> L97
            r13 = r0
            r0 = r13
            r1 = r10
            r2 = r14
            r0.<init>(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L97
            r0 = r13
            java.lang.String r1 = "wrap(cursor.toHistoryEventCursor()) { it.close() }"
            s1.z.c.l.d(r0, r1)     // Catch: android.database.sqlite.SQLiteException -> L97
            r0 = r13
            return r0
        L97:
            r10 = move-exception
            goto L9e
        L9b:
            r10 = move-exception
            r0 = 0
            r11 = r0
        L9e:
            r0 = r10
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            r0 = r11
            if (r0 == 0) goto Lac
            r0 = r11
            r0.close()
        Lac:
            r0 = 0
            e.a.r2.x r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(r0)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "wrap(null)"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17308a.mo16220a(java.lang.String, java.lang.Integer):e.a.r2.x");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x004b, code lost:
        if (r10 != null) goto L8;
     */
    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b> mo16219b(com.truecaller.data.entity.Contact r10, java.lang.Integer r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "contact"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            android.content.Context r0 = r0.f48545d     // Catch: android.database.sqlite.SQLiteException -> L97
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: android.database.sqlite.SQLiteException -> L97
            r12 = r0
            r0 = r10
            java.lang.Long r0 = r0.getId()     // Catch: android.database.sqlite.SQLiteException -> L97
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: android.database.sqlite.SQLiteException -> L97
            r13 = r0
            android.net.Uri r0 = p193e.p194a.p1053m0.C17891a1.C17901j.m15697d()     // Catch: android.database.sqlite.SQLiteException -> L97
            r14 = r0
            r0 = r9
            java.lang.String r1 = "type IN (1,2,3)  AND (history_aggregated_contact_id=? OR history_aggregated_contact_tc_id=?)"
            java.lang.String r0 = r0.m16256B(r1)     // Catch: android.database.sqlite.SQLiteException -> L97
            r15 = r0
            r0 = r11
            if (r0 == 0) goto L51
            r0 = r11
            int r0 = r0.intValue()     // Catch: android.database.sqlite.SQLiteException -> L97
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: android.database.sqlite.SQLiteException -> L97
            r10 = r0
            r0 = r10
            r0.<init>()     // Catch: android.database.sqlite.SQLiteException -> L97
            r0 = r10
            java.lang.String r1 = "timestamp DESC LIMIT "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: android.database.sqlite.SQLiteException -> L97
            r0 = r10
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: android.database.sqlite.SQLiteException -> L97
            r0 = r10
            java.lang.String r0 = r0.toString()     // Catch: android.database.sqlite.SQLiteException -> L97
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L51
            goto L55
        L51:
            java.lang.String r0 = "timestamp DESC"
            r10 = r0
        L55:
            r0 = r12
            r1 = r14
            r2 = 0
            r3 = r15
            r4 = 2
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: android.database.sqlite.SQLiteException -> L97
            r5 = r4
            r6 = 0
            r7 = r13
            r5[r6] = r7     // Catch: android.database.sqlite.SQLiteException -> L97
            r5 = r4
            r6 = 1
            r7 = r13
            r5[r6] = r7     // Catch: android.database.sqlite.SQLiteException -> L97
            r5 = r10
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L97
            r11 = r0
            r0 = r11
            if (r0 == 0) goto La8
            r0 = r11
            r1 = 0
            r2 = 0
            r3 = 3
            e.a.l0.u.d.c r0 = p193e.p194a.p1066n.C18334g0.m15262I0(r0, r1, r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L93
            r15 = r0
            e.a.l0.a$d r0 = p193e.p194a.p1041l0.C17308a.C17312d.f48560a     // Catch: android.database.sqlite.SQLiteException -> L93
            r12 = r0
            e.a.r2.y r0 = new e.a.r2.y     // Catch: android.database.sqlite.SQLiteException -> L93
            r10 = r0
            r0 = r10
            r1 = r15
            r2 = r12
            r0.<init>(r1, r2)     // Catch: android.database.sqlite.SQLiteException -> L93
            r0 = r10
            java.lang.String r1 = "wrap(cursor.toHistoryEventCursor()) { it.close() }"
            s1.z.c.l.d(r0, r1)     // Catch: android.database.sqlite.SQLiteException -> L93
            r0 = r10
            return r0
        L93:
            r10 = move-exception
            goto L9a
        L97:
            r10 = move-exception
            r0 = 0
            r11 = r0
        L9a:
            r0 = r10
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            r0 = r11
            if (r0 == 0) goto La8
            r0 = r11
            r0.close()
        La8:
            r0 = 0
            e.a.r2.x r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(r0)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "wrap(null)"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17308a.mo16219b(com.truecaller.data.entity.Contact, java.lang.Integer):e.a.r2.x");
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: c */
    public AbstractC19891x<Integer> mo16218c(List<? extends HistoryEvent> list) {
        l.e(list, "eventsToRestore");
        if (list.isEmpty()) {
            AbstractC19891x<Integer> m11834h = AbstractC19891x.m11834h(0);
            l.d(m11834h, "wrap(0)");
            return m11834h;
        }
        ContentResolver contentResolver = this.f48545d.getContentResolver();
        ContentValues[] contentValuesArr = new ContentValues[list.size()];
        int size = list.size();
        for (int i = 0; i < size; i++) {
            contentValuesArr[i] = C18334g0.m15266G0(list.get(i));
        }
        AbstractC19891x<Integer> m11834h2 = AbstractC19891x.m11834h(Integer.valueOf(contentResolver.bulkInsert(C17891a1.C17901j.m15699b(), contentValuesArr)));
        l.d(m11834h2, "wrap(insertedRows)");
        return m11834h2;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: d */
    public AbstractC19891x<HistoryEvent> mo16217d(Contact contact) {
        Throwable th;
        l.e(contact, AnalyticsConstants.CONTACT);
        Cursor cursor = null;
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "type=? AND history_aggregated_contact_id=?", new String[]{String.valueOf(2), String.valueOf(contact.getId())}, "timestamp DESC LIMIT 1");
            if (query != null) {
                try {
                    C17374c m15262I0 = C18334g0.m15262I0(query, null, false, 3);
                    if (m15262I0.moveToFirst()) {
                        AbstractC19891x<HistoryEvent> m11834h = AbstractC19891x.m11834h(m15262I0.mo16159n());
                        l.d(m11834h, "wrap(eventCursor.historyEvent)");
                        query.close();
                        return m11834h;
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            AbstractC19891x<HistoryEvent> m11834h2 = AbstractC19891x.m11834h(null);
            l.d(m11834h2, "wrap(null)");
            return m11834h2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: e */
    public void mo16216e(long j) {
        try {
            ContentResolver contentResolver = this.f48545d.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("new", (Integer) 0);
            contentValues.put("is_read", (Integer) 1);
            if (contentResolver.update(this.f48548g.mo16184b(), contentValues, "_id=?", new String[]{String.valueOf(j)}) == 0) {
                return;
            }
            contentValues.clear();
            contentValues.put("new", (Integer) 0);
            contentValues.put("is_read", (Integer) 1);
            contentResolver.update(C17891a1.C17901j.m15699b(), contentValues, null, null);
        } catch (RuntimeExecutionException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        } catch (IllegalArgumentException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        } catch (SecurityException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: f */
    public boolean mo16215f(HistoryEvent historyEvent) {
        Cursor cursor;
        Throwable th;
        l.e(historyEvent, "event");
        try {
            long j = historyEvent.f11541h;
            long j2 = 10000;
            cursor = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15699b(), null, "normalized_number=? AND action=4 AND timestamp>=? AND timestamp<=? AND (call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND tc_flag=0", new String[]{C17355j.m16196b(historyEvent.f11535b), String.valueOf(j - j2), String.valueOf(j + j2)}, "timestamp");
            if (cursor != null) {
                try {
                    C17374c c17374c = new C17374c(cursor, null, null, false);
                    while (c17374c.moveToNext()) {
                        HistoryEvent mo16159n = c17374c.mo16159n();
                        if (mo16159n != null && C18334g0.m15213o(historyEvent.f11550q, mo16159n.f11550q, historyEvent.f11535b, mo16159n.f11535b, historyEvent.f11541h, mo16159n.f11541h)) {
                            boolean z = historyEvent.f11551r == 5;
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("action", Integer.valueOf(historyEvent.f11551r));
                            contentValues.put("filter_source", historyEvent.f11554u);
                            contentValues.put("ringing_duration", Long.valueOf(historyEvent.f11543j));
                            contentValues.put("event_id", historyEvent.f11534a);
                            if (z) {
                                contentValues.putNull("call_log_id");
                            }
                            if (this.f48545d.getContentResolver().update(C17891a1.C17901j.m15699b(), contentValues, "_id=?", new String[]{String.valueOf(mo16159n.getId())}) <= 0) {
                                cursor.close();
                                return false;
                            }
                            historyEvent.setId(mo16159n.getId());
                            if (!z) {
                                historyEvent.f11540g = mo16159n.f11540g;
                            }
                            historyEvent.f11541h = mo16159n.f11541h;
                            historyEvent.f11542i = mo16159n.f11542i;
                            cursor.close();
                            return z;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            Uri insert = this.f48545d.getContentResolver().insert(C17891a1.C17901j.m15699b(), C18334g0.m15266G0(historyEvent));
            if (insert == null) {
                return false;
            }
            l.d(insert, "context.contentResolver.…Values()) ?: return false");
            long parseId = ContentUris.parseId(insert);
            if (parseId == -1) {
                return false;
            }
            historyEvent.setId(Long.valueOf(parseId));
            return true;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: g */
    public void mo16214g(long j) {
        try {
            ContentResolver contentResolver = this.f48545d.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("new", (Integer) 0);
            Uri m15699b = C17891a1.C17901j.m15699b();
            contentResolver.update(m15699b, contentValues, "timestamp<=" + j, null);
            contentValues.clear();
            contentValues.put("new", (Integer) 0);
            Uri mo16184b = this.f48548g.mo16184b();
            contentResolver.update(mo16184b, contentValues, "date<=" + j, null);
        } catch (RuntimeExecutionException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        } catch (IllegalArgumentException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        } catch (SecurityException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: h */
    public AbstractC19891x<HistoryEvent> mo16213h(String str) {
        Throwable th;
        l.e(str, "normalizedNumber");
        Cursor cursor = null;
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND type IN (1,2,3) AND normalized_number=?", new String[]{str}, "timestamp DESC LIMIT 1");
            if (query != null) {
                try {
                    C17374c m15262I0 = C18334g0.m15262I0(query, null, false, 3);
                    if (m15262I0.moveToFirst()) {
                        AbstractC19891x<HistoryEvent> m11834h = AbstractC19891x.m11834h(m15262I0.mo16159n());
                        l.d(m11834h, "wrap(eventCursor.historyEvent)");
                        query.close();
                        return m11834h;
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            AbstractC19891x<HistoryEvent> m11834h2 = AbstractC19891x.m11834h(null);
            l.d(m11834h2, "wrap(null)");
            return m11834h2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: i */
    public void mo16212i() {
        try {
            ContentResolver contentResolver = this.f48545d.getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("new", (Integer) 0);
            contentValues.put("is_read", (Integer) 1);
            contentResolver.update(C17891a1.C17901j.m15699b(), contentValues, "new=1 OR is_read=0", null);
            contentValues.clear();
            contentValues.put("new", (Integer) 0);
            contentValues.put("is_read", (Integer) 1);
            contentResolver.update(this.f48548g.mo16184b(), contentValues, null, null);
        } catch (RuntimeExecutionException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        } catch (IllegalArgumentException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        } catch (SecurityException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: j */
    public AbstractC19891x<List<HistoryEvent>> mo16211j(FilterType filterType, Integer num, CancellationSignal cancellationSignal) {
        l.e(filterType, "callTypeFilter");
        AbstractC19891x<List<HistoryEvent>> m11834h = AbstractC19891x.m11834h(m16257A(filterType, num, cancellationSignal, false));
        l.d(m11834h, "wrap(getCallHistoryListI…ncellationSignal, false))");
        return m11834h;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: k */
    public AbstractC19891x<AbstractC17373b> mo16210k(String str, long j, long j2, HistoryEventsScope historyEventsScope) {
        String str2;
        Cursor cursor;
        SQLiteException e;
        l.e(str, "normalizedNumber");
        l.e(historyEventsScope, "scope");
        int ordinal = historyEventsScope.ordinal();
        if (ordinal == 0) {
            str2 = "tc_flag!=3";
        } else if (ordinal != 1) {
            throw new IllegalArgumentException();
        } else {
            str2 = "tc_flag=3";
        }
        try {
            cursor = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "type IN (1,2,3)  AND normalized_number=? AND " + str2 + " AND timestamp >=? AND timestamp <=?", new String[]{C17355j.m16196b(str), String.valueOf(j), String.valueOf(j2)}, "timestamp DESC");
            if (cursor != null) {
                try {
                    C19892y c19892y = new C19892y(C18334g0.m15262I0(cursor, null, false, 3), C17313e.f48561a);
                    l.d(c19892y, "wrap(cursor.toHistoryEventCursor()) { it.close() }");
                    return c19892y;
                } catch (SQLiteException e2) {
                    e = e2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    AbstractC19891x<AbstractC17373b> m11834h = AbstractC19891x.m11834h(null);
                    l.d(m11834h, "wrap(null)");
                    return m11834h;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        }
        AbstractC19891x<AbstractC17373b> m11834h2 = AbstractC19891x.m11834h(null);
        l.d(m11834h2, "wrap(null)");
        return m11834h2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0052, code lost:
        if (r8 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006e, code lost:
        if (r8 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(null);
        s1.z.c.l.d(r0, "wrap(null)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0087  */
    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p1187r2.AbstractC19891x<java.lang.Integer> mo16209l() {
        /*
            r7 = this;
            r0 = r7
            android.content.Context r0 = r0.f48545d     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            android.net.Uri r1 = p193e.p194a.p1053m0.C17891a1.C17901j.m15697d()     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            r3 = r2
            r4 = 0
            java.lang.String r5 = "count(_id)"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            java.lang.String r3 = "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND is_read=0 AND type=3 AND action NOT IN (5,1,3,4)"
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L5e android.database.sqlite.SQLiteException -> L64
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L51
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L4d java.lang.Throwable -> L82
            if (r0 == 0) goto L51
            r0 = r8
            r9 = r0
            r0 = r8
            r1 = 0
            int r0 = r0.getInt(r1)     // Catch: android.database.sqlite.SQLiteException -> L4d java.lang.Throwable -> L82
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: android.database.sqlite.SQLiteException -> L4d java.lang.Throwable -> L82
            e.a.r2.x r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(r0)     // Catch: android.database.sqlite.SQLiteException -> L4d java.lang.Throwable -> L82
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            java.lang.String r1 = "wrap(cursor.getInt(0))"
            s1.z.c.l.d(r0, r1)     // Catch: android.database.sqlite.SQLiteException -> L4d java.lang.Throwable -> L82
            r0 = r8
            r0.close()
            r0 = r10
            return r0
        L4d:
            r10 = move-exception
            goto L67
        L51:
            r0 = r8
            if (r0 == 0) goto L74
        L55:
            r0 = r8
            r0.close()
            goto L74
        L5e:
            r8 = move-exception
            r0 = 0
            r9 = r0
            goto L83
        L64:
            r10 = move-exception
            r0 = 0
            r8 = r0
        L67:
            r0 = r8
            r9 = r0
            r0 = r10
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)     // Catch: java.lang.Throwable -> L82
            r0 = r8
            if (r0 == 0) goto L74
            goto L55
        L74:
            r0 = 0
            e.a.r2.x r0 = p193e.p194a.p1187r2.AbstractC19891x.m11834h(r0)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "wrap(null)"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            return r0
        L82:
            r8 = move-exception
        L83:
            r0 = r9
            if (r0 == 0) goto L8d
            r0 = r9
            r0.close()
        L8d:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17308a.mo16209l():e.a.r2.x");
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: m */
    public AbstractC19891x<Boolean> mo16208m(List<Long> list, List<Long> list2, HistoryEventsScope historyEventsScope) {
        String str;
        l.e(historyEventsScope, "scope");
        int ordinal = historyEventsScope.ordinal();
        if (ordinal == 0) {
            str = "type IN (1,2,3)  AND tc_flag != 3";
        } else if (ordinal == 1) {
            str = "tc_flag=3";
        } else if (ordinal != 2) {
            throw new i();
        } else {
            str = "type IN (1,2,3) ";
        }
        try {
            if (historyEventsScope != HistoryEventsScope.ONLY_FLASH_EVENTS) {
                Uri uri = CallLog.Calls.CONTENT_URI;
                l.d(uri, "CallLog.Calls.CONTENT_URI");
                m16254y(uri, "_id", list2, null);
            }
            Uri m15699b = C17891a1.C17901j.m15699b();
            l.d(m15699b, "HistoryTable.getContentUri()");
            m16254y(m15699b, "_id", list, str);
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.TRUE);
            l.d(m11834h, "wrap(true)");
            return m11834h;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(m11834h2, "wrap(false)");
            return m11834h2;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: n */
    public int mo16207n() {
        int i = -1;
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15698c(), new String[]{"COUNT(*)"}, "type in (1,2,3) and tc_flag=0 and duration=0 and call_log_id is null and subscription_component_name is null", null, null);
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Integer.valueOf(query.getInt(0)));
                }
            }
            C25225a.m4016G(query, null);
            Integer num = (Integer) s1.u.i.D(arrayList);
            if (num != null) {
                i = num.intValue();
            }
            return i;
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return -1;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: o */
    public AbstractC19891x<Integer> mo16206o(String str) {
        l.e(str, "normalizedNumber");
        AssertionUtil.AlwaysFatal.isFalse(h.j(str), new String[0]);
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), new String[]{VastIconXmlManager.DURATION}, m16256B("type IN (1,2,3)  AND normalized_number=?"), new String[]{str}, "timestamp DESC");
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(AbstractC19891x.m11834h(Integer.valueOf(query.getInt(0))));
                }
            }
            C25225a.m4016G(query, null);
            AbstractC19891x<Integer> abstractC19891x = (AbstractC19891x) s1.u.i.D(arrayList);
            if (abstractC19891x == null) {
                abstractC19891x = AbstractC19891x.m11834h(null);
                l.d(abstractC19891x, "wrap(null)");
            }
            return abstractC19891x;
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            AbstractC19891x<Integer> m11834h = AbstractC19891x.m11834h(null);
            l.d(m11834h, "wrap(null)");
            return m11834h;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: p */
    public List<HistoryEvent> mo16205p(FilterType filterType, Integer num, CancellationSignal cancellationSignal) {
        l.e(filterType, "callTypeFilter");
        return m16257A(filterType, num, cancellationSignal, true);
    }

    /* renamed from: q */
    public final HistoryEvent m16255q(Cursor cursor, C16449c c16449c) {
        return new C17374c(cursor, new C16463d(cursor, c16449c, C16502j.f46396b), new C16462c(cursor), true).mo16159n();
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: r */
    public AbstractC19891x<HistoryEvent> mo16204r(String str) {
        Throwable th;
        l.e(str, "tcId");
        Cursor cursor = null;
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND type IN (1,2,3)  AND action!=1 AND tc_id=?", new String[]{str}, "timestamp DESC LIMIT 1");
            if (query != null) {
                try {
                    C17374c m15262I0 = C18334g0.m15262I0(query, null, false, 3);
                    if (m15262I0.moveToFirst()) {
                        AbstractC19891x<HistoryEvent> m11834h = AbstractC19891x.m11834h(m15262I0.mo16159n());
                        l.d(m11834h, "wrap(eventCursor.historyEvent)");
                        query.close();
                        return m11834h;
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            AbstractC19891x<HistoryEvent> m11834h2 = AbstractC19891x.m11834h(null);
            l.d(m11834h2, "wrap(null)");
            return m11834h2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: s */
    public AbstractC19891x<AbstractC17373b> mo16203s() {
        SQLiteException e;
        Cursor cursor;
        try {
            cursor = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, m16256B("type IN (1,2,3) "), null, "timestamp DESC");
            if (cursor != null) {
                try {
                    C19892y c19892y = new C19892y(C18334g0.m15262I0(cursor, null, false, 3), C17310b.f48558a);
                    l.d(c19892y, "wrap(cursor.toHistoryEventCursor()) { it.close() }");
                    return c19892y;
                } catch (SQLiteException e2) {
                    e = e2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    AbstractC19891x<AbstractC17373b> m11834h = AbstractC19891x.m11834h(null);
                    l.d(m11834h, "wrap(null)");
                    return m11834h;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        }
        AbstractC19891x<AbstractC17373b> m11834h2 = AbstractC19891x.m11834h(null);
        l.d(m11834h2, "wrap(null)");
        return m11834h2;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: t */
    public void mo16202t() {
        try {
            this.f48545d.getContentResolver().delete(C17891a1.C17901j.m15699b(), "type IN (1,2,3)  AND tc_flag!=3", null);
            this.f48549h.putBoolean("initialCallLogSyncComplete", false);
            WidgetListProvider.m34742b(this.f48545d);
        } catch (SQLiteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: u */
    public AbstractC19891x<AbstractC17373b> mo16201u(long j) {
        SQLiteException e;
        Cursor cursor;
        try {
            cursor = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15697d(), null, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND new=1 AND type=3 AND action NOT IN (5,1,3,4) AND timestamp<=?", new String[]{String.valueOf(j)}, "timestamp DESC");
            if (cursor != null) {
                try {
                    C19892y c19892y = new C19892y(C18334g0.m15262I0(cursor, null, false, 3), new C17354i(C17315g.f48563j));
                    l.d(c19892y, "wrap(cursor.toHistoryEve…istoryEventCursor::close)");
                    return c19892y;
                } catch (SQLiteException e2) {
                    e = e2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    AbstractC19891x<AbstractC17373b> m11834h = AbstractC19891x.m11834h(null);
                    l.d(m11834h, "wrap(null)");
                    return m11834h;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        }
        AbstractC19891x<AbstractC17373b> m11834h2 = AbstractC19891x.m11834h(null);
        l.d(m11834h2, "wrap(null)");
        return m11834h2;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: v */
    public AbstractC19891x<AbstractC17373b> mo16200v(int i) {
        SQLiteException e;
        Cursor cursor;
        try {
            cursor = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15700a(i), null, null, null, null);
            if (cursor != null) {
                try {
                    C19892y c19892y = new C19892y(C18334g0.m15262I0(cursor, null, false, 3), C17314f.f48562a);
                    l.d(c19892y, "wrap(cursor.toHistoryEventCursor()) { it.close() }");
                    return c19892y;
                } catch (SQLiteException e2) {
                    e = e2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    AbstractC19891x<AbstractC17373b> m11834h = AbstractC19891x.m11834h(null);
                    l.d(m11834h, "wrap(null)");
                    return m11834h;
                }
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursor = null;
        }
        AbstractC19891x<AbstractC17373b> m11834h2 = AbstractC19891x.m11834h(null);
        l.d(m11834h2, "wrap(null)");
        return m11834h2;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: w */
    public AbstractC19891x<HistoryEvent> mo16199w(String str) {
        Throwable th;
        l.e(str, "eventId");
        Cursor cursor = null;
        try {
            Cursor query = this.f48545d.getContentResolver().query(C17891a1.C17901j.m15699b(), null, "event_id=?", new String[]{str}, null);
            if (query != null) {
                try {
                    C17374c m15262I0 = C18334g0.m15262I0(query, null, false, 3);
                    if (m15262I0.moveToFirst()) {
                        AbstractC19891x<HistoryEvent> m11834h = AbstractC19891x.m11834h(m15262I0.mo16159n());
                        l.d(m11834h, "wrap(eventCursor.historyEvent)");
                        query.close();
                        return m11834h;
                    }
                } catch (Throwable th2) {
                    cursor = query;
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            AbstractC19891x<HistoryEvent> m11834h2 = AbstractC19891x.m11834h(null);
            l.d(m11834h2, "wrap(null)");
            return m11834h2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01b7 A[EDGE_INSN: B:37:0x01b7->B:32:0x01b7 ?: BREAK  , SYNTHETIC] */
    @Override // p193e.p194a.p1041l0.AbstractC17352g
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16198x(java.util.Set<java.lang.Long> r7) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1041l0.C17308a.mo16198x(java.util.Set):boolean");
    }

    /* renamed from: y */
    public final void m16254y(Uri uri, String str, List<Long> list, String str2) {
        for (List list2 : list != null ? s1.u.i.k(list, 1000) : C25225a.m3962T1(null)) {
            List V = s1.u.i.V(new String[]{str2, list2 != null ? C22128a.m8725C2(str, " IN ", s1.u.i.O(list2, (CharSequence) null, "(", ")", 0, (CharSequence) null, (s1.z.b.l) null, 57)) : null});
            if (!(!V.isEmpty())) {
                V = null;
            }
            String O = V != null ? s1.u.i.O(V, " AND ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62) : null;
            long currentTimeMillis = System.currentTimeMillis();
            this.f48545d.getContentResolver().delete(uri, O, null);
            s sVar = s.a;
            long currentTimeMillis2 = System.currentTimeMillis();
            String str3 = "delete from " + uri + ' ' + sVar + " items, took: " + (currentTimeMillis2 - currentTimeMillis) + "ms\ndeleteWhere = " + O;
        }
    }

    /* renamed from: z */
    public final Cursor m16253z(Integer num, FilterType filterType, CancellationSignal cancellationSignal, boolean z) throws SQLiteException, OperationCanceledException {
        String str;
        Cursor cursor;
        Uri withAppendedPath = this.f48555n ? Uri.withAppendedPath(C17891a1.f50888a, "history_with_aggregated_contact_no_cr") : C17891a1.C17901j.m15698c();
        ContentResolver contentResolver = this.f48545d.getContentResolver();
        if (num != null) {
            str = "timestamp DESC LIMIT " + num;
        } else {
            str = "timestamp DESC";
        }
        String[] strArr = (!this.f48555n || !z) ? null : C17355j.f48609a;
        int ordinal = filterType.ordinal();
        if (ordinal == 0) {
            cursor = contentResolver.query(withAppendedPath, strArr, m16256B("type IN (1,2,3) "), null, str, cancellationSignal);
        } else if (ordinal == 4) {
            cursor = contentResolver.query(withAppendedPath, strArr, m16256B("type IN (1,2,3)  AND action IN (1, 3)"), null, str, cancellationSignal);
        } else if (ordinal == 5) {
            cursor = contentResolver.query(withAppendedPath, strArr, m16256B("tc_flag=3"), null, str, cancellationSignal);
        } else if (ordinal != 6) {
            int ordinal2 = filterType.ordinal();
            int i = 3;
            if (ordinal2 == 1) {
                i = 1;
            } else if (ordinal2 == 2) {
                i = 2;
            } else if (ordinal2 != 3) {
                i = 0;
            }
            cursor = contentResolver.query(withAppendedPath, strArr, "type IN (1,2,3)  AND action!=1 AND action!=3 AND tc_flag!=3 AND type=?", new String[]{String.valueOf(i)}, str, cancellationSignal);
        } else {
            cursor = contentResolver.query(withAppendedPath, strArr, "type in (1,2,3) and tc_flag=0 and duration=0 and call_log_id is null and subscription_component_name is null", null, str, cancellationSignal);
        }
        return cursor;
    }
}
