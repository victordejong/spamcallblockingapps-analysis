package com.taiwanmobile.p055pt.adp.view.p056a;

import android.content.Context;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.e */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/e.class */
public class C4142e implements AbstractC15238d<ResponseBody> {

    /* renamed from: a */
    public static final String f9903a = "e";

    /* renamed from: b */
    public AbstractC4126b f9904b;
    public WeakReference<Context> contextRef;

    /* renamed from: c */
    public String f9905c = "<p>Invalid ad request parameters</p>";

    /* renamed from: d */
    public String f9906d = null;

    /* renamed from: e */
    public boolean f9907e = false;

    public C4142e(Context context, AbstractC4126b bVar) {
        this.contextRef = null;
        this.contextRef = new WeakReference<>(context);
        this.f9904b = bVar;
    }

    public String getHtmlContent() {
        return this.f9906d;
    }

    public boolean isReady() {
        return this.f9907e;
    }

    @Override // p655o.AbstractC15238d
    public void onFailure(AbstractC15235b<ResponseBody> bVar, Throwable th) {
        String str = f9903a;
        C10831c.m10520b(str, "Exception: " + th.getClass().getName());
        this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NETWORK_ERROR);
    }

    @Override // p655o.AbstractC15238d
    public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
        if (rVar.m90d()) {
            try {
                if (rVar.m95a() != null) {
                    this.f9906d = rVar.m95a().string();
                    if (this.f9906d != null && !"".equals(this.f9906d)) {
                        if (this.f9905c.equals(this.f9906d)) {
                            C10831c.m10518c(f9903a, "onResponse: UCFunnel paramters is not correct.");
                            this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NO_FILL);
                        } else {
                            this.f9907e = true;
                        }
                    }
                    C10831c.m10518c(f9903a, "onResponse: UCFunnel ad is empty.");
                    this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NO_FILL);
                } else {
                    C10831c.m10518c(f9903a, "onResponse: UCFunnel ad is empty.");
                    this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NO_FILL);
                }
            } catch (Exception e) {
                String str = f9903a;
                C10831c.m10521a(str, "onResponse Exception: " + e.getMessage(), e);
                this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NO_FILL);
            }
        } else {
            this.f9904b.mo29382a(FavoriteGroupRealmObject.PARENDID_DELETED, TWMAdRequest.ErrorCode.NO_FILL);
        }
    }
}
