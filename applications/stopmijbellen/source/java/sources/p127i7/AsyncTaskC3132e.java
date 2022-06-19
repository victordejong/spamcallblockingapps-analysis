package p127i7;

import java.util.HashSet;
import org.json.JSONObject;
import p008a7.C0042i;
import p032c7.C0848a;
import p105g7.AbstractC2907a;
import p127i7.AbstractAsyncTaskC3127b;
import p291y.C4951d;
/* renamed from: i7.e */
/* loaded from: classes-dex2jar.jar:i7/e.class */
public class AsyncTaskC3132e extends AbstractAsyncTaskC3126a {
    public AsyncTaskC3132e(AbstractAsyncTaskC3127b.AbstractC3129b abstractC3129b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC3129b, hashSet, jSONObject, j);
    }

    @Override // p127i7.AbstractAsyncTaskC3127b
    /* renamed from: a */
    public void onPostExecute(String str) {
        C0848a c0848a = C0848a.f3130c;
        if (c0848a != null) {
            for (C0042i c0042i : c0848a.m7280a()) {
                if (this.f10566c.contains(c0042i.f95h)) {
                    AbstractC2907a abstractC2907a = c0042i.f92e;
                    if (this.f10568e >= abstractC2907a.f9806e && abstractC2907a.f9805d != 3) {
                        abstractC2907a.f9805d = 3;
                        C4951d.f15103a.m201b(abstractC2907a.m2859f(), "setNativeViewHierarchy", str);
                    }
                }
            }
        }
        AbstractAsyncTaskC3127b.AbstractC3128a abstractC3128a = this.f10569a;
        if (abstractC3128a != null) {
            C3130c c3130c = (C3130c) abstractC3128a;
            c3130c.f10573c = null;
            c3130c.m2591a();
        }
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Object[] objArr) {
        return this.f10567d.toString();
    }
}
