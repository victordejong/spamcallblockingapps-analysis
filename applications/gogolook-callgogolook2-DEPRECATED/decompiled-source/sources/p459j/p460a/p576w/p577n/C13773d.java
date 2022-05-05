package p459j.p460a.p576w.p577n;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.TsExtractor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import io.realm.RealmList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p081h.p093b.p094a.p095a.C5547g;
import p081h.p093b.p094a.p095a.C5552i;
import p081h.p203i.p384e.C10107m;
import p459j.p460a.p513i.AbstractC12398a;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.AbstractC12404c;
import p459j.p460a.p513i.C12407e;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p576w.C13734e;
import p459j.p460a.p576w.C13748f;
import p459j.p460a.p576w.C13751h;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p576w.p578o.C13798e;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13992e4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.p586c5.C13952a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.C14967x;
import p626l.p632u.C15021m;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p655o.C15299r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� G2\u00020\u0001:\u0002GHB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010#\u001a\u00020$2\u0006\u0010\u001a\u001a\u00020\tH\u0007J\b\u0010%\u001a\u00020\"H\u0007J\u0006\u0010&\u001a\u00020\"J\u0006\u0010'\u001a\u00020\"J\u0006\u0010(\u001a\u00020\"J\u0019\u0010)\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010*H\u0082@ø\u0001��¢\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020$2\u0006\u0010-\u001a\u00020.H\u0002J.\u00100\u001a\u00020\"2\f\u00101\u001a\b\u0012\u0004\u0012\u00020.0*2\u0016\b\u0002\u00102\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\"\u0018\u00010!H\u0002J*\u00103\u001a\u00020\"2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u000109H\u0007J\u001c\u0010;\u001a\b\u0012\u0004\u0012\u0002090*2\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\t0*H\u0002J\b\u0010=\u001a\u00020\"H\u0002J\u0010\u0010>\u001a\u00020\"2\u0006\u0010-\u001a\u00020.H\u0002J\b\u0010?\u001a\u00020\"H\u0002J\u0010\u0010@\u001a\u00020\"2\u0006\u0010A\u001a\u00020\u000bH\u0002J\u0016\u0010B\u001a\u00020\"2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020D0*H\u0007J.\u0010E\u001a\u00020\"2\u0006\u0010-\u001a\u00020.2\u0006\u0010F\u001a\u00020$2\u0014\u00102\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\"\u0018\u00010!H\u0002R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0019\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u001b¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001b¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u001dR\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\"0!X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006I"}, m815d2 = {"Lgogolook/callgogolook2/iap/data/IapRepository;", "", "context", "Landroid/content/Context;", "billingClientManager", "Lgogolook/callgogolook2/iap/BillingClientManager;", "(Landroid/content/Context;Lgogolook/callgogolook2/iap/BillingClientManager;)V", "_plan", "Landroidx/lifecycle/MutableLiveData;", "Lgogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject;", "_resultState", "Lgogolook/callgogolook2/iap/data/IapRepository$State;", "appContext", "kotlin.jvm.PlatformType", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "getCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "coroutineScope$delegate", "Lkotlin/Lazy;", "<set-?>", "currentResultState", "getCurrentResultState", "()Lgogolook/callgogolook2/iap/data/IapRepository$State;", "setCurrentResultState", "(Lgogolook/callgogolook2/iap/data/IapRepository$State;)V", "plan", "Landroidx/lifecycle/LiveData;", "getPlan", "()Landroidx/lifecycle/LiveData;", "resultState", "getResultState", "updateAndSendStateEvent", "Lkotlin/Function1;", "", "checkPlanProductsComplete", "", "clearLiveData", "endDataSourceConnection", "fetchIapDataSource", "forceVerifyPurchaseToken", "getAvailablePlans", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasTokenUploaded", "purchase", "Lcom/android/billingclient/api/Purchase;", "isSignatureValid", "processPurchases", "purchasesResult", "updateStateCallback", "purchaseSubscription", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "productObject", "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "source", "", "material", "querySkuParams", "availablePlans", "querySubSkuDetailsAsync", "saveUploadedTokenMd5", "startPremium", "updateResultState", "newState", "updateSkuDetails", "skuDetailsList", "Lcom/android/billingclient/api/SkuDetails;", "uploadPurchaseToken", "forceUpload", "Companion", "State", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.n.d */
/* loaded from: classes2-dex2jar.jar:j/a/w/n/d.class */
public final class C13773d {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f30916i;

