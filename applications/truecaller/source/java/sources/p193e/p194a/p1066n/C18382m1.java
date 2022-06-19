package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.utils.extensions.Scheme;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.f0.h;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.n.m1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/m1.class */
public final class C18382m1 implements AbstractC18367l1 {

    /* renamed from: a */
    public final Context f51901a;

    /* renamed from: b */
    public final AbstractC18249a1 f51902b;

    /* renamed from: c */
    public final AbstractC19219a0 f51903c;

    /* renamed from: d */
    public final AbstractC8541a f51904d;

    /* renamed from: e */
    public final AbstractC8438a f51905e;

    /* renamed from: f */
    public final AbstractC8571b f51906f;

    /* renamed from: g */
    public final AbstractC18395n1 f51907g;

    @e(c = "com.truecaller.backup.MediaBackupManagerImpl", f = "MediaBackupManager.kt", l = {56, 66}, m = "backupMedia")
    /* renamed from: e.a.n.m1$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/m1$a.class */
    public static final class C18383a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51908d;

        /* renamed from: e */
        public int f51909e;

        /* renamed from: g */
        public Object f51911g;

        /* renamed from: h */
        public Object f51912h;

        /* renamed from: i */
        public Object f51913i;

        /* renamed from: j */
        public Object f51914j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18383a(d dVar) {
            super(dVar);
            C18382m1.this = r4;
        }

