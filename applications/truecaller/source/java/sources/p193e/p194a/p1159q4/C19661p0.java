package p193e.p194a.p1159q4;

import android.os.AsyncTask;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p1334w.p1336b.AsyncTaskC21177a;
import p193e.p194a.p1334w.p1336b.p1338d.C21183a;
/* renamed from: e.a.q4.p0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/p0.class */
public class C19661p0 {

    /* renamed from: a */
    public final AbstractC21179b f54611a;

    /* renamed from: b */
    public final C21183a f54612b;

    public C19661p0(AbstractC21179b abstractC21179b, C21183a c21183a) {
        this.f54611a = abstractC21179b;
        this.f54612b = c21183a;
    }

    /* renamed from: a */
    public void m13048a(AsyncTaskC21177a.AbstractC21178a abstractC21178a) {
        new AsyncTaskC21177a(this.f54611a, this.f54612b, abstractC21178a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