    /* renamed from: j */
    public static volatile C13773d f30917j;

    /* renamed from: k */
    public static final C13774a f30918k = new C13774a(null);

    /* renamed from: a */
    public final MutableLiveData<IapPlanRealmObject> f30919a = new MutableLiveData<>();

    /* renamed from: b */
    public final LiveData<IapPlanRealmObject> f30920b = this.f30919a;

    /* renamed from: c */
    public final MutableLiveData<AbstractC13775b> f30921c = new MutableLiveData<>();

    /* renamed from: d */
    public final LiveData<AbstractC13775b> f30922d = this.f30921c;

    /* renamed from: e */
    public AbstractC13775b f30923e = AbstractC13775b.C13780e.f30933b;

    /* renamed from: f */
    public final AbstractC14974f f30924f = C14975g.m662a(C13781c.f30934a);

    /* renamed from: g */
    public final AbstractC15118l<AbstractC13775b, C14989s> f30925g = new C13789i();

    /* renamed from: h */
    public final C13734e f30926h;

    /* renamed from: j.a.w.n.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$a.class */
    public static final class C13774a {
        public C13774a() {
        }

        public /* synthetic */ C13774a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C13773d m3452a(Context context, C13734e eVar) {
            C13773d dVar;
            C15149k.m377b(context, "context");
            C15149k.m377b(eVar, "billingClientManager");
            C13773d dVar2 = C13773d.f30917j;
            if (dVar2 != null) {
                dVar = dVar2;
            } else {
                synchronized (this) {
                    C13773d dVar3 = C13773d.f30917j;
                    if (dVar3 != null) {
                        dVar = dVar3;
                    } else {
                        C13773d dVar4 = new C13773d(context, eVar);
                        C13773d.f30917j = dVar4;
                        dVar = dVar4;
                    }
                }
            }
            return dVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0005\u0007\b\t\n\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0005\f\r\u000e\u000f\u0010¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/iap/data/IapRepository$State;", "", "name", "", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "FetchResult", "PurchaseResult", "StartFetch", "StartPurchase", "Unknown", "Lgogolook/callgogolook2/iap/data/IapRepository$State$Unknown;", "Lgogolook/callgogolook2/iap/data/IapRepository$State$StartFetch;", "Lgogolook/callgogolook2/iap/data/IapRepository$State$StartPurchase;", "Lgogolook/callgogolook2/iap/data/IapRepository$State$FetchResult;", "Lgogolook/callgogolook2/iap/data/IapRepository$State$PurchaseResult;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.n.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b.class */
    public static abstract class AbstractC13775b {

        /* renamed from: a */
        public final String f30927a;

        /* renamed from: j.a.w.n.d$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b$a.class */
        public static final class C13776a extends AbstractC13775b {

            /* renamed from: b */
            public final int f30928b;

            public C13776a(int i) {
                super("FetchResult", null);
                this.f30928b = i;
            }

            /* renamed from: b */
            public final int m3450b() {
                return this.f30928b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C13776a)) {
                    return false;
                }
                return this.f30928b == ((C13776a) obj).f30928b;
            }

            public int hashCode() {
                int hashCode;
                hashCode = Integer.valueOf(this.f30928b).hashCode();
                return hashCode;
            }

            public String toString() {
                return "FetchResult(code=" + this.f30928b + ")";
            }
        }

        /* renamed from: j.a.w.n.d$b$b */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b$b.class */
        public static final class C13777b extends AbstractC13775b {

