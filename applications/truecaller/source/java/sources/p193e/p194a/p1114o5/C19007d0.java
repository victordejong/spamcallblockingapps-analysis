package p193e.p194a.p1114o5;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.p1057c1.AbstractC18063h0;
import p193e.p194a.p1053m0.p1057c1.C18071l0;
import p193e.p194a.p1129p5.C19271s;
import q3.a.i0;
import q3.a.t0;
import s1.f0.b;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.util.DbSchemaDumper$sendAsIntentAsync$1", f = "DbSchemaDumper.kt", l = {23}, m = "invokeSuspend")
/* renamed from: e.a.o5.d0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/d0.class */
public final class C19007d0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53126e;

    /* renamed from: f */
    public final /* synthetic */ Context f53127f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19007d0(Context context, d dVar) {
        super(2, dVar);
        this.f53127f = context;
    }

    /* renamed from: i */
    public final d<s> m14262i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19007d0(this.f53127f, dVar);
    }

    /* renamed from: k */
    public final Object m14261k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19007d0(this.f53127f, dVar).m14260s(s.a);
    }

    /* renamed from: s */
    public final Object m14260s(Object obj) {
        a aVar = a.a;
        int i = this.f53126e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String str = "tcDbSchema_v210_" + System.currentTimeMillis() + ".dump";
            AbstractC18063h0[] m15501d = C18071l0.m15501d();
            ArrayList arrayList = new ArrayList();
            for (AbstractC18063h0 abstractC18063h0 : m15501d) {
                l.d(abstractC18063h0, "it");
                String[] mo15498a = abstractC18063h0.mo15498a();
                l.d(mo15498a, "it.createStatements");
                s1.u.i.b(arrayList, s1.u.i.g(mo15498a));
            }
            ArrayList arrayList2 = new ArrayList();
            for (AbstractC18063h0 abstractC18063h02 : m15501d) {
                l.d(abstractC18063h02, "it");
                String[] mo15496c = abstractC18063h02.mo15496c();
                l.d(mo15496c, "it.createViewsStatements");
                s1.u.i.b(arrayList2, s1.u.i.g(mo15496c));
            }
            String O = s1.u.i.O(s1.u.i.l0(arrayList, arrayList2), "\n-- END --\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
            Context context = this.f53127f;
            byte[] bytes = O.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            this.f53126e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C19271s(context, str, bytes, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Uri uri = (Uri) obj;
        if (uri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("application/binary");
            intent.putExtra("android.intent.extra.STREAM", uri);
            this.f53127f.startActivity(intent);
            return s.a;
        }
        throw new IOException("Could not save file into Downloads folder");
    }
}
