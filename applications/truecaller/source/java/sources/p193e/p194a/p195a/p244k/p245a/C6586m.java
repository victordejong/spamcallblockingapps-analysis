package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import e.m.f.a.j;
import java.util.ArrayList;
import javax.inject.Inject;
import o3.a;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.m */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/m.class */
public final class C6586m implements AbstractC6583l {

    /* renamed from: a */
    public final AbstractC18951b0 f21706a;

    /* renamed from: b */
    public final ContentResolver f21707b;

    /* renamed from: c */
    public final AbstractC6392i0 f21708c;

    /* renamed from: d */
    public final AbstractC6543e1 f21709d;

    /* renamed from: e */
    public final AbstractC8432l f21710e;

    /* renamed from: f */
    public final AbstractC19022f0 f21711f;

    /* renamed from: g */
    public final a<AbstractC26857y> f21712g;

    /* renamed from: h */
    public final Context f21713h;

    @Inject
    public C6586m(AbstractC18951b0 abstractC18951b0, ContentResolver contentResolver, AbstractC6392i0 abstractC6392i0, AbstractC6543e1 abstractC6543e1, AbstractC8432l abstractC8432l, AbstractC19022f0 abstractC19022f0, a<AbstractC26857y> aVar, Context context) {
        l.e(abstractC18951b0, "dateHelper");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6392i0, "messagingSettings");
        l.e(abstractC6543e1, "imUserManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19022f0, "deviceManager");
        l.e(aVar, "workManager");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f21706a = abstractC18951b0;
        this.f21707b = contentResolver;
        this.f21708c = abstractC6392i0;
        this.f21709d = abstractC6543e1;
        this.f21710e = abstractC8432l;
        this.f21711f = abstractC19022f0;
        this.f21712g = aVar;
        this.f21713h = context;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6583l
    /* renamed from: a */
    public void mo30734a() {
        boolean z = false;
        Cursor query = this.f21707b.query(C17891a1.C17899h.m15701a(), new String[]{"DISTINCT(data1)"}, "data_type = ? AND data_phonebook_id NOT NULL AND data8 = ?", new String[]{String.valueOf(4), j.d.b.name()}, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                C25225a.m4016G(query, null);
                if (arrayList.isEmpty()) {
                    return;
                }
                if (this.f21708c.mo31053j0() > 0) {
                    this.f21709d.mo30789c(arrayList);
                    return;
                }
                Boolean mo11831c = this.f21709d.mo30791a(arrayList, false).mo11831c();
                if (mo11831c != null) {
                    z = mo11831c.booleanValue();
                }
                if (!z) {
                    return;
                }
                this.f21708c.mo31055i4(this.f21706a.mo14293b());
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6583l
    /* renamed from: b */
    public void mo30733b() {
        Object obj = this.f21712g.get();
        l.d(obj, "workManager.get()");
        C21782c.m9083c((AbstractC26857y) obj, "FetchImContactsWorkAction", this.f21713h, null, null, 12);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6583l
    public boolean isEnabled() {
        return this.f21710e.mo28580d() && this.f21711f.mo14233m();
    }
}