            /* renamed from: b */
            public final int f30929b;

            public C13777b(int i) {
                super("PurchaseResult", null);
                this.f30929b = i;
            }

            /* renamed from: b */
            public final int m3449b() {
                return this.f30929b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C13777b)) {
                    return false;
                }
                return this.f30929b == ((C13777b) obj).f30929b;
            }

            public int hashCode() {
                int hashCode;
                hashCode = Integer.valueOf(this.f30929b).hashCode();
                return hashCode;
            }

            public String toString() {
                return "PurchaseResult(code=" + this.f30929b + ")";
            }
        }

        /* renamed from: j.a.w.n.d$b$c */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b$c.class */
        public static final class C13778c extends AbstractC13775b {

            /* renamed from: b */
            public static final C13778c f30930b = new C13778c();

            public C13778c() {
                super("StartFetch", null);
            }
        }

        /* renamed from: j.a.w.n.d$b$d */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b$d.class */
        public static final class C13779d extends AbstractC13775b {

            /* renamed from: b */
            public final Activity f30931b;

            /* renamed from: c */
            public final PlanProductRealmObject f30932c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13779d(Activity activity, PlanProductRealmObject planProductRealmObject) {
                super("StartPurchase", null);
                C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                C15149k.m377b(planProductRealmObject, "productObject");
                this.f30931b = activity;
                this.f30932c = planProductRealmObject;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C13779d)) {
                    return false;
                }
                C13779d dVar = (C13779d) obj;
                return C15149k.m384a(this.f30931b, dVar.f30931b) && C15149k.m384a(this.f30932c, dVar.f30932c);
            }

            public int hashCode() {
                Activity activity = this.f30931b;
                int i = 0;
                int hashCode = activity != null ? activity.hashCode() : 0;
                PlanProductRealmObject planProductRealmObject = this.f30932c;
                if (planProductRealmObject != null) {
                    i = planProductRealmObject.hashCode();
                }
                return (hashCode * 31) + i;
            }

            public String toString() {
                return "StartPurchase(activity=" + this.f30931b + ", productObject=" + this.f30932c + ")";
            }
        }

        /* renamed from: j.a.w.n.d$b$e */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$b$e.class */
        public static final class C13780e extends AbstractC13775b {

            /* renamed from: b */
            public static final C13780e f30933b = new C13780e();

            public C13780e() {
                super("Unknown", null);
            }
        }

        public AbstractC13775b(String str) {
            this.f30927a = str;
        }

        public /* synthetic */ AbstractC13775b(String str, C15145g gVar) {
            this(str);
        }

        /* renamed from: a */
        public final String m3451a() {
            return this.f30927a;
        }
    }

    /* renamed from: j.a.w.n.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$c.class */
    public static final class C13781c extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C13781c f30934a = new C13781c();

        public C13781c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)));
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$fetchIapDataSource$1", m472f = "IapRepository.kt", m471l = {112, 116}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$d.class */
    public static final class C13782d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30935a;

        /* renamed from: b */
        public int f30936b;

        public C13782d(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13782d dVar2 = new C13782d(dVar);
            dVar2.f30935a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13782d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30936b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13773d.this.m3480a(AbstractC13775b.C13778c.f30930b);
                C13760c a2 = C13760c.f30875d.m3487a();
                this.f30936b = 1;
                Object a3 = C13760c.m3498a(a2, 0L, this, 1, (Object) null);
                obj = a3;
                if (a3 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            int intValue = ((Number) ((C14978j) obj).m659c()).intValue();
            if (intValue == 0) {
                C13773d.this.m3455h();
            } else {
                C13773d.this.f30925g.invoke(new AbstractC13775b.C13776a(intValue));
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w.n.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$e.class */
    public static final class C13783e implements C13734e.AbstractC13738c {
        public C13783e() {
        }

        @Override // p459j.p460a.p576w.C13734e.AbstractC13738c
        /* renamed from: a */
        public void mo3446a(List<? extends C5547g> list) {
            if (list != null) {
                if (!(!list.isEmpty())) {
                    list = null;
                }
                if (list != null) {
                    C13773d.m3474a(C13773d.this, list, null, 2, null);
                }
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$getAvailablePlans$2", m472f = "IapRepository.kt", m471l = {164}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.d$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$f.class */
    public static final class C13784f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super List<? extends IapPlanRealmObject>>, Object> {

        /* renamed from: a */
        public CoroutineScope f30939a;

        /* renamed from: b */
        public int f30940b;

        public C13784f(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13784f fVar = new C13784f(dVar);
            fVar.f30939a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super List<? extends IapPlanRealmObject>> dVar) {
            return ((C13784f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f30940b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                return C13085e.m4637c();
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    /* renamed from: j.a.w.n.d$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$g.class */
    public static final class C13785g implements C13734e.AbstractC13736b {

        /* renamed from: b */
        public final /* synthetic */ C5552i f30942b;

        /* renamed from: c */
        public final /* synthetic */ String f30943c;

        /* renamed from: d */
        public final /* synthetic */ String f30944d;

        public C13785g(C5552i iVar, String str, String str2) {
            this.f30942b = iVar;
            this.f30943c = str;
            this.f30944d = str2;
        }

        @Override // p459j.p460a.p576w.C13734e.AbstractC13736b
        /* renamed from: a */
        public void mo3448a(int i, Integer num, List<C5547g> list) {
            if (i != 0) {
                if (i != 3) {
                    C13773d.this.f30925g.invoke(new AbstractC13775b.C13777b(1));
                } else {
                    C13773d.this.f30925g.invoke(new AbstractC13775b.C13777b(3));
                }
            } else if (list != null) {
                List<C5547g> list2 = list.isEmpty() ^ true ? list : null;
                if (list2 != null) {
                    C13773d dVar = C13773d.this;
                    dVar.m3472a(list2, dVar.f30925g);
                }
            }
            if (num != null) {
                int intValue = num.intValue();
                Integer num2 = null;
                if (list != null) {
                    C5547g gVar = list.get(0);
                    num2 = null;
                    if (gVar != null) {
                        num2 = Integer.valueOf(gVar.m25160c());
                    }
                }
                C13751h.f30860a.m3527a(this.f30942b, intValue, num2, this.f30943c, this.f30944d);
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$querySubSkuDetailsAsync$1", m472f = "IapRepository.kt", m471l = {137, 141}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.n.d$h */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$h.class */
    public static final class C13786h extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30945a;

        /* renamed from: b */
        public int f30946b;

        /* renamed from: j.a.w.n.d$h$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$h$a.class */
        public static final class C13787a implements C13734e.AbstractC13739d {
            public C13787a() {
            }

            @Override // p459j.p460a.p576w.C13734e.AbstractC13739d
            /* renamed from: a */
            public void mo3447a(boolean z, List<C5552i> list) {
                if (!z) {
                    C13773d.this.f30925g.invoke(new AbstractC13775b.C13776a(1));
                } else if (list != null) {
                    C13773d.this.m3467b(list);
                }
            }
        }

        /* renamed from: j.a.w.n.d$h$b */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$h$b.class */
        public static final class C13788b implements C13734e.AbstractC13738c {
            public C13788b() {
            }

            @Override // p459j.p460a.p576w.C13734e.AbstractC13738c
            /* renamed from: a */
            public void mo3446a(List<? extends C5547g> list) {
                if (list != null) {
                    if (!(!list.isEmpty())) {
                        list = null;
                    }
                    if (list != null) {
                        C13773d.m3474a(C13773d.this, list, null, 2, null);
                    }
                }
            }
        }

        public C13786h(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13786h hVar = new C13786h(dVar);
            hVar.f30945a = (CoroutineScope) obj;
            return hVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13786h) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30946b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13773d dVar = C13773d.this;
                this.f30946b = 1;
                Object a2 = dVar.m3471a(this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            List list = (List) obj;
            if (!(list != null ? list : C15021m.m565a()).isEmpty()) {
                C13734e eVar = C13773d.this.f30926h;
                C13773d dVar2 = C13773d.this;
                if (list != null) {
                    eVar.m3561a(dVar2.m3473a(list), new C13787a(), new C13788b());
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                C13748f.m3540c("querySubSkuDetailsAsync: availablePlans is Empty");
                C13773d.this.f30925g.invoke(new AbstractC13775b.C13776a(1));
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w.n.d$i */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$i.class */
    public static final class C13789i extends AbstractC15150l implements AbstractC15118l<AbstractC13775b, C14989s> {
        public C13789i() {
            super(1);
        }

        /* renamed from: a */
        public final void m3445a(AbstractC13775b bVar) {
            C15149k.m377b(bVar, "newState");
            C13773d.this.m3480a(bVar);
            C13773d.this.f30921c.postValue(bVar);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(AbstractC13775b bVar) {
            m3445a(bVar);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$updateSkuDetails$1", m472f = "IapRepository.kt", m471l = {MatroskaExtractor.ID_PIXEL_HEIGHT, TsExtractor.TS_PACKET_SIZE, TsExtractor.TS_PACKET_SIZE}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.n.d$j */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$j.class */
    public static final class C13790j extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30951a;

        /* renamed from: b */
        public int f30952b;

        /* renamed from: d */
        public final /* synthetic */ Map f30954d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13790j(Map map, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30954d = map;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13790j jVar = new C13790j(this.f30954d, dVar);
            jVar.f30951a = (CoroutineScope) obj;
            return jVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13790j) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00cd  */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p577n.C13773d.C13790j.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$uploadPurchaseToken$1", m472f = "IapRepository.kt", m471l = {MatroskaExtractor.ID_CUE_CLUSTER_POSITION, 247}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.n.d$k */
    /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$k.class */
    public static final class C13791k extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30955a;

        /* renamed from: b */
        public int f30956b;

        /* renamed from: d */
        public final /* synthetic */ C5547g f30958d;

        /* renamed from: e */
        public final /* synthetic */ C12407e f30959e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC15118l f30960f;

        /* renamed from: j.a.w.n.d$k$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$k$a.class */
        public static final class C13792a implements C13760c.AbstractC13762b {
            public C13792a() {
            }

            @Override // p459j.p460a.p576w.p577n.C13760c.AbstractC13762b
            /* renamed from: a */
            public void mo1469a(boolean z) {
                if (!z || !C14021h2.m2779g()) {
                    AbstractC15118l lVar = C13791k.this.f30960f;
                    if (lVar != null) {
                        C14989s sVar = (C14989s) lVar.invoke(new AbstractC13775b.C13777b(1));
                        return;
                    }
                    return;
                }
                AbstractC15118l lVar2 = C13791k.this.f30960f;
                if (lVar2 != null) {
                    C14989s sVar2 = (C14989s) lVar2.invoke(new AbstractC13775b.C13777b(0));
                }
                C13773d.this.m3454i();
            }
        }

        @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/data/IapRepository$uploadPurchaseToken$1$result$1", m472f = "IapRepository.kt", m471l = {243, 243}, m470m = "invokeSuspend")
        /* renamed from: j.a.w.n.d$k$b */
        /* loaded from: classes2-dex2jar.jar:j/a/w/n/d$k$b.class */
        public static final class C13793b extends AbstractC15078m implements AbstractC15122p<AbstractC12404c, AbstractC15044d<? super C15299r<C10107m>>, Object> {

            /* renamed from: a */
            public AbstractC12404c f30962a;

            /* renamed from: b */
            public int f30963b;

            public C13793b(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13793b bVar = new C13793b(dVar);
                bVar.f30962a = (AbstractC12404c) obj;
                return bVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(AbstractC12404c cVar, AbstractC15044d<? super C15299r<C10107m>> dVar) {
                return ((C13793b) create(cVar, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30963b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    AbstractC12404c cVar = this.f30962a;
                    String f = C13791k.this.f30958d.m25157f();
                    C15149k.m383a((Object) f, "purchase.sku");
                    String d = C13791k.this.f30958d.m25159d();
                    C15149k.m383a((Object) d, "purchase.purchaseToken");
                    C13798e eVar = new C13798e(f, d);
                    this.f30963b = 1;
                    Object a2 = cVar.m6235a(eVar, this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13791k(C5547g gVar, C12407e eVar, AbstractC15118l lVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30958d = gVar;
            this.f30959e = eVar;
            this.f30960f = lVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13791k kVar = new C13791k(this.f30958d, this.f30959e, this.f30960f, dVar);
            kVar.f30955a = (CoroutineScope) obj;
            return kVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13791k) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30956b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13748f.m3538e("upload: " + this.f30958d);
                C12407e eVar = this.f30959e;
                C13793b bVar = new C13793b(null);
                this.f30956b = 1;
                Object a2 = eVar.m6238a(bVar, this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC12398a aVar = (AbstractC12398a) obj;
            if (aVar instanceof AbstractC12398a.C12401c) {
                C13748f.m3538e("upload complete sku: " + this.f30958d.m25157f());
                C13773d.this.m3465c(this.f30958d);
                C13760c.m3495a(C13760c.f30875d.m3487a(), null, new C13792a(), this.f30959e, 1, null);
                C13760c.f30875d.m3487a().m3491a(Dispatchers.getMain(), this.f30959e);
            } else if (aVar instanceof AbstractC12398a.C12399a) {
                C13748f.m3540c("upload purchase: " + aVar);
                AbstractC15118l lVar = this.f30960f;
                if (lVar != null) {
                    C14989s sVar = (C14989s) lVar.invoke(new AbstractC13775b.C13777b(1));
                }
            } else if (aVar instanceof AbstractC12398a.C12400b) {
                C13748f.m3540c("upload purchase exception: " + aVar);
                AbstractC15118l lVar2 = this.f30960f;
                if (lVar2 != null) {
                    C14989s sVar2 = (C14989s) lVar2.invoke(new AbstractC13775b.C13777b(1));
                }
            }
            return C14989s.f33022a;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13773d.class), "coroutineScope", "getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar);
        f30916i = new AbstractC14906i[]{sVar};
    }

    public C13773d(Context context, C13734e eVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(eVar, "billingClientManager");
        this.f30926h = eVar;
        context.getApplicationContext();
        this.f30926h.m3559b();
    }

    /* renamed from: a */
    public static final C13773d m3484a(Context context, C13734e eVar) {
        return f30918k.m3452a(context, eVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static /* synthetic */ void m3474a(C13773d dVar, List list, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 2) != 0) {
            lVar = null;
        }
        dVar.m3472a(list, lVar);
    }

    /* renamed from: a */
    public final /* synthetic */ Object m3471a(AbstractC15044d<? super List<? extends IapPlanRealmObject>> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13784f(null), dVar);
    }

    /* renamed from: a */
    public final List<String> m3473a(List<? extends IapPlanRealmObject> list) {
        ArrayList arrayList = new ArrayList();
        for (IapPlanRealmObject iapPlanRealmObject : list) {
            RealmList<PlanProductRealmObject> products = iapPlanRealmObject.getProducts();
            if (products != null) {
                for (PlanProductRealmObject planProductRealmObject : products) {
                    arrayList.add(planProductRealmObject.getProductId());
                }
            }
        }
        return arrayList;
    }

    @MainThread
    /* renamed from: a */
    public final void m3486a() {
        this.f30919a.setValue(null);
        this.f30921c.setValue(null);
    }

    @UiThread
    /* renamed from: a */
    public final void m3485a(Activity activity, PlanProductRealmObject planProductRealmObject, String str, String str2) {
        String originalJson;
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(planProductRealmObject, "productObject");
        C15149k.m377b(str, "source");
        if (!(this.f30923e instanceof AbstractC13775b.C13779d)) {
            C13748f.m3543b();
            SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
            if (skuDetails != null && (originalJson = skuDetails.getOriginalJson()) != null) {
                m3480a(new AbstractC13775b.C13779d(activity, planProductRealmObject));
                C5552i iVar = new C5552i(originalJson);
                this.f30926h.m3575a(activity, iVar, new C13785g(iVar, str, str2));
            }
        }
    }

    /* renamed from: a */
    public final void m3481a(C5547g gVar, boolean z, AbstractC15118l<? super AbstractC13775b, C14989s> lVar) {
        if (z || !m3482a(gVar)) {
            BuildersKt.launch$default(m3461e(), null, null, new C13791k(gVar, new C12407e(0L, 1, null), lVar, null), 3, null);
        }
    }

    /* renamed from: a */
    public final void m3480a(AbstractC13775b bVar) {
        C13748f.m3548a(bVar);
        this.f30923e = bVar;
    }

    /* renamed from: a */
    public final void m3472a(List<? extends C5547g> list, AbstractC15118l<? super AbstractC13775b, C14989s> lVar) {
        C13748f.m3534i(String.valueOf(list));
        ArrayList<C5547g> arrayList = new ArrayList();
        for (C5547g gVar : list) {
            if (gVar.m25160c() == 1) {
                if (m3469b(gVar)) {
                    arrayList.add(gVar);
                }
            } else if (gVar.m25160c() == 2) {
                C13748f.m3540c("pending purchase: " + gVar);
                if (lVar != null) {
                    lVar.invoke(new AbstractC13775b.C13777b(2));
                    return;
                }
                return;
            }
        }
        if ((arrayList.isEmpty() ? arrayList : null) == null) {
            String b = C13915b3.m3056b("VersionCodeRecord", "");
            C15149k.m383a((Object) b, "appUpgradeVersionList");
            boolean a = C14967x.m705a((CharSequence) b, (CharSequence) "64702772", false, 2, (Object) null);
            boolean a2 = C14967x.m705a((CharSequence) b, (CharSequence) "64802847", false, 2, (Object) null);
            for (C5547g gVar2 : arrayList) {
                C13748f.m3537f(String.valueOf(gVar2));
                m3481a(gVar2, a || a2, lVar);
            }
        } else if (lVar != null) {
            lVar.invoke(new AbstractC13775b.C13777b(1));
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m3483a(IapPlanRealmObject iapPlanRealmObject) {
        C15149k.m377b(iapPlanRealmObject, "plan");
        RealmList<PlanProductRealmObject> products = iapPlanRealmObject.getProducts();
        if (products != null) {
            Iterator<PlanProductRealmObject> it = products.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (C15149k.m384a((Object) "ad_free_y", (Object) it.next().getProductPeriodType())) {
                    break;
                } else {
                    i++;
                }
            }
            Integer valueOf = Integer.valueOf(i);
            if (!(-1 == valueOf.intValue())) {
                valueOf = null;
            }
            if (valueOf != null) {
                valueOf.intValue();
                return false;
            }
        }
        RealmList<PlanProductRealmObject> products2 = iapPlanRealmObject.getProducts();
        if (products2 != null) {
            Iterator<PlanProductRealmObject> it2 = products2.iterator();
            int i2 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                } else if (C15149k.m384a((Object) "ad_free_m", (Object) it2.next().getProductPeriodType())) {
                    break;
                } else {
                    i2++;
                }
            }
            Integer valueOf2 = Integer.valueOf(i2);
            if (!(-1 == valueOf2.intValue())) {
                valueOf2 = null;
            }
            if (valueOf2 != null) {
                valueOf2.intValue();
                return false;
            }
        }
        RealmList<PlanProductRealmObject> products3 = iapPlanRealmObject.getProducts();
        if (products3 == null) {
            return true;
        }
        Iterator<PlanProductRealmObject> it3 = products3.iterator();
        int i3 = 0;
        while (true) {
            if (!it3.hasNext()) {
                i3 = -1;
                break;
            } else if (C15149k.m384a((Object) "ad_free_biannual", (Object) it3.next().getProductPeriodType())) {
                break;
            } else {
                i3++;
            }
        }
        Integer valueOf3 = Integer.valueOf(i3);
        if (!(-1 == valueOf3.intValue())) {
            valueOf3 = null;
        }
        if (valueOf3 == null) {
            return true;
        }
        valueOf3.intValue();
        return false;
    }

    /* renamed from: a */
    public final boolean m3482a(C5547g gVar) {
        String f = gVar.m25157f();
        C15149k.m383a((Object) f, "purchase.sku");
        return C15149k.m384a((Object) C13915b3.m3056b(C14021h2.m2790a(f), ""), (Object) C13992e4.m2924a(gVar.m25159d()));
    }

    /* renamed from: b */
    public final void m3470b() {
        this.f30926h.m3577a();
    }

    @VisibleForTesting
    /* renamed from: b */
    public final void m3467b(List<? extends C5552i> list) {
        C15149k.m377b(list, "skuDetailsList");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (C5552i iVar : list) {
            String k = iVar.m25145k();
            C15149k.m383a((Object) k, "skuDetails.sku");
            linkedHashMap.put(k, iVar);
        }
        BuildersKt.launch$default(m3461e(), null, null, new C13790j(linkedHashMap, null), 3, null);
    }

    /* renamed from: b */
    public final boolean m3469b(C5547g gVar) {
        return C13952a.m2999a("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhnvPgdOTpWWun0B6bKe/L6ce9SsrRnP/aBq9Vqjonc/iA2hexA2yUFb9MqZgTjWFIuijIm+uGIGQJYyH9uGrNfyTdBOCvZFrL0JsRlqmn2pknG2tVvwqJGIZlBcl3Hkcp9utS85KZDXPz6gRN1zEfJ2W2bJJ1tBxBQak+eUCbjqsIBIDhw0+E6TF8dS772erPwGlaYZ/vhL91EbFwBNWZDVDmEi9sgEjJlAQ7hE4re7qjTnSLGIydiiChN0MjQFGoxPRtlBQlPWV9rjJCupNqTfbg8jHeJxLf3l5Y+6QhKDQNv1MlPKcvrqLGVwt5ALBEF//HAHHCuB8fJWTB6C9MQIDAQAB", gVar.m25162a(), gVar.m25158e());
    }

    /* renamed from: c */
    public final void m3466c() {
        synchronized (this) {
            if (!(this.f30923e instanceof AbstractC13775b.C13778c)) {
                BuildersKt.launch$default(m3461e(), null, null, new C13782d(null), 3, null);
            }
        }
    }

    /* renamed from: c */
    public final void m3465c(C5547g gVar) {
        String f = gVar.m25157f();
        C15149k.m383a((Object) f, "purchase.sku");
        C13915b3.m3044e(C14021h2.m2790a(f), C13992e4.m2924a(gVar.m25159d()));
    }

    /* renamed from: d */
    public final void m3463d() {
        this.f30926h.m3571a(new C13783e());
    }

    /* renamed from: e */
    public final CoroutineScope m3461e() {
        AbstractC14974f fVar = this.f30924f;
        AbstractC14906i iVar = f30916i[0];
        return (CoroutineScope) fVar.getValue();
    }

    /* renamed from: f */
    public final LiveData<IapPlanRealmObject> m3459f() {
        return this.f30920b;
    }

    /* renamed from: g */
    public final LiveData<AbstractC13775b> m3457g() {
        return this.f30922d;
    }

    /* renamed from: h */
    public final void m3455h() {
        BuildersKt.launch$default(m3461e(), null, null, new C13786h(null), 3, null);
    }

    /* renamed from: i */
    public final void m3454i() {
        C13760c.m3496a(C13760c.f30875d.m3487a(), Dispatchers.getMain(), (AbstractC12402b) null, 2, (Object) null);
    }
}
