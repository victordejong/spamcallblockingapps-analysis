package p127i7;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
import p008a7.C0042i;
import p032c7.C0848a;
import p082e7.C2604a;
import p105g7.AbstractC2907a;
import p116h7.C3023d;
import p127i7.AbstractAsyncTaskC3127b;
import p291y.C4951d;
/* renamed from: i7.f */
/* loaded from: classes-dex2jar.jar:i7/f.class */
public class AsyncTaskC3133f extends AbstractAsyncTaskC3126a {
    public AsyncTaskC3133f(AbstractAsyncTaskC3127b.AbstractC3129b abstractC3129b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC3129b, hashSet, jSONObject, j);
    }

    @Override // p127i7.AbstractAsyncTaskC3127b
    /* renamed from: a */
    public void onPostExecute(String str) {
        C0848a c0848a;
        if (!TextUtils.isEmpty(str) && (c0848a = C0848a.f3130c) != null) {
            for (C0042i c0042i : c0848a.m7280a()) {
                if (this.f10566c.contains(c0042i.f95h)) {
                    AbstractC2907a abstractC2907a = c0042i.f92e;
                    if (this.f10568e >= abstractC2907a.f9806e) {
                        abstractC2907a.f9805d = 2;
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
        String str;
        if (C2604a.m3385g(this.f10567d, ((C3023d) this.f10570b).f10140a)) {
            str = null;
        } else {
            AbstractAsyncTaskC3127b.AbstractC3129b abstractC3129b = this.f10570b;
            JSONObject jSONObject = this.f10567d;
            ((C3023d) abstractC3129b).f10140a = jSONObject;
            str = jSONObject.toString();
        }
        return str;
    }
}