        /* renamed from: s */
        public final Object m15100s(Object obj) {
            this.f51908d = obj;
            this.f51909e |= Integer.MIN_VALUE;
            return C18382m1.this.m15106a(this);
        }
    }

    /* renamed from: e.a.n.m1$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/m1$b.class */
    public static final class C18384b extends m implements l<OutputStream, s> {

        /* renamed from: b */
        public final /* synthetic */ InputStream f51915b;

        /* renamed from: c */
        public final /* synthetic */ d f51916c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18384b(C18411p1 c18411p1, InputStream inputStream, C18382m1 c18382m1, d dVar, ArrayList arrayList) {
            super(1);
            this.f51915b = inputStream;
            this.f51916c = dVar;
        }

        /* renamed from: d */
        public Object m15099d(Object obj) {
            OutputStream outputStream = (OutputStream) obj;
            s1.z.c.l.e(outputStream, "out");
            C25225a.m3960U(this.f51915b, outputStream, 0, 2);
            return s.a;
        }
    }

    @e(c = "com.truecaller.backup.MediaBackupManagerImpl", f = "MediaBackupManager.kt", l = {85, 101}, m = "restoreMedia")
    /* renamed from: e.a.n.m1$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/m1$c.class */
    public static final class C18385c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51917d;

        /* renamed from: e */
        public int f51918e;

        /* renamed from: g */
        public Object f51920g;

        /* renamed from: h */
        public Object f51921h;

        /* renamed from: i */
        public Object f51922i;

        /* renamed from: j */
        public Object f51923j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18385c(d dVar) {
            super(dVar);
            C18382m1.this = r4;
        }

        /* renamed from: s */
        public final Object m15098s(Object obj) {
            this.f51917d = obj;
            this.f51918e |= Integer.MIN_VALUE;
            return C18382m1.this.m15102e(this);
        }
    }

    @Inject
    public C18382m1(Context context, AbstractC18249a1 abstractC18249a1, AbstractC19219a0 abstractC19219a0, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC8571b abstractC8571b, AbstractC18395n1 abstractC18395n1) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC18249a1, "driveManager");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(abstractC8438a, "accountSettings");
        s1.z.c.l.e(abstractC8571b, "attachmentStoreHelper");
        s1.z.c.l.e(abstractC18395n1, "mediaBackupUtil");
        this.f51901a = context;
        this.f51902b = abstractC18249a1;
        this.f51903c = abstractC19219a0;
        this.f51904d = abstractC8541a;
        this.f51905e = abstractC8438a;
        this.f51906f = abstractC8571b;
        this.f51907g = abstractC18395n1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x01c3, code lost:
        if (r9.f51903c.mo13823j() != false) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 23, insn: 0x03fb: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r23 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:90:0x03f9 */
    /* JADX WARN: Not initialized variable reg: 24, insn: 0x03f9: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r24 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:90:0x03f9 */
    /* JADX WARN: Not initialized variable reg: 25, insn: 0x0421: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:96:0x0421 */
    /* JADX WARN: Not initialized variable reg: 26, insn: 0x0425: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r26 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:96:0x0421 */
    /* JADX WARN: Not initialized variable reg: 27, insn: 0x0429: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r27 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:96:0x0421 */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x041c  */
    /* JADX WARN: Type inference failed for: r0v214, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x016b -> B:92:0x0405). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x01c3 -> B:92:0x0405). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x01f9 -> B:92:0x0405). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x02ee -> B:70:0x02f4). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m15106a(s1.w.d<? super com.truecaller.backup.BackupResult> r9) {
        /*
            Method dump skipped, instructions count: 1076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18382m1.m15106a(s1.w.d):java.lang.Object");
    }

    /* renamed from: b */
    public final ContentProviderOperation m15105b(Uri uri, long j, int i, boolean z) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28296x());
        if (!z) {
            newUpdate.withValue("entity_info1", uri.toString());
        } else if (i == 1) {
            newUpdate.withValue("entity_info4", uri.toString());
        } else if (i == 2) {
            newUpdate.withValue("entity_info4", uri.toString());
        } else if (i == 6) {
            newUpdate.withValue("entity_info4", uri.toString());
        } else if (i == 7) {
            newUpdate.withValue("entity_info5", uri.toString());
        }
        newUpdate.withSelection("_id =?", new String[]{String.valueOf(j)});
        ContentProviderOperation build = newUpdate.build();
        s1.z.c.l.d(build, "ContentProviderOperation…ing()))\n        }.build()");
        return build;
    }

    /* renamed from: c */
    public final String m15104c(long j) {
        String string = this.f51905e.getString("profileNumber");
        if (string != null) {
            StringBuilder m8708H = C22128a.m8708H(string, "accountSettings.getStrin…LE_NUMBER) ?: return null");
            m8708H.append(new h("^\\++").e(string, ""));
            m8708H.append('_');
            m8708H.append(j);
            return m8708H.toString();
        }
        return null;
    }

    /* renamed from: d */
    public final Uri m15103d(C18411p1 c18411p1) {
        Uri uri;
        if (r.y(c18411p1.f52009c, "application/vnd.truecaller.linkpreview", false, 2)) {
            uri = c18411p1.f52012f;
            if (uri == null || !s1.z.c.l.a(uri.getScheme(), Scheme.CONTENT.getValue())) {
                uri = null;
            }
        } else {
            uri = c18411p1.f52008b;
        }
        return uri;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:(1:100)|60|61|108|62|63|96|64|65|102|66|67|106|68) */
    /* JADX WARN: Can't wrap try/catch for region: R(14:100|60|61|108|62|63|96|64|65|102|66|67|106|68) */
    /* JADX WARN: Can't wrap try/catch for region: R(9:110|32|98|33|(1:35)|36|37|40|(1:117)(5:112|42|(1:113)(4:44|(1:49)(1:48)|50|(1:114)(1:118))|52|(8:54|(2:56|57)|58|(0)|90|91|119|(1:28))(2:92|93))) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0171, code lost:
        r16 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0294, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0298, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x029c, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x029d, code lost:
        r13 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02a2, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02ab, code lost:
        r0 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02b2, code lost:
        if ((r12 instanceof java.io.IOException) != false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02d0, code lost:
        r0 = r0.f51901a.getContentResolver();
        r0 = p193e.p194a.p1053m0.C17891a1.f50888a;
        r0.applyBatch("com.truecaller", r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02e9, code lost:
        throw r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02ea, code lost:
        r12 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02eb, code lost:
        r11 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0210 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0120  */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x01fe -> B:58:0x0204). Please submit an issue!!! */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m15102e(s1.w.d<? super com.truecaller.backup.BackupResult> r11) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18382m1.m15102e(s1.w.d):java.lang.Object");
    }

    /* renamed from: f */
    public final void m15101f(long j) {
        this.f51904d.putLong("lastBackedUpEntityId", j);
    }
}
