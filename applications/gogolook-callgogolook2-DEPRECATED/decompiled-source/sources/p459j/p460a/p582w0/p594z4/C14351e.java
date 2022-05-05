package p459j.p460a.p582w0.p594z4;

import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import io.realm.Sort;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p601x0.p602a.AbstractC14442e;
import p459j.p460a.p601x0.p602a.C14439b;
import p459j.p460a.p601x0.p602a.C14440c;
import p459j.p460a.p601x0.p602a.C14444f;
import p459j.p460a.p601x0.p602a.C14446h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018�� A2\u00020\u0001:\u0002ABB\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u0004\u0018\u00010\f2\u0006\u0010#\u001a\u00020\u001fJ\u0006\u0010$\u001a\u00020\u001fJ\u0010\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u0016H\u0002J\b\u0010'\u001a\u00020!H\u0002J\b\u0010(\u001a\u00020!H\u0002J\u000e\u0010)\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001fJ\b\u0010*\u001a\u00020!H\u0002J\u0010\u0010+\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001fH\u0002J\u0006\u0010,\u001a\u00020\u001fJ\u0090\u0001\u0010-\u001a\u00020!2\f\u0010.\u001a\b\u0012\u0004\u0012\u0002000/2\f\u00101\u001a\b\u0012\u0004\u0012\u0002000/2\f\u00102\u001a\b\u0012\u0004\u0012\u0002000/2\u0006\u00103\u001a\u00020\u00062\b\u00104\u001a\u0004\u0018\u00010\u00052\b\u00105\u001a\u0004\u0018\u00010\u00052\u0006\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u00162\u0006\u00108\u001a\u00020\u00162\u0006\u00109\u001a\u00020\u00062\b\u0010:\u001a\u0004\u0018\u00010\u00052\b\u0010;\u001a\u0004\u0018\u00010\u00052\u0006\u0010<\u001a\u00020\u0016J\u000e\u0010=\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001fJ\u0006\u0010>\u001a\u00020!J\u0006\u0010?\u001a\u00020!J\u0006\u0010@\u001a\u00020!R\u001c\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R!\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��¨\u0006C"}, m815d2 = {"Lgogolook/callgogolook2/util/calllog/LogAggregateHelper;", "", "()V", "e164ToGroup1Id", "Ljava/util/HashMap;", "", "", "e164ToId", "formatter", "Ljava/text/SimpleDateFormat;", "loadingHelpers", "", "Lgogolook/callgogolook2/utils/loadinghelper/LogLoadingWrapper;", "getLoadingHelpers", "()Ljava/util/List;", "loadingHelpers$delegate", "Lkotlin/Lazy;", "logHelperComparatorSyncNew", "Lgogolook/callgogolook2/util/calllog/LogAggregateHelper$LogHelperComparator;", "logHelperComparatorSyncOld", "maxGroup1Id", "preBlocked", "", "preDate", "preE164", "preFormatDate", "preId", "preIdMax", "preName", "preType", "canMoveToNext", "", "closeLoadingHelpers", "", "getLoadingHelper", "shouldSyncOldLogs", "hasAvailableLoader", "isPossibleBlockType", "type", "loadE164ToGroup1Id", "loadE164ToId", "loadLastLogInfo", "loadMaxGroupId", "loadPreLogInfo", "moveToFirst", "parseLosGroupRealmObject", "insertList", "Ljava/util/ArrayList;", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "updateList", "deleteList", "refId", "number", "e164", "date", "duration", LogsGroupRealmObject.NEW, ContactRealmObject.CONTACT_ID, "name", "content", "_blocked", "queryNativeLogs", "saveLoadedInfo", "setOldLogSynced", "syncNativeLogs", "Companion", "LogHelperComparator", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.z4.e */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z4/e.class */
public final class C14351e {

    /* renamed from: n */
    public static final /* synthetic */ AbstractC14906i[] f32160n;

    /* renamed from: b */
    public long f32162b;

    /* renamed from: c */
    public String f32163c;

    /* renamed from: d */
    public int f32164d;

    /* renamed from: e */
    public long f32165e;

    /* renamed from: f */
    public int f32166f;

    /* renamed from: g */
    public long f32167g;

    /* renamed from: h */
    public long f32168h;

    /* renamed from: a */
    public final SimpleDateFormat f32161a = new SimpleDateFormat("yyyy/MM/dd");

    /* renamed from: i */
    public HashMap<String, Long> f32169i = new HashMap<>();

    /* renamed from: j */
    public HashMap<String, Long> f32170j = new HashMap<>();

    /* renamed from: k */
    public final AbstractC14974f f32171k = C14975g.m662a(C14355c.f32175a);

    /* renamed from: l */
    public final C14353b f32172l = new C14353b(1);

    /* renamed from: m */
    public final C14353b f32173m = new C14353b(2);

