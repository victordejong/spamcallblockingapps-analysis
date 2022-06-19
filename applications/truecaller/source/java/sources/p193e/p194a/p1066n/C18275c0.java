package p193e.p194a.p1066n;

import android.text.format.DateFormat;
import com.truecaller.C2752R;
import java.util.Date;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.backup.BackupSettingsPresenter$showLastBackupTime$1", f = "BackupSettingsPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.n.c0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/c0.class */
public final class C18275c0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C18259b0 f51643e;

    /* renamed from: f */
    public final /* synthetic */ long f51644f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18275c0(C18259b0 c18259b0, long j, d dVar) {
        super(2, dVar);
        this.f51643e = c18259b0;
        this.f51644f = j;
    }

    /* renamed from: i */
    public final d<s> m15342i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18275c0(this.f51643e, this.f51644f, dVar);
    }

    /* renamed from: k */
    public final Object m15341k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18259b0 c18259b0 = this.f51643e;
        long j = this.f51644f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (j > 0) {
            Date date = new Date(j);
            String string = c18259b0.f51601e.getString(C2752R.string.backup_settings_last_backup, DateFormat.getDateFormat(c18259b0.f51601e).format(date), DateFormat.getTimeFormat(c18259b0.f51601e).format(date));
            l.d(string, "presenterContext.getStri…_last_backup, date, time)");
            AbstractC18453z abstractC18453z = (AbstractC18453z) c18259b0.f57683a;
            if (abstractC18453z != null) {
                abstractC18453z.mo14948Ul(string);
            }
        } else {
            s1.a.l[] lVarArr = C18259b0.f51597p;
            AbstractC18453z abstractC18453z2 = (AbstractC18453z) c18259b0.f57683a;
            if (abstractC18453z2 != null) {
                abstractC18453z2.mo14948Ul(null);
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m15340s(Object obj) {
        C25225a.m3932a3(obj);
        if (this.f51644f > 0) {
            Date date = new Date(this.f51644f);
            String string = this.f51643e.f51601e.getString(C2752R.string.backup_settings_last_backup, DateFormat.getDateFormat(this.f51643e.f51601e).format(date), DateFormat.getTimeFormat(this.f51643e.f51601e).format(date));
            l.d(string, "presenterContext.getStri…_last_backup, date, time)");
            AbstractC18453z abstractC18453z = (AbstractC18453z) this.f51643e.f57683a;
            if (abstractC18453z != null) {
                abstractC18453z.mo14948Ul(string);
            }
        } else {
            C18259b0 c18259b0 = this.f51643e;
            s1.a.l[] lVarArr = C18259b0.f51597p;
            AbstractC18453z abstractC18453z2 = (AbstractC18453z) c18259b0.f57683a;
            if (abstractC18453z2 != null) {
                abstractC18453z2.mo14948Ul(null);
            }
        }
        return s.a;
    }
}
