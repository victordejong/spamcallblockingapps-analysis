package p193e.p194a.p1066n;

import com.truecaller.backup.BackupFile;
import com.truecaller.backup.BackupResult;
import com.truecaller.backup.BackupSettingItem;
import e.m.e.f0.a;
import e.m.e.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.b;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.n.e2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/e2.class */
public final class C18323e2 implements AbstractC18319d2 {

    /* renamed from: a */
    public final k f51766a;

    /* renamed from: b */
    public final AbstractC18249a1 f51767b;

    /* renamed from: c */
    public final C18289d f51768c;

    /* renamed from: d */
    public final AbstractC18342i0 f51769d;

    /* renamed from: e.a.n.e2$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/e2$a.class */
    public static final class C18324a extends a<List<? extends BackupSettingItem<? extends Object>>> {
    }

    @e(c = "com.truecaller.backup.SettingsBackupManagerImpl", f = "SettingsBackupManagerImpl.kt", l = {37}, m = "restoreSettings")
    /* renamed from: e.a.n.e2$b */
    /* loaded from: classes5-dex2jar.jar:e/a/n/e2$b.class */
    public static final class C18325b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f51770d;

        /* renamed from: e */
        public int f51771e;

        /* renamed from: g */
        public Object f51773g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18325b(d dVar) {
            super(dVar);
            C18323e2.this = r4;
        }

        /* renamed from: s */
        public final Object m15285s(Object obj) {
            this.f51770d = obj;
            this.f51771e |= Integer.MIN_VALUE;
            return C18323e2.this.mo15286b(null, this);
        }
    }

    @Inject
    public C18323e2(k kVar, AbstractC18249a1 abstractC18249a1, C18289d c18289d, AbstractC18342i0 abstractC18342i0) {
        l.e(kVar, "gson");
        l.e(abstractC18249a1, "driveManager");
        l.e(c18289d, "backupSettingsRegistry");
        l.e(abstractC18342i0, "backupUtil");
        this.f51766a = kVar;
        this.f51767b = abstractC18249a1;
        this.f51768c = c18289d;
        this.f51769d = abstractC18342i0;
    }

    @Override // p193e.p194a.p1066n.AbstractC18319d2
    /* renamed from: a */
    public Object mo15287a(d<? super BackupResult> dVar) {
        String mo15160a = this.f51769d.mo15160a(BackupFile.SETTINGS, null);
        if (mo15160a != null) {
            List S0 = i.S0(this.f51768c.f51720f.values());
            ArrayList arrayList = new ArrayList();
            for (Object obj : S0) {
                if (Boolean.valueOf(((AbstractC18438v) obj).mo14935a()).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC18438v abstractC18438v = (AbstractC18438v) it.next();
                arrayList2.add(new BackupSettingItem(abstractC18438v.getKey(), abstractC18438v.getValue()));
            }
            arrayList2.size();
            AbstractC18249a1 abstractC18249a1 = this.f51767b;
            String m = this.f51766a.m(arrayList2);
            l.d(m, "gson.toJson(settingsAsPairs)");
            byte[] bytes = m.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            return abstractC18249a1.mo15334f(mo15160a, bytes, dVar);
        }
        return BackupResult.ErrorFileName;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // p193e.p194a.p1066n.AbstractC18319d2
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo15286b(java.lang.String r6, s1.w.d<? super s1.k<? extends com.truecaller.backup.BackupResult, ? extends java.util.Set<? extends com.truecaller.backup.AfterRestoreBehaviorFlag>>> r7) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1066n.C18323e2.mo15286b(java.lang.String, s1.w.d):java.lang.Object");
    }
}
