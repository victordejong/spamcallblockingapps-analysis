package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.CallLogBackupItem;
import e.m.e.f0.a;
import e.m.e.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p997k3.AbstractC16452e;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.n.q0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/q0.class */
public final class C18413q0 implements AbstractC18410p0 {

    /* renamed from: a */
    public final Context f52015a;

    /* renamed from: b */
    public final AbstractC18249a1 f52016b;

    /* renamed from: c */
    public final AbstractC17348c f52017c;

    /* renamed from: d */
    public final k f52018d;

    /* renamed from: e */
    public final AbstractC18342i0 f52019e;

    /* renamed from: f */
    public final AbstractC8432l f52020f;

    /* renamed from: g */
    public final AbstractC16452e f52021g;

    /* renamed from: e.a.n.q0$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/q0$a.class */
    public static final class C18414a extends a<List<? extends CallLogBackupItem>> {
    }

    @e(c = "com.truecaller.backup.CallLogBackupManagerImpl", f = "CallLogBackupManager.kt", l = {108}, m = "getBackedUpCallLog")
    /* renamed from: e.a.n.q0$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/q0$b.class */
    public static final class C18415b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52022d;

        /* renamed from: e */
        public int f52023e;

        /* renamed from: g */
        public Object f52025g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18415b(d dVar) {
            super(dVar);
            C18413q0.this = r4;
        }

        /* renamed from: s */
        public final Object m15037s(Object obj) {
            this.f52022d = obj;
            this.f52023e |= Integer.MIN_VALUE;
            return C18413q0.this.m15039c(null, this);
        }
    }

    @e(c = "com.truecaller.backup.CallLogBackupManagerImpl", f = "CallLogBackupManager.kt", l = {54, 69}, m = "restoreCallLog")
    /* renamed from: e.a.n.q0$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/q0$c.class */
    public static final class C18416c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52026d;

        /* renamed from: e */
        public int f52027e;

        /* renamed from: g */
        public Object f52029g;

        /* renamed from: h */
        public Object f52030h;

        /* renamed from: i */
        public Object f52031i;

        /* renamed from: j */
        public Object f52032j;

        /* renamed from: k */
        public Object f52033k;

        /* renamed from: l */
        public Object f52034l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18416c(d dVar) {
            super(dVar);
            C18413q0.this = r4;
        }

        /* renamed from: s */
        public final Object m15036s(Object obj) {
            this.f52026d = obj;
            this.f52027e |= Integer.MIN_VALUE;
            return C18413q0.this.mo15041a(null, this);
        }
    }

    @Inject
    public C18413q0(Context context, AbstractC18249a1 abstractC18249a1, AbstractC17348c abstractC17348c, k kVar, AbstractC18342i0 abstractC18342i0, AbstractC8432l abstractC8432l, AbstractC16452e abstractC16452e) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC18249a1, "driveManager");
        l.e(abstractC17348c, "callHistoryManager");
        l.e(kVar, "gson");
        l.e(abstractC18342i0, "backupUtil");
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC16452e, "historyEventFactory");
        this.f52015a = context;
        this.f52016b = abstractC18249a1;
        this.f52017c = abstractC17348c;
        this.f52018d = kVar;
        this.f52019e = abstractC18342i0;
        this.f52020f = abstractC8432l;
        this.f52021g = abstractC16452e;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0239 A[Catch: u -> 0x023f, IllegalStateException -> 0x0250, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0250, u -> 0x023f, blocks: (B:18:0x00a4, B:21:0x00c1, B:27:0x00dd, B:53:0x0239), top: B:63:0x0044 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x01ca -> B:48:0x01da). Please submit an issue!!! */
    @Override // p193e.p194a.p1066n.AbstractC18410p0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15041a(java.lang.String r6, s1.w.d<? super com.truecaller.backup.BackupResult> r7) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18413q0.mo15041a(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1066n.AbstractC18410p0
    /* renamed from: b */
    public Object mo15040b(d<? super s> dVar) {
        Uri m15699b = C17891a1.C17901j.m15699b();
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        Set<CallLogBackupItem> m15038d = m15038d();
        if (m15038d != null) {
            ArrayList<CallLogBackupItem> arrayList2 = new ArrayList();
            Iterator<T> it = m15038d.iterator();
            while (true) {
                boolean z = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                Integer flag = ((CallLogBackupItem) next).getFlag();
                if (flag == null || flag.intValue() != 2) {
                    z = true;
                }
                if (Boolean.valueOf(z).booleanValue()) {
                    arrayList2.add(next);
                }
            }
            ArrayList<String> arrayList3 = new ArrayList(C25225a.m4004J(arrayList2, 10));
            for (CallLogBackupItem callLogBackupItem : arrayList2) {
                arrayList3.add(String.valueOf(callLogBackupItem.getTimestamp()));
            }
            for (String str : arrayList3) {
                ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(m15699b);
                l.d(newDelete, "ContentProviderOperation.newDelete(contentUri)");
                newDelete.withSelection("timestamp = ? AND tc_flag = ?", new String[]{str, String.valueOf(2)});
                arrayList.add(newDelete.build());
            }
        }
        try {
            ContentResolver contentResolver = this.f52015a.getContentResolver();
            Uri uri = C17891a1.f50888a;
            l.d(contentResolver.applyBatch("com.truecaller", arrayList), "context.contentResolver.…tAuthority(), operations)");
        } catch (Exception e) {
            C10480a.m26061I1(e);
        }
        return s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d3 A[RETURN] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m15039c(java.lang.String r6, s1.w.d<? super java.util.List<com.truecaller.data.entity.CallLogBackupItem>> r7) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18413q0.m15039c(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
        if (r25 != null) goto L21;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Set<com.truecaller.data.entity.CallLogBackupItem> m15038d() {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18413q0.m15038d():java.util.Set");
    }
}
