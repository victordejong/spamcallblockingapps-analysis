package p081h.p415j.p416a.p417a.p418a.p426j.p427b;

import java.util.HashSet;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10627a;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b;
/* renamed from: h.j.a.a.a.j.b.e */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/e.class */
public class AsyncTaskC10665e extends AbstractAsyncTaskC10659a {
    public AsyncTaskC10665e(AbstractAsyncTaskC10660b.AbstractC10662b bVar, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(bVar, hashSet, jSONObject, d);
    }

    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        return this.f24256d.toString();
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b
    /* renamed from: a */
    public void onPostExecute(String str) {
        m11026b(str);
        super.onPostExecute(str);
    }

    /* renamed from: b */
    public final void m11026b(String str) {
        C10627a d = C10627a.m11148d();
        if (d != null) {
            for (C10626i iVar : d.m11154a()) {
                if (this.f24255c.contains(iVar.m11158i())) {
                    iVar.m11157j().m11065b(str, this.f24257e);
                }
            }
        }
    }
}
