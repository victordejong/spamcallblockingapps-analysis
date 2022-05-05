package p459j.p460a.p576w.p581r;

import android.app.Activity;
import android.view.View;
import androidx.annotation.MainThread;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.Transformations;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.IapPageProductInfo;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import io.realm.RealmList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p576w.C13754k;
import p459j.p460a.p576w.p577n.AbstractC13759b;
import p459j.p460a.p576w.p577n.C13760c;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p576w.p578o.C13796c;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.C14979k;
import p626l.C14985o;
import p626l.C14989s;
import p626l.p632u.C15005e0;
import p626l.p632u.C15022n;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0013\u001a\u00020RJ\u0006\u0010S\u001a\u00020RJ\b\u0010T\u001a\u00020RH\u0002J\b\u0010U\u001a\u0004\u0018\u00010VJ\b\u0010W\u001a\u00020RH\u0007J\u0011\u0010=\u001a\u00020\u000bH\u0082@ø\u0001��¢\u0006\u0002\u0010XJ\b\u0010Y\u001a\u00020RH\u0014J\u000e\u0010Z\u001a\u00020R2\u0006\u0010[\u001a\u00020\u0010J\u0006\u0010\\\u001a\u00020RJ \u0010]\u001a\u00020R2\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020\u00102\b\u0010a\u001a\u0004\u0018\u00010\u0010J\b\u0010b\u001a\u00020RH\u0002J\b\u0010c\u001a\u00020RH\u0002J\u0006\u0010d\u001a\u00020RJ\u000e\u0010E\u001a\u00020R2\u0006\u0010e\u001a\u00020FR\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\rX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\nX\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001f\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f0\u001e¢\u0006\b\n��\u001a\u0004\b!\u0010\"R\u0019\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u001e8F¢\u0006\u0006\u001a\u0004\b%\u0010\"R\u001f\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020(\u0018\u00010'8F¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0019\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010,0\u001e8F¢\u0006\u0006\u001a\u0004\b-\u0010\"R\u001a\u0010.\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00103\u001a\n\u0012\u0004\u0012\u000205\u0018\u000104X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0017\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\b\n��\u001a\u0004\b:\u0010\"R\u0017\u0010;\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n��\u001a\u0004\b;\u0010<R\u0017\u0010=\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\b\n��\u001a\u0004\b=\u0010\"R\u000e\u0010>\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010?\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010@\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010A\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010B\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0017\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00100\u001e¢\u0006\b\n��\u001a\u0004\bD\u0010\"R\u0017\u0010E\u001a\b\u0012\u0004\u0012\u00020F0\u0014¢\u0006\b\n��\u001a\u0004\bG\u0010\u0017R\u001a\u0010H\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bI\u00100\"\u0004\bJ\u00102R\u0019\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u001e¢\u0006\b\n��\u001a\u0004\bL\u0010\"R\u001c\u0010M\u001a\u0004\u0018\u00010\b8FX\u0087\u0004¢\u0006\f\u0012\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006f"}, m815d2 = {"Lgogolook/callgogolook2/iap/ui/IapViewModel;", "Landroidx/lifecycle/ViewModel;", "repository", "Lgogolook/callgogolook2/iap/data/IapRepository;", "remoteConfigDataSource", "Lgogolook/callgogolook2/iap/data/IapRemoteConfigDataSource;", "(Lgogolook/callgogolook2/iap/data/IapRepository;Lgogolook/callgogolook2/iap/data/IapRemoteConfigDataSource;)V", "INTRO_PAGE_DEFAULT", "", "_isGetProductSuccess", "Landroidx/lifecycle/MutableLiveData;", "", "_isLoading", "Landroidx/lifecycle/MediatorLiveData;", "_isSubscribedUser", "_selectedProduct", "", "_yearlyPromoInfo", "Lgogolook/callgogolook2/gson/IapPageProductInfo;", "dismissPromoPopup", "Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "Ljava/lang/Void;", "getDismissPromoPopup", "()Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "from", "getFrom", "()Ljava/lang/String;", "setFrom", "(Ljava/lang/String;)V", "iapFeatures", "Landroidx/lifecycle/LiveData;", "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject;", "getIapFeatures", "()Landroidx/lifecycle/LiveData;", "iapPlan", "Lgogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject;", "getIapPlan", "iapProductsMap", "", "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "getIapProductsMap", "()Ljava/util/Map;", "iapStateResult", "Lgogolook/callgogolook2/iap/data/IapRepository$State;", "getIapStateResult", "introPosition", "getIntroPosition", "()I", "setIntroPosition", "(I)V", "intros", "", "Lgogolook/callgogolook2/iap/model/IapIntro;", "getIntros", "()Ljava/util/List;", "setIntros", "(Ljava/util/List;)V", "isGetProductSuccess", "isLoading", "()Landroidx/lifecycle/MediatorLiveData;", "isSubscribedUser", "pageAdFree", "pageAutoUpdate", "pageExpandDb", "pageProtection", "pageSpamHammer", "selectedProduct", "getSelectedProduct", "showPromoPopup", "Landroid/view/View;", "getShowPromoPopup", "touchSlop", "getTouchSlop", "setTouchSlop", "yearlyPromoInfo", "getYearlyPromoInfo", "yearlyPromoType", "yearlyPromoType$annotations", "()V", "getYearlyPromoType", "()Ljava/lang/Integer;", "", "fetchIapPlan", "getIapSubscribed", "getYearlyProductInfo", "Lgogolook/callgogolook2/gson/IapPageProductInfo$ProductInfo;", "initIap", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onCleared", "onProductSelected", "productType", "parseYearlyPromoInfoConfig", "purchaseSubscription", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "source", "material", "refreshUserIapStatus", "setIntroBeginPosition", "setIntroData", "anchor", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.r.h */
/* loaded from: classes2-dex2jar.jar:j/a/w/r/h.class */
public final class C13865h extends ViewModel {

    /* renamed from: c */
    public final LiveData<RealmList<PlanFeatureRealmObject>> f31115c;

    /* renamed from: n */
    public List<C13796c> f31126n;

    /* renamed from: o */
    public int f31127o;

    /* renamed from: r */
    public final int f31130r;

    /* renamed from: w */
    public final C13773d f31135w;

    /* renamed from: x */
    public final AbstractC13759b f31136x;

    /* renamed from: a */
    public final MediatorLiveData<Boolean> f31113a = new MediatorLiveData<>();

    /* renamed from: b */
    public final MediatorLiveData<Boolean> f31114b = this.f31113a;

    /* renamed from: d */
    public final MutableLiveData<Boolean> f31116d = new MutableLiveData<>();

    /* renamed from: e */
    public final LiveData<Boolean> f31117e = this.f31116d;

    /* renamed from: f */
    public final MutableLiveData<String> f31118f = new MutableLiveData<>("ad_free_y");

    /* renamed from: g */
    public final LiveData<String> f31119g = this.f31118f;

    /* renamed from: h */
    public final MutableLiveData<IapPageProductInfo> f31120h = new MutableLiveData<>();

    /* renamed from: i */
    public final LiveData<IapPageProductInfo> f31121i = this.f31120h;

    /* renamed from: j */
    public final MutableLiveData<Boolean> f31122j = new MutableLiveData<>(true);

    /* renamed from: k */
    public final LiveData<Boolean> f31123k = this.f31122j;

    /* renamed from: l */
    public final C14589b<View> f31124l = new C14589b<>();

    /* renamed from: m */
    public final C14589b<Void> f31125m = new C14589b<>();

    /* renamed from: p */
    public int f31128p = -1;

    /* renamed from: q */
    public String f31129q = "others";

    /* renamed from: s */
    public int f31131s = -1;

    /* renamed from: t */
    public int f31132t = -1;

    /* renamed from: u */
    public int f31133u = -1;

    /* renamed from: v */
    public int f31134v = -1;

    /* renamed from: j.a.w.r.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$a.class */
    public static final class C13866a<T> implements Observer<S> {
        public C13866a() {
        }

        /* renamed from: a */
        public final void onChanged(C13773d.AbstractC13775b bVar) {
            if (bVar instanceof C13773d.AbstractC13775b.C13776a) {
                if (((C13773d.AbstractC13775b.C13776a) bVar).m3450b() == 0) {
                    C13865h.this.f31118f.postValue("ad_free_y");
                }
                C13865h.this.f31113a.postValue(false);
            } else if (bVar instanceof C13773d.AbstractC13775b.C13777b) {
                C13865h.this.m3287h();
            }
        }
    }

    /* renamed from: j.a.w.r.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$b.class */
    public static final class C13867b<T> implements Observer<S> {
        public C13867b() {
        }

        /* renamed from: a */
        public final void onChanged(Boolean bool) {
            C15149k.m383a((Object) bool, "it");
            if (bool.booleanValue()) {
                C13865h.this.f31113a.postValue(false);
            }
        }
    }

    /* renamed from: j.a.w.r.h$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$c.class */
    public static final class C13868c<I, O> implements Function<IapPlanRealmObject, RealmList<PlanFeatureRealmObject>> {
        @Override // androidx.arch.core.util.Function
        public final RealmList<PlanFeatureRealmObject> apply(IapPlanRealmObject iapPlanRealmObject) {
            IapPlanRealmObject iapPlanRealmObject2 = iapPlanRealmObject;
            return iapPlanRealmObject2 != null ? iapPlanRealmObject2.getFeatures() : null;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/ui/IapViewModel$getIapSubscribed$1", m472f = "IapViewModel.kt", m471l = {150, 152}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.r.h$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$d.class */
    public static final class C13869d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31139a;

        /* renamed from: b */
        public Object f31140b;

        /* renamed from: c */
        public int f31141c;

        public C13869d(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13869d dVar2 = new C13869d(dVar);
            dVar2.f31139a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13869d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            MutableLiveData mutableLiveData;
            Object a = C15064c.m478a();
            int i = this.f31141c;
            if (i != 0) {
                if (i == 1) {
                    mutableLiveData = (MutableLiveData) this.f31140b;
                    if (!(obj instanceof C14979k.C14981b)) {
                        obj2 = obj;
                    } else {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                MutableLiveData mutableLiveData2 = C13865h.this.f31116d;
                C13865h hVar = C13865h.this;
                this.f31140b = mutableLiveData2;
                this.f31141c = 1;
                obj2 = hVar.m3302a(this);
                if (obj2 == a) {
                    return a;
                }
                mutableLiveData = mutableLiveData2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            mutableLiveData.postValue(obj2);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/ui/IapViewModel$isSubscribedUser$2", m472f = "IapViewModel.kt", m471l = {266}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.r.h$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$e.class */
    public static final class C13870e extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Boolean>, Object> {

        /* renamed from: a */
        public CoroutineScope f31143a;

        /* renamed from: b */
        public int f31144b;

        public C13870e(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13870e eVar = new C13870e(dVar);
            eVar.f31143a = (CoroutineScope) obj;
            return eVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Boolean> dVar) {
            return ((C13870e) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f31144b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                return C15066b.m474a(C14021h2.m2779g());
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/iap/ui/IapViewModel$parseYearlyPromoInfoConfig$1", m472f = "IapViewModel.kt", m471l = {156, 158}, m470m = "invokeSuspend")
    /* renamed from: j.a.w.r.h$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$f.class */
    public static final class C13871f extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31145a;

        /* renamed from: b */
        public Object f31146b;

        /* renamed from: c */
        public int f31147c;

        public C13871f(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13871f fVar = new C13871f(dVar);
            fVar.f31145a = (CoroutineScope) obj;
            return fVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13871f) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            MutableLiveData mutableLiveData;
            Object a = C15064c.m478a();
            int i = this.f31147c;
            if (i != 0) {
                if (i == 1) {
                    mutableLiveData = (MutableLiveData) this.f31146b;
                    if (!(obj instanceof C14979k.C14981b)) {
                        obj2 = obj;
                    } else {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                MutableLiveData mutableLiveData2 = C13865h.this.f31120h;
                AbstractC13759b bVar = C13865h.this.f31136x;
                this.f31146b = mutableLiveData2;
                this.f31147c = 1;
                obj2 = bVar.mo3502a(this);
                if (obj2 == a) {
                    return a;
                }
                mutableLiveData = mutableLiveData2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            mutableLiveData.postValue(obj2);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w.r.h$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/h$g.class */
    public static final class C13872g implements C13760c.AbstractC13762b {
        public C13872g() {
        }

        @Override // p459j.p460a.p576w.p577n.C13760c.AbstractC13762b
        /* renamed from: a */
        public void mo1469a(boolean z) {
            C13865h.this.f31122j.setValue(Boolean.valueOf(z));
            C13865h.this.m3287h();
            if (!z) {
                C13865h.this.f31113a.setValue(false);
            }
        }
    }

    public C13865h(C13773d dVar, AbstractC13759b bVar) {
        C15149k.m377b(dVar, "repository");
        C15149k.m377b(bVar, "remoteConfigDataSource");
        this.f31135w = dVar;
        this.f31136x = bVar;
        LiveData<RealmList<PlanFeatureRealmObject>> map = Transformations.map(m3293e(), new C13868c());
        C15149k.m383a((Object) map, "Transformations.map(this) { transform(it) }");
        this.f31115c = map;
        MediatorLiveData<Boolean> mediatorLiveData = this.f31113a;
        mediatorLiveData.addSource(m3289g(), new C13866a());
        mediatorLiveData.addSource(this.f31117e, new C13867b());
    }

    /* renamed from: a */
    public final /* synthetic */ Object m3302a(AbstractC15044d<? super Boolean> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13870e(null), dVar);
    }

    /* renamed from: a */
    public final void m3308a() {
        this.f31125m.m1052a();
    }

    /* renamed from: a */
    public final void m3307a(int i) {
        this.f31128p = i;
    }

    /* renamed from: a */
    public final void m3306a(Activity activity, String str, String str2) {
        PlanProductRealmObject planProductRealmObject;
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(str, "source");
        Map<String, PlanProductRealmObject> f = m3291f();
        if (f != null && (planProductRealmObject = f.get(this.f31118f.getValue())) != null) {
            this.f31135w.m3485a(activity, planProductRealmObject, str, str2);
        }
    }

    /* renamed from: a */
    public final void m3305a(View view) {
        C15149k.m377b(view, "anchor");
        this.f31124l.setValue(view);
    }

    /* renamed from: a */
    public final void m3303a(String str) {
        C15149k.m377b(str, "productType");
        this.f31118f.setValue(str);
    }

    /* renamed from: b */
    public final void m3301b() {
        this.f31135w.m3466c();
    }

    /* renamed from: b */
    public final void m3300b(int i) {
        this.f31127o = i;
    }

    /* renamed from: b */
    public final void m3298b(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f31129q = str;
    }

    /* renamed from: c */
    public final C14589b<Void> m3297c() {
        return this.f31125m;
    }

    /* renamed from: d */
    public final LiveData<RealmList<PlanFeatureRealmObject>> m3295d() {
        return this.f31115c;
    }

    /* renamed from: e */
    public final LiveData<IapPlanRealmObject> m3293e() {
        return this.f31135w.m3459f();
    }

    /* renamed from: f */
    public final Map<String, PlanProductRealmObject> m3291f() {
        Map<String, PlanProductRealmObject> map;
        RealmList<PlanProductRealmObject> products;
        IapPlanRealmObject value = m3293e().getValue();
        if (value == null || (products = value.getProducts()) == null) {
            map = null;
        } else {
            ArrayList arrayList = new ArrayList(C15022n.m555a(products, 10));
            for (PlanProductRealmObject planProductRealmObject : products) {
                arrayList.add(C14985o.m644a(planProductRealmObject.getProductPeriodType(), planProductRealmObject));
            }
            map = C15005e0.m628a(arrayList);
        }
        return map;
    }

    /* renamed from: g */
    public final LiveData<C13773d.AbstractC13775b> m3289g() {
        return this.f31135w.m3457g();
    }

    /* renamed from: h */
    public final void m3287h() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C13869d(null), 3, null);
    }

    /* renamed from: i */
    public final int m3286i() {
        return this.f31128p;
    }

    /* renamed from: j */
    public final List<C13796c> m3285j() {
        return this.f31126n;
    }

    /* renamed from: k */
    public final LiveData<String> m3284k() {
        return this.f31119g;
    }

    /* renamed from: l */
    public final C14589b<View> m3283l() {
        return this.f31124l;
    }

    /* renamed from: m */
    public final int m3282m() {
        return this.f31127o;
    }

    /* renamed from: n */
    public final IapPageProductInfo.ProductInfo m3281n() {
        Integer p = m3279p();
        Object obj = null;
        IapPageProductInfo.ProductInfo productInfo = null;
        if (p != null) {
            int intValue = p.intValue();
            IapPageProductInfo value = this.f31120h.getValue();
            productInfo = null;
            if (value != null) {
                List<IapPageProductInfo.ProductInfo> a = value.m28428a();
                productInfo = null;
                if (a != null) {
                    Iterator<T> it = a.iterator();
                    while (it.hasNext()) {
                        obj = it.next();
                        if (C15149k.m384a((Object) ((IapPageProductInfo.ProductInfo) obj).m28425c(), (Object) C13754k.f30865a.m3515a(intValue))) {
                            break;
                        }
                    }
                    productInfo = (IapPageProductInfo.ProductInfo) obj;
                }
            }
        }
        return productInfo;
    }

    /* renamed from: o */
    public final LiveData<IapPageProductInfo> m3280o() {
        return this.f31121i;
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.f31135w.m3486a();
        this.f31135w.m3470b();
    }

    /* renamed from: p */
    public final Integer m3279p() {
        PlanProductRealmObject planProductRealmObject;
        Map<String, PlanProductRealmObject> f = m3291f();
        return (f == null || (planProductRealmObject = f.get("ad_free_y")) == null) ? null : Integer.valueOf(planProductRealmObject.getPromoType());
    }

    @MainThread
    /* renamed from: q */
    public final void m3278q() {
        this.f31113a.setValue(true);
        this.f31118f.setValue("ad_free_y");
        if (C14137r4.m2369i()) {
            m3273v();
        } else {
            m3287h();
        }
    }

    /* renamed from: r */
    public final LiveData<Boolean> m3277r() {
        return this.f31123k;
    }

    /* renamed from: s */
    public final MediatorLiveData<Boolean> m3276s() {
        return this.f31114b;
    }

    /* renamed from: t */
    public final LiveData<Boolean> m3275t() {
        return this.f31117e;
    }

    /* renamed from: u */
    public final void m3274u() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C13871f(null), 3, null);
    }

    /* renamed from: v */
    public final void m3273v() {
        this.f31113a.setValue(true);
        C13760c.m3495a(C13760c.f30875d.m3487a(), ViewModelKt.getViewModelScope(this), new C13872g(), null, 4, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x00ad, code lost:
        if (r0.equals("notification") != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00ba, code lost:
        if (r0.equals("offline_db_auto_update_only_wifi") != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00c7, code lost:
        if (r0.equals("protection_auto_update") != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d4, code lost:
        if (r0.equals("post_call_end_promo") != false) goto L_0x00e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e1, code lost:
        if (r0.equals("deep_link_ad_free") != false) goto L_0x00e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00e4, code lost:
        r5 = r3.f31132t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f3, code lost:
        if (r0.equals("ced_offlinedb_expired") != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0100, code lost:
        if (r0.equals("deep_link_auto_update") != false) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0103, code lost:
        r5 = r3.f31133u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0112, code lost:
        if (r0.equals("protection_spam_hammer") != false) goto L_0x0134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x011f, code lost:
        if (r0.equals("protection_expand_db") != false) goto L_0x0122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0122, code lost:
        r5 = r3.f31134v;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0131, code lost:
        if (r0.equals("spam_hammer") != false) goto L_0x0134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0134, code lost:
        r5 = r3.f31131s;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0086, code lost:
        if (r0.equals("offline_db_expand") != false) goto L_0x0122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0093, code lost:
        if (r0.equals("deep_link_expand") != false) goto L_0x0122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00a0, code lost:
        if (r0.equals("offline_db_auto_update") != false) goto L_0x0103;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3272w() {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = r0.f31129q
            r4 = r0
            r0 = r4
            int r0 = r0.hashCode()
            switch(r0) {
                case -2078405508: goto L_0x012a;
                case -1742672291: goto L_0x0118;
                case -1311307754: goto L_0x010b;
                case -1199528057: goto L_0x00f9;
                case -919935030: goto L_0x00ec;
                case -790402506: goto L_0x00da;
                case -471564919: goto L_0x00cd;
                case -419012365: goto L_0x00c0;
                case -93188547: goto L_0x00b3;
                case 595233003: goto L_0x00a6;
                case 605782260: goto L_0x0099;
                case 1493465004: goto L_0x008c;
                case 2077797919: goto L_0x007f;
                default: goto L_0x007c;
            }
        L_0x007c:
            goto L_0x013c
        L_0x007f:
            r0 = r4
            java.lang.String r1 = "offline_db_expand"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0122
        L_0x008c:
            r0 = r4
            java.lang.String r1 = "deep_link_expand"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0122
        L_0x0099:
            r0 = r4
            java.lang.String r1 = "offline_db_auto_update"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0103
        L_0x00a6:
            r0 = r4
            java.lang.String r1 = "notification"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0103
        L_0x00b3:
            r0 = r4
            java.lang.String r1 = "offline_db_auto_update_only_wifi"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0103
        L_0x00c0:
            r0 = r4
            java.lang.String r1 = "protection_auto_update"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0103
        L_0x00cd:
            r0 = r4
            java.lang.String r1 = "post_call_end_promo"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x00e4
        L_0x00da:
            r0 = r4
            java.lang.String r1 = "deep_link_ad_free"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
        L_0x00e4:
            r0 = r3
            int r0 = r0.f31132t
            r5 = r0
            goto L_0x0141
        L_0x00ec:
            r0 = r4
            java.lang.String r1 = "ced_offlinedb_expired"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0103
        L_0x00f9:
            r0 = r4
            java.lang.String r1 = "deep_link_auto_update"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
        L_0x0103:
            r0 = r3
            int r0 = r0.f31133u
            r5 = r0
            goto L_0x0141
        L_0x010b:
            r0 = r4
            java.lang.String r1 = "protection_spam_hammer"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
            goto L_0x0134
        L_0x0118:
            r0 = r4
            java.lang.String r1 = "protection_expand_db"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
        L_0x0122:
            r0 = r3
            int r0 = r0.f31134v
            r5 = r0
            goto L_0x0141
        L_0x012a:
            r0 = r4
            java.lang.String r1 = "spam_hammer"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x013c
        L_0x0134:
            r0 = r3
            int r0 = r0.f31131s
            r5 = r0
            goto L_0x0141
        L_0x013c:
            r0 = r3
            int r0 = r0.f31130r
            r5 = r0
        L_0x0141:
            r0 = r3
            r1 = r5
            r0.f31128p = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p581r.C13865h.m3272w():void");
    }

    /* renamed from: x */
    public final void m3271x() {
        RealmList<PlanFeatureRealmObject> value = this.f31115c.getValue();
        if (value != null) {
            C15149k.m383a((Object) value, "iapFeatures.value ?: return");
            Iterator<PlanFeatureRealmObject> it = value.iterator();
            int i = 0;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (it.hasNext()) {
                String name = it.next().getName();
                switch (name.hashCode()) {
                    case -1939100520:
                        if (!name.equals("expanddb")) {
                            break;
                        } else {
                            z4 = true;
                            break;
                        }
                    case 96432:
                        if (!name.equals("ads")) {
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case 877246287:
                        if (!name.equals("spamhammer")) {
                            break;
                        } else {
                            z3 = C14073m.m2622f();
                            break;
                        }
                    case 2137402785:
                        if (!name.equals("offlinedb")) {
                            break;
                        } else {
                            z = true;
                            break;
                        }
                }
            }
            ArrayList arrayList = new ArrayList();
            if (z) {
                arrayList.add(new C13796c(R$drawable.ic_iap_intro_img_protection, C14206w4.m2225a((int) R$string.premiumsubscribe_point_protection), C14206w4.m2225a((int) R$string.premiumsubscribe_point_protection_detail)));
                i = 1;
            }
            int i2 = i;
            if (z2) {
                arrayList.add(new C13796c(R$drawable.ic_iap_intro_img_no_ad, C14206w4.m2225a((int) R$string.premiumsubscribe_point_c), C14206w4.m2225a((int) R$string.premiumsubscribe_point_c_detail)));
                this.f31132t = i;
                i2 = i + 1;
            }
            int i3 = i2;
            if (z3) {
                arrayList.add(new C13796c(R$drawable.ic_iap_intro_img_spam_hammer, C14206w4.m2225a((int) R$string.premiumsubscribe_premiumversion_d_v2), C14206w4.m2225a((int) R$string.spam_hammer_description_v2)));
                this.f31131s = i2;
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (z) {
                arrayList.add(new C13796c(R$drawable.ic_iap_intro_img_auto_update, C14206w4.m2225a((int) R$string.premiumsubscribe_point_b_v2), C14206w4.m2225a((int) R$string.premiumsubscribe_point_b_detail_v2)));
                this.f31133u = i3;
                i4 = i3 + 1;
            }
            if (z4) {
                arrayList.add(new C13796c(R$drawable.ic_iap_intro_img_expand_database, C14206w4.m2225a((int) R$string.premiumsubscribe_point_c_new_v2), C14206w4.m2225a((int) R$string.premiumsubscribe_point_c_new_detail_v2)));
                this.f31134v = i4;
            }
            this.f31126n = arrayList;
            m3272w();
        }
    }
}
