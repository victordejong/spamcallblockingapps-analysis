package p081h.p082a.p083a.p088n;

import android.content.res.Resources;
import java.io.InputStream;
import p081h.p082a.p083a.AbstractC5352h;
import p081h.p082a.p083a.C5341e;
/* renamed from: h.a.a.n.e */
/* loaded from: classes-dex2jar.jar:h/a/a/n/e.class */
public final class AsyncTaskC5408e extends AbstractAsyncTaskC5404b<InputStream> {

    /* renamed from: a */
    public final Resources f13552a;

    /* renamed from: b */
    public final AbstractC5352h f13553b;

    public AsyncTaskC5408e(Resources resources, AbstractC5352h hVar) {
        this.f13552a = resources;
        this.f13553b = hVar;
    }

    /* renamed from: a */
    public C5341e doInBackground(InputStream... inputStreamArr) {
        return C5341e.C5343b.m25625a(this.f13552a, inputStreamArr[0]);
    }

    /* renamed from: a */
    public void onPostExecute(C5341e eVar) {
        this.f13553b.mo25575a(eVar);
    }
}
