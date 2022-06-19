package p193e.p194a.p1193r5;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.whoviewedme.ProfileViewSource;
import com.truecaller.whoviewedme.ProfileViewType;
import java.util.ArrayList;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.r5.n */
/* loaded from: classes8-dex2jar.jar:e/a/r5/n.class */
public final class C19965n implements AbstractC19955j {

    /* renamed from: a */
    public final Uri f56459a = C17891a1.C17902k.m15669J();

    /* renamed from: b */
    public final Uri f56460b = C17891a1.C17902k.m15638W();

    /* renamed from: c */
    public final ContentResolver f56461c;

    /* renamed from: d */
    public final AbstractC19222c f56462d;

    /* renamed from: e */
    public final f f56463e;

    @Inject
    public C19965n(ContentResolver contentResolver, AbstractC19222c abstractC19222c, @Named("IO") f fVar) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC19222c, "clock");
        l.e(fVar, "asyncContext");
        this.f56461c = contentResolver;
        this.f56462d = abstractC19222c;
        this.f56463e = fVar;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public int m11727a(long j, ProfileViewSource profileViewSource) {
        ProfileViewType profileViewType = ProfileViewType.INCOMING;
        int i = 0;
        Cursor query = this.f56461c.query(this.f56459a, new String[]{"count(0) as count"}, profileViewSource != null ? "type = ? AND source = ? AND timestamp >= ?" : "type = ? AND timestamp >= ?", profileViewSource != null ? new String[]{profileViewType.name(), profileViewSource.name(), String.valueOf(j)} : new String[]{profileViewType.name(), String.valueOf(j)}, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Integer.valueOf(C19291g.m13520q0(query, "count")));
                }
            }
            C25225a.m4016G(query, null);
            Integer num = (Integer) i.D(arrayList);
            if (num != null) {
                i = num.intValue();
            }
            return i;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: b */
    public final void m11726b(String str, ProfileViewSource profileViewSource, ProfileViewType profileViewType) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tc_id", str);
        contentValues.put("timestamp", Long.valueOf(this.f56462d.mo13819c()));
        contentValues.put("type", profileViewType.name());
        contentValues.put("source", profileViewSource.name());
        this.f56461c.insert(C17891a1.C17902k.m15669J(), contentValues);
    }
}
