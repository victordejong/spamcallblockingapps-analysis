package p459j.p460a.p474c0.p483e.p487d;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.media2.exoplayer.external.audio.Sonic;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdRequestingRepo;
import gogolook.callgogolook2.p074ad.AdUnit;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p474c0.p483e.p486c.C11748b;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14167t;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15010g0;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018�� <2\u00020\u0001:\u0001<B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020 H\u0002J\u0010\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020 H\u0016J\b\u0010&\u001a\u00020 H\u0016J\b\u0010'\u001a\u00020 H\u0016J\b\u0010(\u001a\u00020 H\u0016J\u001a\u0010)\u001a\u00020 2\u0006\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0018\u0010.\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010/\u001a\u00020 H\u0002J\b\u00100\u001a\u00020 H\u0002J\b\u00101\u001a\u00020 H\u0002J\u000e\u00102\u001a\u00020 2\u0006\u00103\u001a\u000204J\u0010\u00105\u001a\u00020 2\b\b\u0001\u00106\u001a\u00020\u000fJ\b\u00107\u001a\u00020 H\u0002J\b\u00108\u001a\u00020 H\u0002J\b\u00109\u001a\u00020 H\u0002J\u0010\u0010:\u001a\u00020 2\u0006\u0010;\u001a\u00020\u000fH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\n\u001a\u0004\b\u0016\u0010\u0017¨\u0006="}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ScanningPageFragment;", "Landroidx/fragment/app/Fragment;", "()V", "animationJob", "Lkotlinx/coroutines/Job;", "eventHelper", "Lgogolook/callgogolook2/messaging/scan/tracking/ScanningPageEventHelper$EventHelper;", "getEventHelper", "()Lgogolook/callgogolook2/messaging/scan/tracking/ScanningPageEventHelper$EventHelper;", "eventHelper$delegate", "Lkotlin/Lazy;", "hasResult", "", "phase1AnimationDone", "phase1Duration", "", "round", "scanProgressAnimationScope", "Lkotlinx/coroutines/CoroutineScope;", "urlCount", "viewModel", "Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "getViewModel", "()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "viewModel$delegate", "getContextSafely", "Landroid/content/Context;", "getInterval", "targetProgress", "currentProgress", "durationInMS", "observeAdObject", "", "observeAdRequestState", "onAdReadyToShow", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "onDetach", "onResume", "onStart", "onStop", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "runProgressTo", "runProgressToEnd", "runProgressToPhase1", "runProgressToPhase2", "trackAction", "action", "", "trackStatus", "status", "tryToLoadAds", "tryToSetupAd", "updateResultState", "updateScanningInfo", "index", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.t */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t.class */
public final class C11801t extends Fragment {

    /* renamed from: j */
    public static final /* synthetic */ AbstractC14906i[] f26460j;

    /* renamed from: k */
    public static final C11804c f26461k = new C11804c(null);

    /* renamed from: c */
    public int f26464c;

    /* renamed from: d */
    public int f26465d;

    /* renamed from: e */
    public int f26466e;

    /* renamed from: f */
    public boolean f26467f;

    /* renamed from: g */
    public boolean f26468g;

    /* renamed from: i */
    public HashMap f26470i;

    /* renamed from: a */
    public final AbstractC14974f f26462a = FragmentViewModelLazyKt.createViewModelLazy(this, C15131a0.m419a(C11757e.class), new C11802a(this), new C11803b(this));

    /* renamed from: b */
    public final CoroutineScope f26463b = CoroutineScopeKt.MainScope();

    /* renamed from: h */
    public final AbstractC14974f f26469h = C14975g.m662a(C11805d.f26473a);

    /* renamed from: j.a.c0.e.d.t$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$a.class */
    public static final class C11802a extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {

