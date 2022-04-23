package p459j.p460a.p513i;

import kotlin.Metadata;
import p081h.p203i.p384e.C10107m;
import p459j.p460a.p576w.p578o.C13798e;
import p459j.p460a.p576w.p578o.C13800g;
import p459j.p460a.p576w.p578o.C13804j;
import p626l.p634w.AbstractC15044d;
import p655o.C15299r;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15318f;
import p655o.p658y.AbstractC15325m;
import p655o.p658y.AbstractC15329q;
import p655o.p658y.AbstractC15330r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018�� \u00112\u00020\u0001:\u0001\u0011J\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@ø\u0001��¢\u0006\u0002\u0010\u0005J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0001\u0010\b\u001a\u00020\tH§@ø\u0001��¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0001\u0010\b\u001a\u00020\tH§@ø\u0001��¢\u0006\u0002\u0010\nJ!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00032\b\b\u0001\u0010\u000e\u001a\u00020\u000fH§@ø\u0001��¢\u0006\u0002\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/api/GgpApiService;", "", "getOrderStatus", "Lretrofit2/Response;", "Lgogolook/callgogolook2/iap/model/SubscriptionStatus;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPlans", "Lgogolook/callgogolook2/iap/model/Plans;", "region", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getUserProducts", "verifyPurchaseToken", "Lcom/google/gson/JsonObject;", "tokenVerify", "Lgogolook/callgogolook2/iap/model/IapTokenVerify;", "(Lgogolook/callgogolook2/iap/model/IapTokenVerify;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i.c */
/* loaded from: classes2-dex2jar.jar:j/a/i/c.class */
public interface AbstractC12404c {

    /* renamed from: j.a.i.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/i/c$a.class */
    public static final class C12405a {

        /* renamed from: a */
        public static final /* synthetic */ C12405a f27984a = new C12405a();
    }

    static {
        C12405a aVar = C12405a.f27984a;
    }

    @AbstractC15325m("/iap/v1/market/googleplay/verify")
    /* renamed from: a */
    Object m6235a(@AbstractC15313a C13798e eVar, AbstractC15044d<? super C15299r<C10107m>> dVar);

    @AbstractC15318f("user/v1/products")
    /* renamed from: a */
    Object m6234a(@AbstractC15330r("region") String str, AbstractC15044d<? super C15299r<C13800g>> dVar);

    @AbstractC15318f("/iap/v1/market/googleplay/order_status")
    /* renamed from: a */
    Object m6233a(AbstractC15044d<? super C15299r<C13804j>> dVar);

    @AbstractC15318f("plan/v1/{region}")
    /* renamed from: b */
    Object m6232b(@AbstractC15329q("region") String str, AbstractC15044d<? super C15299r<C13800g>> dVar);
}
