package p131c.p372f.p373a.p374a.p375a.p387p.p388c;

import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import java.util.HashSet;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6453a;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b;
/* renamed from: c.f.a.a.a.p.c.e */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/c/e.class */
public class AsyncTaskC6469e extends AbstractAsyncTaskC6463a {
    public AsyncTaskC6469e(AbstractAsyncTaskC6464b.AbstractC6466b bVar, C6425a aVar, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(bVar, aVar, hashSet, jSONObject, d);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b
    /* renamed from: a */
    public void onPostExecute(String str) {
        for (InternalAvidAdSession internalAvidAdSession : this.f20155c.m20906a()) {
            if (this.f20156d.contains(internalAvidAdSession.m5454b())) {
                internalAvidAdSession.m5456a(str, this.f20158f);
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Object... objArr) {
        return C6453a.m20840f(C6454b.m20833a(this.f20157e, this.f20158f).toString());
    }
}
