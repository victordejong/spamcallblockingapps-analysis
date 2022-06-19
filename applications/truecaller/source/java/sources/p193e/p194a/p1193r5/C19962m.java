package p193e.p194a.p1193r5;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.data.entity.Contact;
import com.truecaller.whoviewedme.ProfileViewSource;
import com.truecaller.whoviewedme.ProfileViewType;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p997k3.p998j.C16463d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.whoviewedme.ProfileViewDaoImpl$getAllIncomingProfileViews$2", f = "ProfileViewDao.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.r5.m */
/* loaded from: classes8-dex2jar.jar:e/a/r5/m.class */
public final class C19962m extends i implements p<i0, d<? super List<? extends C19969o>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19965n f56453e;

    /* renamed from: f */
    public final /* synthetic */ ProfileViewSource f56454f;

    /* renamed from: g */
    public final /* synthetic */ long f56455g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19962m(C19965n c19965n, ProfileViewSource profileViewSource, long j, d dVar) {
        super(2, dVar);
        this.f56453e = c19965n;
        this.f56454f = profileViewSource;
        this.f56455g = j;
    }

    /* renamed from: i */
    public final d<s> m11733i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19962m(this.f56453e, this.f56454f, this.f56455g, dVar);
    }

    /* renamed from: k */
    public final Object m11732k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19962m(this.f56453e, this.f56454f, this.f56455g, dVar).m11731s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m11731s(Object obj) {
        s1.u.s z;
        C19969o c19969o;
        ProfileViewSource profileViewSource;
        C25225a.m3932a3(obj);
        C19965n c19965n = this.f56453e;
        ContentResolver contentResolver = c19965n.f56461c;
        Uri uri = c19965n.f56460b;
        ProfileViewSource profileViewSource2 = this.f56454f;
        String str = profileViewSource2 != null ? "source = ? AND timestamp >= ?" : "timestamp >= ?";
        Object[] array = s1.u.i.V(new String[]{profileViewSource2 != null ? profileViewSource2.name() : null, String.valueOf(this.f56455g)}).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor query = contentResolver.query(uri, null, str, (String[]) array, "timestamp DESC");
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    C16463d c16463d = new C16463d(query);
                    Contact m17354g = c16463d.m17354g(query);
                    if (m17354g != null) {
                        c16463d.m17355f(query, m17354g);
                    } else {
                        m17354g = null;
                    }
                    if (m17354g != null) {
                        long m13632E0 = C19291g.m13632E0(query, "rowid");
                        long m13632E02 = C19291g.m13632E0(query, "timestamp");
                        ProfileViewType profileViewType = ProfileViewType.INCOMING;
                        String m13628F1 = C19291g.m13628F1(query, "source");
                        if (m13628F1 != null) {
                            Objects.requireNonNull(this.f56453e);
                            try {
                                profileViewSource = ProfileViewSource.valueOf(m13628F1);
                            } catch (IllegalArgumentException e) {
                                profileViewSource = null;
                            }
                        } else {
                            profileViewSource = null;
                        }
                        c19969o = new C19969o(m13632E0, m13632E02, profileViewType, profileViewSource, m17354g);
                    } else {
                        c19969o = null;
                    }
                    arrayList.add(c19969o);
                }
                C25225a.m4016G(query, null);
                z = s1.u.i.z(arrayList);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            z = s1.u.s.a;
        }
        return z;
    }
}
