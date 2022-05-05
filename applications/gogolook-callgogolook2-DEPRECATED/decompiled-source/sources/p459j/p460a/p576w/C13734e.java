package p459j.p460a.p576w;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p093b.p094a.p095a.AbstractC5531a;
import p081h.p093b.p094a.p095a.AbstractC5537c;
import p081h.p093b.p094a.p095a.AbstractC5550h;
import p081h.p093b.p094a.p095a.AbstractC5558k;
import p081h.p093b.p094a.p095a.C5539d;
import p081h.p093b.p094a.p095a.C5542e;
import p081h.p093b.p094a.p095a.C5547g;
import p081h.p093b.p094a.p095a.C5552i;
import p081h.p093b.p094a.p095a.C5555j;
import p459j.p460a.p582w0.C14137r4;
import p626l.C14989s;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� 12\u00020\u0001:\u00041234B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0007J$\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0003J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\u000fH\u0007J\b\u0010\u0017\u001a\u00020\u000bH\u0002J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\rH\u0002J \u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\rH\u0007J\u001c\u0010 \u001a\u00020\u000f2\b\b\u0001\u0010!\u001a\u00020\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$J \u0010%\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0015H\u0002J&\u0010*\u001a\u00020\u000f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\"0,2\u0006\u0010-\u001a\u00020.2\u0006\u0010\f\u001a\u00020\u0015H\u0007J&\u0010/\u001a\u00020\u000f2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\"0,2\u0006\u0010-\u001a\u00020.2\u0006\u0010\f\u001a\u00020\u0015H\u0002J\u0018\u00100\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.2\u0006\u0010\f\u001a\u00020\u0015H\u0002R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u00065"}, m815d2 = {"Lgogolook/callgogolook2/iap/BillingClientManager;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "app", "Landroid/app/Application;", "(Landroid/app/Application;)V", "appContext", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "billingClient", "Lcom/android/billingclient/api/BillingClient;", "isInitialized", "", "purchaseListener", "Lgogolook/callgogolook2/iap/BillingClientManager$PurchaseListener;", "endConnection", "", "executeRequestWithConnection", "requestAction", "Lkotlin/Function0;", "errorCallBack", "forceVerifyPurchaseToken", "Lgogolook/callgogolook2/iap/BillingClientManager$QueryPurchaseListener;", "init", "isSubscriptionSupported", "launchBillingFlow", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", PlanProductRealmObject.SKU_DETAILS, "Lcom/android/billingclient/api/SkuDetails;", "launchBillingFlowFailed", "listener", "launchPurchase", "logError", "name", "", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "onPurchasesUpdated", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "queryPurchasesAsync", "querySubSkuDetails", "list", "", "skuDetailsListener", "Lgogolook/callgogolook2/iap/BillingClientManager$QuerySkuDetailsListener;", "querySubSkuDetailsAndPurchaseAsync", "querySubSkuDetailsAndPurchaseAsyncFailed", "Companion", "PurchaseListener", "QueryPurchaseListener", "QuerySkuDetailsListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.e */
/* loaded from: classes2-dex2jar.jar:j/a/w/e.class */
public final class C13734e implements AbstractC5550h {

    /* renamed from: e */
    public static volatile C13734e f30833e;

    /* renamed from: f */
    public static final C13735a f30834f = new C13735a(null);

    /* renamed from: a */
    public volatile AbstractC5531a f30835a;

    /* renamed from: b */
    public final Context f30836b;

    /* renamed from: c */
    public boolean f30837c;

    /* renamed from: d */
    public AbstractC13736b f30838d;

    /* renamed from: j.a.w.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$a.class */
    public static final class C13735a {
        public C13735a() {
        }

        public /* synthetic */ C13735a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C13734e m3554a(Application application) {
            C13734e eVar;
            C15149k.m377b(application, "app");
            C13734e eVar2 = C13734e.f30833e;
            if (eVar2 != null) {
                eVar = eVar2;
            } else {
                synchronized (this) {
                    C13734e eVar3 = C13734e.f30833e;
                    if (eVar3 != null) {
                        eVar = eVar3;
                    } else {
                        C13734e eVar4 = new C13734e(application, null);
                        C13734e.f30833e = eVar4;
                        eVar = eVar4;
                    }
                }
            }
            return eVar;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J5\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH&¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/iap/BillingClientManager$PurchaseListener;", "", "onFinished", "", "purchaseCode", "", "billingResponseCode", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "(ILjava/lang/Integer;Ljava/util/List;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.w.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$b.class */
    public interface AbstractC13736b {

        /* renamed from: j.a.w.e$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/w/e$b$a.class */
        public static final class C13737a {
            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: a */
            public static /* synthetic */ void m3553a(AbstractC13736b bVar, int i, Integer num, List list, int i2, Object obj) {
                if (obj == null) {
                    if ((i2 & 2) != 0) {
                        num = null;
                    }
                    if ((i2 & 4) != 0) {
                        list = null;
                    }
                    bVar.mo3448a(i, num, list);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onFinished");
            }
        }

        /* renamed from: a */
        void mo3448a(int i, Integer num, List<C5547g> list);
    }

    /* renamed from: j.a.w.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$c.class */
    public interface AbstractC13738c {
        /* renamed from: a */
        void mo3446a(List<? extends C5547g> list);
    }

    /* renamed from: j.a.w.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$d.class */
    public interface AbstractC13739d {
        /* renamed from: a */
        void mo3447a(boolean z, List<C5552i> list);
    }

    /* renamed from: j.a.w.e$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$e.class */
    public static final class C13740e implements AbstractC5537c {

        /* renamed from: b */
        public final /* synthetic */ AbstractC15107a f30840b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC15107a f30841c;

        public C13740e(AbstractC15107a aVar, AbstractC15107a aVar2) {
            this.f30840b = aVar;
            this.f30841c = aVar2;
        }

        @Override // p081h.p093b.p094a.p095a.AbstractC5537c
        /* renamed from: a */
        public void mo3552a() {
            this.f30841c.invoke();
            C13734e.m3564a(C13734e.this, "service_disconnection", null, 2, null);
        }

        @Override // p081h.p093b.p094a.p095a.AbstractC5537c
        /* renamed from: a */
        public void mo3551a(C5542e eVar) {
            C15149k.m377b(eVar, "billingResult");
            if (eVar.m25168b() != 0) {
                C13734e.this.m3562a("connection_failed", eVar);
                this.f30841c.invoke();
                return;
            }
            C13748f.m3549a();
            this.f30840b.invoke();
        }
    }

    /* renamed from: j.a.w.e$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$f.class */
    public static final class C13741f extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13738c f30843b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13741f(AbstractC13738c cVar) {
            super(0);
            this.f30843b = cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C13734e.this.m3558b(this.f30843b);
        }
    }

    /* renamed from: j.a.w.e$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$g.class */
    public static final class C13742g extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13738c f30844a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13742g(AbstractC13738c cVar) {
            super(0);
            this.f30844a = cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f30844a.mo3446a(null);
        }
    }

    /* renamed from: j.a.w.e$h */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$h.class */
    public static final class C13743h extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: b */
        public final /* synthetic */ Activity f30846b;

        /* renamed from: c */
        public final /* synthetic */ C5552i f30847c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13743h(Activity activity, C5552i iVar) {
            super(0);
            this.f30846b = activity;
            this.f30847c = iVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C13734e.this.m3576a(this.f30846b, this.f30847c);
        }
    }

    /* renamed from: j.a.w.e$i */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$i.class */
    public static final class C13744i extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13736b f30849b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13744i(AbstractC13736b bVar) {
            super(0);
            this.f30849b = bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C13734e.this.m3572a(this.f30849b);
        }
    }

    /* renamed from: j.a.w.e$j */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$j.class */
    public static final class C13745j extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: b */
        public final /* synthetic */ List f30851b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC13739d f30852c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC13738c f30853d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13745j(List list, AbstractC13739d dVar, AbstractC13738c cVar) {
            super(0);
            this.f30851b = list;
            this.f30852c = dVar;
            this.f30853d = cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C13734e.this.m3557b(this.f30851b, this.f30852c, this.f30853d);
        }
    }

    /* renamed from: j.a.w.e$k */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$k.class */
    public static final class C13746k extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13739d f30855b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC13738c f30856c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13746k(AbstractC13739d dVar, AbstractC13738c cVar) {
            super(0);
            this.f30855b = dVar;
            this.f30856c = cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            C13734e.this.m3570a(this.f30855b, this.f30856c);
        }
    }

    /* renamed from: j.a.w.e$l */
    /* loaded from: classes2-dex2jar.jar:j/a/w/e$l.class */
    public static final class C13747l implements AbstractC5558k {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13739d f30858b;

        public C13747l(AbstractC13739d dVar) {
            this.f30858b = dVar;
        }

        @Override // p081h.p093b.p094a.p095a.AbstractC5558k
        /* renamed from: a */
        public final void mo3550a(C5542e eVar, List<C5552i> list) {
            C15149k.m377b(eVar, "billingResult");
            if (eVar.m25168b() == 0) {
                if (!(list != null ? list : C15021m.m565a()).isEmpty()) {
                    C13748f.m3535h(String.valueOf(list));
                    this.f30858b.mo3447a(true, list);
                    return;
                }
            }
            this.f30858b.mo3447a(false, null);
            C13734e.this.m3562a("query_sub_sku_details_failed", eVar);
        }
    }

    public C13734e(Application application) {
        this.f30836b = application.getApplicationContext();
    }

    public /* synthetic */ C13734e(Application application, C15145g gVar) {
        this(application);
    }

    /* renamed from: a */
    public static final C13734e m3574a(Application application) {
        return f30834f.m3554a(application);
    }

    /* renamed from: a */
    public static /* synthetic */ void m3564a(C13734e eVar, String str, C5542e eVar2, int i, Object obj) {
        if ((i & 2) != 0) {
            eVar2 = null;
        }
        eVar.m3562a(str, eVar2);
    }

    @UiThread
    /* renamed from: a */
    public final void m3577a() {
        AbstractC5531a aVar = this.f30835a;
        if (aVar == null) {
            C15149k.m373d("billingClient");
            throw null;
        } else if (aVar.mo25221b()) {
            AbstractC5531a aVar2 = this.f30835a;
            if (aVar2 != null) {
                aVar2.mo25238a();
                this.f30837c = false;
                return;
            }
            C15149k.m373d("billingClient");
            throw null;
        }
    }

    /* renamed from: a */
    public final void m3576a(Activity activity, C5552i iVar) {
        C5539d.C5540a i = C5539d.m25174i();
        i.m25172a(iVar);
        C5539d a = i.m25173a();
        C15149k.m383a((Object) a, "BillingFlowParams.newBui…\n                .build()");
        AbstractC5531a aVar = this.f30835a;
        if (aVar != null) {
            aVar.mo25237a(activity, a);
        } else {
            C15149k.m373d("billingClient");
            throw null;
        }
    }

    @UiThread
    /* renamed from: a */
    public final void m3575a(Activity activity, C5552i iVar, AbstractC13736b bVar) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(iVar, PlanProductRealmObject.SKU_DETAILS);
        C15149k.m377b(bVar, "listener");
        this.f30838d = bVar;
        m3560a(new C13743h(activity, iVar), new C13744i(bVar));
    }

    @Override // p081h.p093b.p094a.p095a.AbstractC5550h
    /* renamed from: a */
    public void mo3573a(C5542e eVar, List<C5547g> list) {
        C15149k.m377b(eVar, "billingResult");
        C13748f.m3536g("responseCode: " + eVar.m25168b());
        int b = eVar.m25168b();
        if (b == 0) {
            AbstractC13736b bVar = this.f30838d;
            if (bVar != null) {
                bVar.mo3448a(0, Integer.valueOf(eVar.m25168b()), list);
            }
        } else if (b != 1) {
            m3562a("purchase_updated_failed", eVar);
            AbstractC13736b bVar2 = this.f30838d;
            if (bVar2 != null) {
                AbstractC13736b.C13737a.m3553a(bVar2, 1, Integer.valueOf(eVar.m25168b()), null, 4, null);
            }
        } else {
            AbstractC13736b bVar3 = this.f30838d;
            if (bVar3 != null) {
                AbstractC13736b.C13737a.m3553a(bVar3, 3, Integer.valueOf(eVar.m25168b()), null, 4, null);
            }
        }
    }

    /* renamed from: a */
    public final void m3572a(AbstractC13736b bVar) {
        AbstractC13736b.C13737a.m3553a(bVar, 1, null, null, 4, null);
    }

    /* renamed from: a */
    public final void m3571a(AbstractC13738c cVar) {
        C15149k.m377b(cVar, "purchaseListener");
        m3560a(new C13741f(cVar), new C13742g(cVar));
    }

    /* renamed from: a */
    public final void m3570a(AbstractC13739d dVar, AbstractC13738c cVar) {
        dVar.mo3447a(false, null);
        cVar.mo3446a(null);
    }

    /* renamed from: a */
    public final void m3562a(String str, C5542e eVar) {
        C15149k.m377b(str, "name");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" response code: ");
        String str2 = null;
        sb.append(eVar != null ? Integer.valueOf(eVar.m25168b()) : null);
        sb.append(", mag: ");
        sb.append(eVar != null ? eVar.m25171a() : null);
        C13748f.m3540c(sb.toString());
        C13733d dVar = C13733d.f30832a;
        if (eVar != null) {
            str2 = String.valueOf(eVar.m25168b());
        }
        dVar.m3578a(str, str2);
    }

    @UiThread
    /* renamed from: a */
    public final void m3561a(List<String> list, AbstractC13739d dVar, AbstractC13738c cVar) {
        C15149k.m377b(list, "list");
        C15149k.m377b(dVar, "skuDetailsListener");
        C15149k.m377b(cVar, "purchaseListener");
        m3560a(new C13745j(list, dVar, cVar), new C13746k(dVar, cVar));
    }

    @UiThread
    /* renamed from: a */
    public final void m3560a(AbstractC15107a<C14989s> aVar, AbstractC15107a<C14989s> aVar2) {
        m3559b();
        AbstractC5531a aVar3 = this.f30835a;
        if (aVar3 == null) {
            C15149k.m373d("billingClient");
            throw null;
        } else if (aVar3.mo25221b()) {
            aVar.invoke();
        } else {
            AbstractC5531a aVar4 = this.f30835a;
            if (aVar4 != null) {
                aVar4.mo25228a(new C13740e(aVar, aVar2));
            } else {
                C15149k.m373d("billingClient");
                throw null;
            }
        }
    }

    @UiThread
    /* renamed from: b */
    public final void m3559b() {
        if (!this.f30837c) {
            AbstractC5531a.C5532a a = AbstractC5531a.m25246a(this.f30836b);
            a.m25243b();
            a.m25244a(this);
            AbstractC5531a a2 = a.m25245a();
            C15149k.m383a((Object) a2, "BillingClient.newBuilder…                 .build()");
            this.f30835a = a2;
            this.f30837c = true;
        }
    }

    /* renamed from: b */
    public final void m3558b(AbstractC13738c cVar) {
        ArrayList arrayList = null;
        if (m3556c()) {
            arrayList = null;
            if (C14137r4.m2369i()) {
                AbstractC5531a aVar = this.f30835a;
                if (aVar != null) {
                    C5547g.C5548a b = aVar.mo25217b("subs");
                    C15149k.m383a((Object) b, "billingClient\n          …llingClient.SkuType.SUBS)");
                    List<C5547g> a = b.m25156a();
                    arrayList = null;
                    if (a != null) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator<T> it = a.iterator();
                        while (true) {
                            arrayList = arrayList2;
                            if (!it.hasNext()) {
                                break;
                            }
                            Object next = it.next();
                            C5547g gVar = (C5547g) next;
                            C15149k.m383a((Object) gVar, "it");
                            String b2 = gVar.m25161b();
                            Context context = this.f30836b;
                            C15149k.m383a((Object) context, "appContext");
                            if (C15149k.m384a((Object) b2, (Object) context.getPackageName())) {
                                arrayList2.add(next);
                            }
                        }
                    }
                } else {
                    C15149k.m373d("billingClient");
                    throw null;
                }
            }
        }
        cVar.mo3446a(arrayList);
    }

    /* renamed from: b */
    public final void m3557b(List<String> list, AbstractC13739d dVar, AbstractC13738c cVar) {
        AbstractC5531a aVar = this.f30835a;
        if (aVar != null) {
            C5555j.C5556a c = C5555j.m25130c();
            c.m25127a(list);
            c.m25128a("subs");
            aVar.mo25226a(c.m25129a(), new C13747l(dVar));
            m3558b(cVar);
            return;
        }
        C15149k.m373d("billingClient");
        throw null;
    }

    /* renamed from: c */
    public final boolean m3556c() {
        AbstractC5531a aVar = this.f30835a;
        if (aVar != null) {
            C5542e a = aVar.mo25224a("subscriptions");
            C15149k.m383a((Object) a, "billingClient.isFeatureS…eatureType.SUBSCRIPTIONS)");
            boolean z = false;
            if (a.m25168b() != 0) {
                m3562a("not_support_subscription", a);
            } else {
                z = true;
            }
            return z;
        }
        C15149k.m373d("billingClient");
        throw null;
    }
}
