package p193e.p194a.p1129p5;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.utils.MediaStoreUtil$queryFiles$2", f = "MediaStoreUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p5.r */
/* loaded from: classes15-dex2jar.jar:e/a/p5/r.class */
public final class C19262r extends i implements p<i0, d<? super List<Uri>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ String[] f53642e;

    /* renamed from: f */
    public final /* synthetic */ Context f53643f;

    /* renamed from: g */
    public final /* synthetic */ Uri f53644g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19262r(String[] strArr, Context context, Uri uri, d dVar) {
        super(2, dVar);
        this.f53642e = strArr;
        this.f53643f = context;
        this.f53644g = uri;
    }

    /* renamed from: i */
    public final d<s> m13728i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19262r(this.f53642e, this.f53643f, this.f53644g, dVar);
    }

    /* renamed from: k */
    public final Object m13727k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19262r(this.f53642e, this.f53643f, this.f53644g, dVar).m13726s(s.a);
    }

    /* renamed from: s */
    public final Object m13726s(Object obj) {
        String[] strArr;
        C25225a.m3932a3(obj);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f53642e) {
            Context applicationContext = this.f53643f.getApplicationContext();
            l.d(applicationContext, "context.applicationContext");
            Cursor query = applicationContext.getContentResolver().query(this.f53644g, new String[]{"_id", "_display_name"}, "_display_name=?", new String[]{str}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        Uri build = this.f53644g.buildUpon().appendPath(query.getString(0)).build();
                        l.d(build, "uri.buildUpon().appendPath(id).build()");
                        arrayList.add(build);
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
                th = null;
            }
        }
        return arrayList;
    }
}
