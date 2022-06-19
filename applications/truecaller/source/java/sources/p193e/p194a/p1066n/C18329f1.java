package p193e.p194a.p1066n;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.FilterBackupItem;
import e.m.e.f0.a;
import e.m.e.k;
import java.util.List;
import javax.inject.Inject;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.n.f1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/f1.class */
public final class C18329f1 implements AbstractC18322e1 {

    /* renamed from: a */
    public final Context f51779a;

    /* renamed from: b */
    public final AbstractC18249a1 f51780b;

    /* renamed from: c */
    public final k f51781c;

    /* renamed from: d */
    public final AbstractC18342i0 f51782d;

    /* renamed from: e.a.n.f1$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/f1$a.class */
    public static final class C18330a extends a<List<? extends FilterBackupItem>> {
    }

    @e(c = "com.truecaller.backup.FiltersBackupManagerImpl", f = "FiltersBackupManager.kt", l = {41}, m = "restoreFilters")
    /* renamed from: e.a.n.f1$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/f1$b.class */
    public static final class C18331b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51783d;

        /* renamed from: e */
        public int f51784e;

        /* renamed from: g */
        public Object f51786g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18331b(d dVar) {
            super(dVar);
            C18329f1.this = r4;
        }

        /* renamed from: s */
        public final Object m15281s(Object obj) {
            this.f51783d = obj;
            this.f51784e |= Integer.MIN_VALUE;
            return C18329f1.this.mo15282a(null, this);
        }
    }

    @Inject
    public C18329f1(Context context, AbstractC18249a1 abstractC18249a1, k kVar, AbstractC18342i0 abstractC18342i0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC18249a1, "driveManager");
        l.e(kVar, "gson");
        l.e(abstractC18342i0, "backupUtil");
        this.f51779a = context;
        this.f51780b = abstractC18249a1;
        this.f51781c = kVar;
        this.f51782d = abstractC18342i0;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0325  */
    @Override // p193e.p194a.p1066n.AbstractC18322e1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15282a(java.lang.String r16, s1.w.d<? super com.truecaller.backup.BackupResult> r17) {
        /*
            Method dump skipped, instructions count: 813
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18329f1.mo15282a(java.lang.String, s1.w.d):java.lang.Object");
    }
}
