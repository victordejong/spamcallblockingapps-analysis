package p193e.p194a.p1221t.p1222a.p1223a;

import android.content.Context;
import android.content.SharedPreferences;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFilter;
import com.tenor.android.core.network.ApiClient;
import com.tenor.android.core.network.ApiService;
import com.tenor.android.core.network.IApiClient;
import com.tenor.android.core.response.impl.GifsResponse;
import com.tenor.android.core.response.impl.TrendingGifResponse;
import com.truecaller.android.truemoji.C2886R;
import e.m.d.y.n;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.k;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.t.a.a.u */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/u.class */
public final class C20269u implements AbstractC20268t {

    /* renamed from: a */
    public b<GifsResponse> f57045a;

    /* renamed from: b */
    public String f57046b = "";

    /* renamed from: c */
    public final g f57047c = C25225a.m3978P1(new C20270a());

    /* renamed from: d */
    public final Context f57048d;

    /* renamed from: e */
    public final boolean f57049e;

    /* renamed from: e.a.t.a.a.u$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/u$a.class */
    public static final class C20270a extends m implements a<IApiClient> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20270a() {
            super(0);
            C20269u.this = r4;
        }

        public Object invoke() {
            C20269u c20269u = C20269u.this;
            Context context = c20269u.f57048d;
            ApiClient.init(context, new ApiService.Builder(context, IApiClient.class).apiKey(c20269u.f57048d.getString(C2886R.string.TenorApiKey)));
            IApiClient apiClient = ApiClient.getInstance(C20269u.this.f57048d);
            l.d(apiClient, "ApiClient.getInstance(context)");
            return apiClient;
        }
    }

    /* renamed from: e.a.t.a.a.u$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/u$b.class */
    public static final class C20271b implements d<TrendingGifResponse> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC20267s f57051a;

        public C20271b(AbstractC20267s abstractC20267s) {
            this.f57051a = abstractC20267s;
        }

        public void onFailure(b<TrendingGifResponse> bVar, Throwable th) {
            l.e(bVar, "call");
            l.e(th, "t");
            this.f57051a.mo11298a(th);
        }

        public void onResponse(b<TrendingGifResponse> bVar, a0<TrendingGifResponse> a0Var) {
            l.e(bVar, "call");
            l.e(a0Var, "response");
            TrendingGifResponse trendingGifResponse = (TrendingGifResponse) a0Var.b;
            if (!a0Var.b() || trendingGifResponse == null) {
                this.f57051a.mo11298a(null);
            } else {
                this.f57051a.onSuccess(n.b(trendingGifResponse, 0));
            }
        }
    }

    /* renamed from: e.a.t.a.a.u$c */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/u$c.class */
    public static final class C20272c implements d<GifsResponse> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC20267s f57053b;

        public C20272c(AbstractC20267s abstractC20267s) {
            C20269u.this = r4;
            this.f57053b = abstractC20267s;
        }

        public void onFailure(b<GifsResponse> bVar, Throwable th) {
            l.e(bVar, "call");
            l.e(th, "t");
            if (!bVar.isCanceled()) {
                this.f57053b.mo11298a(th);
            }
        }

        public void onResponse(b<GifsResponse> bVar, a0<GifsResponse> a0Var) {
            l.e(bVar, "call");
            l.e(a0Var, "response");
            GifsResponse gifsResponse = (GifsResponse) a0Var.b;
            if (!a0Var.b() || gifsResponse == null) {
                if (bVar.isCanceled()) {
                    return;
                }
                this.f57053b.mo11298a(null);
                return;
            }
            List results = gifsResponse.getResults();
            l.d(results, "gifsResponse.results");
            if (!results.isEmpty()) {
                C20269u c20269u = C20269u.this;
                String next = gifsResponse.getNext();
                l.d(next, "gifsResponse.next");
                c20269u.f57046b = next;
            }
            this.f57053b.onSuccess(n.b(gifsResponse, 1));
        }
    }

    @Inject
    public C20269u(Context context, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f57048d = context;
        this.f57049e = z;
    }

    /* renamed from: f */
    public static Map m11292f(C20269u c20269u, String str, int i) {
        String str2 = (i & 1) != 0 ? "high" : null;
        Map<String, String> serviceIds = ApiClient.getServiceIds(c20269u.f57048d);
        l.d(serviceIds, "ApiClient.getServiceIds(context)");
        return i.p0(serviceIds, new k("contentfilter", str2));
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20268t
    /* renamed from: a */
    public boolean mo11297a() {
        boolean z = false;
        if (!this.f57049e) {
            z = true;
        } else {
            SharedPreferences sharedPreferences = this.f57048d.getSharedPreferences("emoji", 0);
            if (sharedPreferences != null) {
                z = sharedPreferences.getBoolean("tenor_user_consent", false);
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20268t
    /* renamed from: b */
    public void mo11296b(String str, int i, boolean z, AbstractC20267s<List<C20246f>> abstractC20267s) {
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(abstractC20267s, "callback");
        b<GifsResponse> bVar = this.f57045a;
        if (bVar != null) {
            bVar.cancel();
        }
        if (!z) {
            this.f57046b = "";
        }
        b<GifsResponse> search = ((IApiClient) this.f57047c.getValue()).search(m11292f(this, null, 1), str, i, this.f57046b, MediaFilter.BASIC, "all");
        l.d(search, "apiClient.search(\n      …tRatioRange.ALL\n        )");
        this.f57045a = search;
        search.enqueue(new C20272c(abstractC20267s));
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20268t
    /* renamed from: c */
    public void mo11295c(int i, AbstractC20267s<List<C20246f>> abstractC20267s) {
        l.e(abstractC20267s, "callback");
        ((IApiClient) this.f57047c.getValue()).getTrending(m11292f(this, null, 1), Integer.valueOf(i), "", MediaFilter.BASIC, "all").enqueue(new C20271b(abstractC20267s));
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20268t
    /* renamed from: d */
    public void mo11294d(boolean z) {
        SharedPreferences.Editor edit;
        SharedPreferences.Editor putBoolean;
        SharedPreferences sharedPreferences = this.f57048d.getSharedPreferences("emoji", 0);
        if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null || (putBoolean = edit.putBoolean("tenor_user_consent", z)) == null) {
            return;
        }
        putBoolean.apply();
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20268t
    /* renamed from: e */
    public void mo11293e(String str, String str2) {
        l.e(str, "gifId");
        ApiClient.registerShare(this.f57048d, str, str2);
    }
}