        /* renamed from: a */
        public final /* synthetic */ Fragment f26471a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11802a(Fragment fragment) {
            super(0);
            this.f26471a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelStore invoke() {
            FragmentActivity requireActivity = this.f26471a.requireActivity();
            C15149k.m383a((Object) requireActivity, "requireActivity()");
            ViewModelStore viewModelStore = requireActivity.getViewModelStore();
            C15149k.m383a((Object) viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: j.a.c0.e.d.t$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$b.class */
    public static final class C11803b extends AbstractC15150l implements AbstractC15107a<ViewModelProvider.Factory> {

        /* renamed from: a */
        public final /* synthetic */ Fragment f26472a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11803b(Fragment fragment) {
            super(0);
            this.f26472a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelProvider.Factory invoke() {
            FragmentActivity requireActivity = this.f26472a.requireActivity();
            C15149k.m383a((Object) requireActivity, "requireActivity()");
            ViewModelProvider.Factory defaultViewModelProviderFactory = requireActivity.getDefaultViewModelProviderFactory();
            C15149k.m383a((Object) defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    /* renamed from: j.a.c0.e.d.t$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$c.class */
    public static final class C11804c {
        public C11804c() {
        }

        public /* synthetic */ C11804c(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C11801t m8257a() {
            return new C11801t();
        }
    }

    /* renamed from: j.a.c0.e.d.t$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$d.class */
    public static final class C11805d extends AbstractC15150l implements AbstractC15107a<C11748b> {

        /* renamed from: a */
        public static final C11805d f26473a = new C11805d();

        public C11805d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11748b invoke() {
            return new C11748b();
        }
    }

    /* renamed from: j.a.c0.e.d.t$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$e.class */
    public static final class C11806e<T> implements Observer<T> {
        public C11806e() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AbstractC6207d dVar = (AbstractC6207d) t;
            if (dVar != null) {
                C11801t.this.m8267c(dVar);
            }
        }
    }

    /* renamed from: j.a.c0.e.d.t$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$f.class */
    public static final class C11807f<T> implements Observer<T> {
        public C11807f() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AdRequestState adRequestState = (AdRequestState) t;
            C11801t.this.m8287M().m8353c().mo28842a(adRequestState);
            if (adRequestState instanceof AdRequestState.End) {
                C11801t.this.m8280T();
            }
        }
    }

    /* renamed from: j.a.c0.e.d.t$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$g.class */
    public static final class C11808g<T> implements Observer<T> {
        public C11808g() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((Boolean) t).booleanValue() && C11801t.this.f26468g) {
                C11801t.this.m8279U();
            }
        }
    }

    /* renamed from: j.a.c0.e.d.t$h */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$h.class */
    public static final class C11809h<T> implements Observer<T> {
        public C11809h() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((AdUnit) t) == AdUnit.SMS_SCANNING_PAGE) {
                C11801t.this.m8262e("click_ad");
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/messaging/scan/ui/ScanningPageFragment$runProgressTo$1$1", m472f = "ScanningPageFragment.kt", m471l = {118, 127}, m470m = "invokeSuspend")
    /* renamed from: j.a.c0.e.d.t$i */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/t$i.class */
    public static final class C11810i extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f26478a;

        /* renamed from: b */
        public Object f26479b;

        /* renamed from: c */
        public int f26480c;

        /* renamed from: d */
        public final /* synthetic */ ProgressBar f26481d;

        /* renamed from: e */
        public final /* synthetic */ long f26482e;

        /* renamed from: f */
        public final /* synthetic */ C11801t f26483f;

        /* renamed from: g */
        public final /* synthetic */ int f26484g;

        /* renamed from: h */
        public final /* synthetic */ int f26485h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11810i(ProgressBar progressBar, long j, AbstractC15044d dVar, C11801t tVar, int i, int i2) {
            super(2, dVar);
            this.f26481d = progressBar;
            this.f26482e = j;
            this.f26483f = tVar;
            this.f26484g = i;
            this.f26485h = i2;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11810i iVar = new C11810i(this.f26481d, this.f26482e, dVar, this.f26483f, this.f26484g, this.f26485h);
            iVar.f26478a = (CoroutineScope) obj;
            return iVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11810i) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0177  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01bd  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x01f5  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a1 -> B:29:0x00a6). Please submit an issue!!! */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 523
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p483e.p487d.C11801t.C11810i.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11801t.class), "viewModel", "getViewModel()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11801t.class), "eventHelper", "getEventHelper()Lgogolook/callgogolook2/messaging/scan/tracking/ScanningPageEventHelper$EventHelper;");
        C15131a0.m412a(sVar2);
        f26460j = new AbstractC14906i[]{sVar, sVar2};
    }

    public C11801t() {
        super(R$layout.fragment_url_scan_page);
    }

    /* renamed from: J */
    public void m8290J() {
        HashMap hashMap = this.f26470i;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final Context m8289K() {
        Context o = MyApplication.m29013o();
        if (o == null) {
            FrameLayout frameLayout = (FrameLayout) m8271b(R$id.adViewScanPage);
            C15149k.m383a((Object) frameLayout, "adViewScanPage");
            o = frameLayout.getContext();
            C15149k.m383a((Object) o, "adViewScanPage.context");
        }
        return o;
    }

    /* renamed from: L */
    public final C11748b m8288L() {
        AbstractC14974f fVar = this.f26469h;
        AbstractC14906i iVar = f26460j[1];
        return (C11748b) fVar.getValue();
    }

    /* renamed from: M */
    public final C11757e m8287M() {
        AbstractC14974f fVar = this.f26462a;
        AbstractC14906i iVar = f26460j[0];
        return (C11757e) fVar.getValue();
    }

    /* renamed from: N */
    public final void m8286N() {
        MutableLiveData<AbstractC6207d> a = m8287M().m8358a(AdUnit.SMS_SCANNING_PAGE.m28821a());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        a.observe(viewLifecycleOwner, new C11806e());
    }

    /* renamed from: O */
    public final void m8285O() {
        LiveData<AdRequestState> d = m8287M().m8351d();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        d.observe(viewLifecycleOwner, new C11807f());
    }

    /* renamed from: P */
    public final void m8284P() {
        m8278a(1000, 1000);
    }

    /* renamed from: Q */
    public final void m8283Q() {
        m8278a(400, this.f26464c);
    }

    /* renamed from: R */
    public final void m8282R() {
        m8278a(700, Sonic.AMDF_FREQUENCY);
    }

    /* renamed from: S */
    public final void m8281S() {
        AdRequestingRepo c = m8287M().m8353c();
        c.mo28843a(m8289K(), AdUnit.SMS_SCANNING_PAGE, C15010g0.m613a(EnumC6184a.NATIVE));
        c.mo28843a(m8289K(), AdUnit.SMS_SCAN_RESULT_STICKY, C15010g0.m613a(EnumC6184a.NATIVE));
    }

    /* renamed from: T */
    public final void m8280T() {
        C11757e M = m8287M();
        AdUnit adUnit = AdUnit.SMS_SCANNING_PAGE;
        FrameLayout frameLayout = (FrameLayout) m8271b(R$id.adViewScanPage);
        C15149k.m383a((Object) frameLayout, "adViewScanPage");
        M.m8367a(adUnit, frameLayout.getChildCount());
    }

    /* renamed from: U */
    public final void m8279U() {
        if (!this.f26467f) {
            m8284P();
        }
        this.f26467f = true;
    }

    /* renamed from: a */
    public final int m8277a(int i, int i2, int i3) {
        int i4 = i - i2;
        int i5 = i3 / 20;
        int i6 = i4;
        if (i4 >= 0) {
            i6 = i5 <= 0 ? i4 : i4 / i5;
        }
        return i6;
    }

    /* renamed from: a */
    public final void m8278a(int i, int i2) {
        ProgressBar progressBar = (ProgressBar) m8271b(R$id.progressBar);
        if (progressBar != null) {
            BuildersKt__Builders_commonKt.launch$default(this.f26463b, null, null, new C11810i(progressBar, i2 + System.currentTimeMillis(), null, this, i2, i), 3, null);
        }
    }

    /* renamed from: b */
    public View m8271b(int i) {
        if (this.f26470i == null) {
            this.f26470i = new HashMap();
        }
        View view = (View) this.f26470i.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f26470i.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c */
    public final void m8268c(int i) {
        m8288L().m8383a(i);
    }

    /* renamed from: c */
    public final void m8267c(AbstractC6207d dVar) {
        dVar.mo23572a(m8289K(), (FrameLayout) m8271b(R$id.adViewScanPage));
    }

    /* renamed from: d */
    public final void m8265d(int i) {
        SmsMessage g = m8287M().m8346g();
        if (g != null && i < g.m27502q().size()) {
            TextView textView = (TextView) m8271b(R$id.tv_description);
            if (textView != null) {
                textView.setText(getString(R$string.sp_url_scanning, String.valueOf(i + 1), String.valueOf(g.m27502q().size())));
            }
            TextView textView2 = (TextView) m8271b(R$id.tv_url);
            if (textView2 != null) {
                textView2.setText(g.m27502q().get(i));
            }
        }
    }

    /* renamed from: e */
    public final void m8262e(String str) {
        C15149k.m377b(str, "action");
        m8288L().m8379b(str);
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m8290J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        CoroutineScopeKt.cancel$default(this.f26463b, null, 1, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C11748b L = m8288L();
        L.m8377c(m8287M().m8347f());
        L.m8381b(this.f26465d);
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        L.m8380b(o);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m8287M().m8353c().mo28834f(AdUnit.SMS_SCANNING_PAGE);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C11748b L = m8288L();
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        L.m8378c(o);
        m8287M().m8353c().mo28836d(AdUnit.SMS_SCANNING_PAGE);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        List<String> q;
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            C14123p4.m2429b(activity.getWindow(), C14167t.m2315a(2131099975));
        }
        LiveData<Boolean> l = m8287M().m8341l();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        l.observe(viewLifecycleOwner, new C11808g());
        LiveData<AdUnit> e = m8287M().m8349e();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner2, "viewLifecycleOwner");
        e.observe(viewLifecycleOwner2, new C11809h());
        C11757e M = m8287M();
        SmsMessage g = M.m8346g();
        this.f26465d = (g == null || (q = g.m27502q()) == null) ? 0 : q.size();
        M.m8334s();
        M.m8333t();
        this.f26464c = M.m8340m().m659c().intValue();
        m8283Q();
        m8285O();
        m8286N();
        m8281S();
    }
}
