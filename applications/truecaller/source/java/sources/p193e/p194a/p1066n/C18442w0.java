package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.Context;
import android.net.Uri;
import android.util.Patterns;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.ContactBackupItem;
import e.m.e.f0.a;
import e.m.e.k;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p997k3.p998j.C16487j;
import s1.f0.h;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.n.w0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/w0.class */
public final class C18442w0 implements AbstractC18439v0 {

    /* renamed from: a */
    public final Uri f52083a = C17891a1.C17892a.m15709b();

    /* renamed from: b */
    public final Uri f52084b = C17891a1.C17904m.m15552a();

    /* renamed from: c */
    public final Uri f52085c = C17891a1.C17904m.m15551b();

    /* renamed from: d */
    public final String f52086d = "contact_name NOT NULL AND contact_name NOT IN ('', 'Truecaller Verification') AND contact_default_number NOT NULL";

    /* renamed from: e */
    public final String f52087e = "tc_id DESC, contact_source DESC";

    /* renamed from: f */
    public final String f52088f = "contact_name = ? AND tc_flag = ?";

    /* renamed from: g */
    public final List<Integer> f52089g = i.T(new Integer[]{16, 2, 32});

    /* renamed from: h */
    public final h f52090h;

    /* renamed from: i */
    public final Context f52091i;

    /* renamed from: j */
    public final C16487j f52092j;

    /* renamed from: k */
    public final AbstractC18249a1 f52093k;

    /* renamed from: l */
    public final k f52094l;

    /* renamed from: m */
    public final AbstractC18342i0 f52095m;

    /* renamed from: e.a.n.w0$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/w0$a.class */
    public static final class C18443a extends a<Set<? extends ContactBackupItem>> {
    }

    @e(c = "com.truecaller.backup.ContactsBackupManagerImpl", f = "ContactsBackupManager.kt", l = {175}, m = "getBackedUpContacts")
    /* renamed from: e.a.n.w0$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/w0$b.class */
    public static final class C18444b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52096d;

        /* renamed from: e */
        public int f52097e;

        /* renamed from: g */
        public Object f52099g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18444b(d dVar) {
            super(dVar);
            C18442w0.this = r4;
        }

        /* renamed from: s */
        public final Object m14978s(Object obj) {
            this.f52096d = obj;
            this.f52097e |= Integer.MIN_VALUE;
            return C18442w0.this.m14979c(null, this);
        }
    }

    @e(c = "com.truecaller.backup.ContactsBackupManagerImpl", f = "ContactsBackupManager.kt", l = {88}, m = "restoreContacts")
    /* renamed from: e.a.n.w0$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/w0$c.class */
    public static final class C18445c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52100d;

        /* renamed from: e */
        public int f52101e;

        /* renamed from: g */
        public Object f52103g;

        /* renamed from: h */
        public Object f52104h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18445c(d dVar) {
            super(dVar);
            C18442w0.this = r4;
        }

        /* renamed from: s */
        public final Object m14977s(Object obj) {
            this.f52100d = obj;
            this.f52101e |= Integer.MIN_VALUE;
            return C18442w0.this.mo14981a(null, this);
        }
    }

    @Inject
    public C18442w0(Context context, C16487j c16487j, AbstractC18249a1 abstractC18249a1, k kVar, AbstractC18342i0 abstractC18342i0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c16487j, "rawContactDao");
        l.e(abstractC18249a1, "driveManager");
        l.e(kVar, "gson");
        l.e(abstractC18342i0, "backupUtil");
        this.f52091i = context;
        this.f52092j = c16487j;
        this.f52093k = abstractC18249a1;
        this.f52094l = kVar;
        this.f52095m = abstractC18342i0;
        Pattern pattern = Patterns.PHONE;
        l.d(pattern, "Patterns.PHONE");
        this.f52090h = new h(pattern);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x011f, code lost:
        if (p193e.p194a.p682e.C12864a2.m22540r(r0 != null ? java.lang.Boolean.valueOf(r9.f52090h.d(r0)) : null) != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0682 A[Catch: u -> 0x0688, IllegalStateException -> 0x069a, TRY_ENTER, TRY_LEAVE, TryCatch #3 {u -> 0x0688, IllegalStateException -> 0x069a, blocks: (B:13:0x0061, B:104:0x0358, B:110:0x0383, B:182:0x0682), top: B:194:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x00d9 A[SYNTHETIC] */
    @Override // p193e.p194a.p1066n.AbstractC18439v0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo14981a(java.lang.String r10, s1.w.d<? super com.truecaller.backup.BackupResult> r11) {
        /*
            Method dump skipped, instructions count: 1712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18442w0.mo14981a(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: b */
    public final ContentProviderOperation m14980b(Uri uri, String str, int i) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(uri);
        l.d(newUpdate, "ContentProviderOperation.newUpdate(uri)");
        newUpdate.withValue("tc_flag", Integer.valueOf(i));
        newUpdate.withSelection(this.f52088f, new String[]{str, String.valueOf(0)});
        ContentProviderOperation build = newUpdate.build();
        l.d(build, "rawUpdate.build()");
        return build;
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
    public final java.lang.Object m14979c(java.lang.String r6, s1.w.d<? super java.util.Set<com.truecaller.backup.ContactBackupItem>> r7) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18442w0.m14979c(java.lang.String, s1.w.d):java.lang.Object");
    }
}