    /* renamed from: j.a.w0.z4.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/e$a.class */
    public static final class C14352a {
        public C14352a() {
        }

        public /* synthetic */ C14352a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\b\b\u0002\u0018�� \u000b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001c\u0010\b\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/util/calllog/LogAggregateHelper$LogHelperComparator;", "Ljava/util/Comparator;", "Lgogolook/callgogolook2/utils/loadinghelper/LogLoadingWrapper;", "type", "", "(I)V", "getType", "()I", "compare", "lhs", "rhs", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.w0.z4.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/e$b.class */
    public static final class C14353b implements Comparator<AbstractC14442e> {

        /* renamed from: a */
        public final int f32174a;

        /* renamed from: j.a.w0.z4.e$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/e$b$a.class */
        public static final class C14354a {
            public C14354a() {
            }

            public /* synthetic */ C14354a(C15145g gVar) {
                this();
            }
        }

        static {
            new C14354a(null);
        }

        public C14353b(int i) {
            this.f32174a = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
            if (r0 < r7.mo1293f()) goto L_0x0099;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0096, code lost:
            if (r5.f32174a == 1) goto L_0x0099;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(p459j.p460a.p601x0.p602a.AbstractC14442e r6, p459j.p460a.p601x0.p602a.AbstractC14442e r7) {
            /*
                r5 = this;
                r0 = 1
                r8 = r0
                r0 = r6
                if (r0 == 0) goto L_0x001e
                r0 = r6
                int r0 = r0.mo1307q()
                if (r0 < 0) goto L_0x001e
                r0 = r6
                int r0 = r0.mo1307q()
                r1 = r6
                int r1 = r1.mo1316e()
                if (r0 >= r1) goto L_0x001e
                r0 = 1
                r9 = r0
                goto L_0x0021
            L_0x001e:
                r0 = 0
                r9 = r0
            L_0x0021:
                r0 = r7
                if (r0 == 0) goto L_0x003d
                r0 = r7
                int r0 = r0.mo1307q()
                if (r0 < 0) goto L_0x003d
                r0 = r7
                int r0 = r0.mo1307q()
                r1 = r7
                int r1 = r1.mo1316e()
                if (r0 >= r1) goto L_0x003d
                r0 = 1
                r10 = r0
                goto L_0x0040
            L_0x003d:
                r0 = 0
                r10 = r0
            L_0x0040:
                r0 = r9
                if (r0 == 0) goto L_0x0072
                r0 = r10
                if (r0 == 0) goto L_0x0072
                r0 = r6
                if (r0 == 0) goto L_0x006d
                r0 = r6
                long r0 = r0.mo1293f()
                r11 = r0
                r0 = r7
                if (r0 == 0) goto L_0x0068
                r0 = r8
                r9 = r0
                r0 = r11
                r1 = r7
                long r1 = r1.mo1293f()
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x00a2
                goto L_0x0099
            L_0x0068:
                p626l.p641z.p643d.C15149k.m378b()
                r0 = 0
                throw r0
            L_0x006d:
                p626l.p641z.p643d.C15149k.m378b()
                r0 = 0
                throw r0
            L_0x0072:
                r0 = r9
                r1 = r10
                if (r0 == r1) goto L_0x009f
                r0 = r9
                if (r0 == 0) goto L_0x0086
                r0 = r5
                int r0 = r0.f32174a
                r1 = 2
                if (r0 == r1) goto L_0x0099
            L_0x0086:
                r0 = r8
                r9 = r0
                r0 = r10
                if (r0 == 0) goto L_0x00a2
                r0 = r8
                r9 = r0
                r0 = r5
                int r0 = r0.f32174a
                r1 = 1
                if (r0 != r1) goto L_0x00a2
            L_0x0099:
                r0 = -1
                r9 = r0
                goto L_0x00a2
            L_0x009f:
                r0 = 0
                r9 = r0
            L_0x00a2:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14351e.C14353b.compare(j.a.x0.a.e, j.a.x0.a.e):int");
        }
    }

    /* renamed from: j.a.w0.z4.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/e$c.class */
    public static final class C14355c extends AbstractC15150l implements AbstractC15107a<List<? extends AbstractC14442e>> {

        /* renamed from: a */
        public static final C14355c f32175a = new C14355c();

        public C14355c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final List<? extends AbstractC14442e> invoke() {
            return C15021m.m557c(AbstractC14442e.m1327I(), AbstractC14442e.m1325K(), AbstractC14442e.m1326J(), AbstractC14442e.m1328H());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14351e.class), "loadingHelpers", "getLoadingHelpers()Ljava/util/List;");
        C15131a0.m412a(sVar);
        f32160n = new AbstractC14906i[]{sVar};
        new C14352a(null);
    }

    /* renamed from: a */
    public final AbstractC14442e m1501a(boolean z) {
        return z ? (AbstractC14442e) C15029u.m542a((Iterable<? extends Object>) m1498c(), (Comparator<? super Object>) this.f32172l) : (AbstractC14442e) C15029u.m535b((Iterable<? extends Object>) m1498c(), (Comparator<? super Object>) this.f32173m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r31v0, types: [long] */
    /* renamed from: a */
    public final void m1502a(ArrayList<LogsGroupRealmObject> arrayList, ArrayList<LogsGroupRealmObject> arrayList2, ArrayList<LogsGroupRealmObject> arrayList3, long j, String str, String str2, long j2, int i, int i2, int i3, long j3, String str3, String str4, int i4) {
        C15149k.m377b(arrayList, "insertList");
        C15149k.m377b(arrayList2, "updateList");
        C15149k.m377b(arrayList3, "deleteList");
        this.f32161a.format(Long.valueOf((long) j2));
        if (i4 != 1 || this.f32166f != 0 || !C15149k.m384a((Object) str2, (Object) this.f32163c) || ((i2 != this.f32164d && (!m1503a(i2) || !m1503a(this.f32164d))) || Math.abs(j2 - this.f32165e) >= 8000)) {
            if (i4 == 0 && this.f32166f == 1 && C15149k.m384a((Object) str2, (Object) this.f32163c) && ((i2 == this.f32164d || (m1503a(i2) && m1503a(this.f32164d))) && Math.abs(j2 - this.f32165e) < 8000)) {
                if (arrayList.size() > 0) {
                    arrayList.remove(arrayList.size() - 1);
                } else {
                    arrayList3.add(new LogsGroupRealmObject(this.f32162b, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32766, null));
                }
                i4 = 2;
            }
            Long l = this.f32169i.get(str2);
            if (l == null) {
                this.f32168h++;
                l = Long.valueOf(this.f32168h);
            }
            C15149k.m383a((Object) l, "e164ToGroup1Id[e164] ?: ++maxGroup1Id");
            long longValue = l.longValue();
            long currentTimeMillis = System.currentTimeMillis();
            this.f32163c = str2;
            this.f32164d = i2;
            this.f32165e = j2;
            this.f32166f = i4;
            int i5 = (int) j;
            List<LogsGroupRealmObject> a = C13131j.m4553a(i2, i5);
            if (a == null || !(!a.isEmpty())) {
                arrayList.add(new LogsGroupRealmObject(-1L, str2, Integer.valueOf(i5), str, Long.valueOf((long) (i4 == 2 ? this.f32165e : j2)), Long.valueOf(i), str4, Integer.valueOf(i2), Integer.valueOf(i3), str3, null, (int) j3, i4, (int) longValue, 0L, 16384, null));
            } else {
                for (LogsGroupRealmObject logsGroupRealmObject : a) {
                    logsGroupRealmObject.setE164(str2);
                    logsGroupRealmObject.setNumber(str);
                    logsGroupRealmObject.setDate(i4 == 2 ? Long.valueOf(this.f32165e) : Long.valueOf((long) j2));
                    logsGroupRealmObject.setDuration(Long.valueOf(i));
                    logsGroupRealmObject.setContent(str4);
                    logsGroupRealmObject.setType(Integer.valueOf(i2));
                    logsGroupRealmObject.setNew(Integer.valueOf(i3));
                    logsGroupRealmObject.setDisplayName(str3);
                    logsGroupRealmObject.setContact_id((int) j3);
                    logsGroupRealmObject.setBlocked(i4);
                    logsGroupRealmObject.setGroup_id_1((int) longValue);
                    logsGroupRealmObject.setUpdate_time(Long.valueOf(currentTimeMillis));
                    arrayList2.add(logsGroupRealmObject);
                }
            }
            if (!this.f32169i.containsKey(str2)) {
                this.f32169i.put(str2, Long.valueOf(this.f32168h));
            }
        } else if (arrayList.size() > 0) {
            LogsGroupRealmObject logsGroupRealmObject2 = arrayList.get(arrayList.size() - 1);
            C15149k.m383a((Object) logsGroupRealmObject2, "insertList[insertList.size - 1]");
            LogsGroupRealmObject logsGroupRealmObject3 = logsGroupRealmObject2;
            logsGroupRealmObject3.setBlocked(2);
            logsGroupRealmObject3.setDate(Long.valueOf((long) j2));
        } else if (this.f32162b == this.f32167g) {
            if (!LogsGroupRealmObject.Companion.m26400c(i2) || this.f32165e <= j2) {
                LogsGroupRealmObject logsGroupRealmObject4 = new LogsGroupRealmObject(this.f32162b, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0L, 32766, null);
                logsGroupRealmObject4.setBlocked(2);
                logsGroupRealmObject4.setDate(Long.valueOf((long) j2));
                arrayList2.add(logsGroupRealmObject4);
            }
        }
    }

    /* renamed from: a */
    public final boolean m1504a() {
        boolean z;
        Object obj;
        Iterator<T> it = m1498c().iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            AbstractC14442e eVar = (AbstractC14442e) obj;
            int q = eVar.mo1307q();
            if (q >= 0 && q < eVar.mo1316e()) {
                break;
            }
        }
        if (obj == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m1503a(int i) {
        return i == 17 || i == 19;
    }

    /* renamed from: b */
    public final void m1500b() {
        for (AbstractC14442e eVar : m1498c()) {
            eVar.mo1295b();
        }
    }

    /* renamed from: b */
    public final void m1499b(boolean z) {
        m1492g();
        m1497c(z);
        m1494e();
        m1493f();
    }

    /* renamed from: c */
    public final List<AbstractC14442e> m1498c() {
        AbstractC14974f fVar = this.f32171k;
        AbstractC14906i iVar = f32160n[0];
        return (List) fVar.getValue();
    }

    /* renamed from: c */
    public final void m1497c(boolean z) {
        LogsGroupRealmObject a = C13131j.m4548a(z ? Sort.ASCENDING : Sort.DESCENDING);
        if (a != null) {
            this.f32162b = a.getId();
            this.f32163c = a.getE164();
            a.getDisplayName();
            if (a.getDate() != null) {
                SimpleDateFormat simpleDateFormat = this.f32161a;
                Long date = a.getDate();
                if (date != null) {
                    simpleDateFormat.format(Long.valueOf(date.longValue() / 1000));
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            Integer type = a.getType();
            this.f32164d = type != null ? type.intValue() : 0;
            Long date2 = a.getDate();
            this.f32165e = date2 != null ? date2.longValue() : 0L;
            this.f32166f = a.getBlocked();
        }
        this.f32167g = C13131j.m4547a("id");
    }

    /* renamed from: d */
    public final void m1495d(boolean z) {
        for (AbstractC14442e eVar : m1498c()) {
            try {
                eVar.m1320b(z ? 4 : 3);
                eVar.mo1299D();
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: d */
    public final boolean m1496d() {
        Object obj;
        Iterator<T> it = m1498c().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AbstractC14442e) obj).mo1324a()) {
                break;
            }
        }
        return obj != null;
    }

    /* renamed from: e */
    public final void m1494e() {
        List<LogsGroupRealmObject> g = C13131j.m4522g();
        if (g != null) {
            this.f32169i.clear();
            ArrayList arrayList = new ArrayList(C15022n.m555a(g, 10));
            for (LogsGroupRealmObject logsGroupRealmObject : g) {
                this.f32169i.put(logsGroupRealmObject.getE164(), Long.valueOf(logsGroupRealmObject.getGroup_id_1()));
                arrayList.add(C14989s.f33022a);
            }
        }
    }

    /* renamed from: f */
    public final void m1493f() {
        List<LogsGroupRealmObject> d = C13131j.m4526d();
        if (d != null) {
            this.f32170j.clear();
            ArrayList arrayList = new ArrayList(C15022n.m555a(d, 10));
            for (LogsGroupRealmObject logsGroupRealmObject : d) {
                String e164 = logsGroupRealmObject.getE164();
                if (!(e164 == null || e164.length() == 0)) {
                    this.f32170j.put(logsGroupRealmObject.getE164(), Long.valueOf(logsGroupRealmObject.getId()));
                }
                arrayList.add(C14989s.f33022a);
            }
        }
    }

    /* renamed from: g */
    public final void m1492g() {
        this.f32168h = C13131j.m4547a(LogsGroupRealmObject.GROUP_ID_1);
    }

    /* renamed from: h */
    public final boolean m1491h() {
        boolean z = false;
        for (AbstractC14442e eVar : m1498c()) {
            z |= eVar.mo1333B();
        }
        return z;
    }

    /* renamed from: i */
    public final void m1490i() {
        for (AbstractC14442e eVar : m1498c()) {
            eVar.m1330F();
        }
    }

    /* renamed from: j */
    public final void m1489j() {
        for (AbstractC14442e eVar : m1498c()) {
            eVar.m1329G();
        }
    }

    /* renamed from: k */
    public final void m1488k() {
        for (AbstractC14442e eVar : m1498c()) {
            HashSet<Long> E = eVar.mo1331E();
            if (E != null) {
                if (eVar instanceof C14440c) {
                    C13131j.m4534b(E);
                } else if (eVar instanceof C14446h) {
                    C13131j.m4525d(E);
                } else if (eVar instanceof C14444f) {
                    C13131j.m4528c(E);
                } else if (eVar instanceof C14439b) {
                    C13131j.m4544a(E);
                }
            }
        }
    }
}
