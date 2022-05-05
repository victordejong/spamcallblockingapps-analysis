package p459j.p460a.p576w.p581r;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelStore;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.IapPageProductInfo;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import io.realm.RealmList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p576w.C13752i;
import p459j.p460a.p576w.C13753j;
import p459j.p460a.p576w.p577n.C13757a;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14326z2;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p604y0.p611f.C14589b;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� F2\u00020\u0001:\u0001FB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0002J\b\u0010&\u001a\u00020$H\u0002J\b\u0010'\u001a\u00020$H\u0002J\b\u0010(\u001a\u00020)H\u0014J\u0010\u0010*\u001a\u00020\u00182\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u0010-\u001a\u00020$2\u0006\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020)2\u0006\u00100\u001a\u00020)H\u0002J\b\u00101\u001a\u00020$H\u0002J\u001a\u00102\u001a\u00020$2\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010/H\u0014J\u0010\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u000208H\u0016J\u0012\u00109\u001a\u00020$2\b\u00105\u001a\u0004\u0018\u00010/H\u0016J\b\u0010:\u001a\u00020$H\u0016J\b\u0010;\u001a\u00020$H\u0016J\u0010\u0010<\u001a\u00020$2\u0006\u0010=\u001a\u000204H\u0002J\b\u0010>\u001a\u00020$H\u0002J \u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020A2\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020$H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR#\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u000f\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u000f\u001a\u0004\b \u0010!¨\u0006G"}, m815d2 = {"Lgogolook/callgogolook2/iap/ui/IapFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "()V", "action", "", "fetchSuccess", "", "from", "hasLaunchedYearlyProduct", "hasShowReportedUsersTip", "iapAdapter", "Lgogolook/callgogolook2/iap/ui/IapAdapter;", "getIapAdapter", "()Lgogolook/callgogolook2/iap/ui/IapAdapter;", "iapAdapter$delegate", "Lkotlin/Lazy;", "iapRepository", "Lgogolook/callgogolook2/iap/data/IapRepository;", "kotlin.jvm.PlatformType", "getIapRepository", "()Lgogolook/callgogolook2/iap/data/IapRepository;", "iapRepository$delegate", "material", "promoPopup", "Landroid/widget/PopupWindow;", "remoteConfigDataSource", "Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;", "getRemoteConfigDataSource", "()Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;", "remoteConfigDataSource$delegate", "viewModel", "Lgogolook/callgogolook2/iap/ui/IapViewModel;", "getViewModel", "()Lgogolook/callgogolook2/iap/ui/IapViewModel;", "viewModel$delegate", "alertMessage", "", "message", "checkRegistrationAndPurchaseSubscription", "clickPurchaseTracking", "getLayoutResource", "", "getPromoPopup", "context", "Landroid/content/Context;", "handleArguments", "bundle", "Landroid/os/Bundle;", "measureSpec", "observeData", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreate", "onStart", "onStop", "popupPromoWindow", "anchor", "setErrorView", "setPurchaseFreeTrialDays", "purchaseCta", "Landroid/widget/TextView;", "freeTrialPolicy", "product", "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", "showTimeoutDialog", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.r.d */
/* loaded from: classes2-dex2jar.jar:j/a/w/r/d.class */
public final class C13844d extends AbstractC12476c {

    /* renamed from: r */
    public static final /* synthetic */ AbstractC14906i[] f31082r;

    /* renamed from: s */
    public static final C13846b f31083s = new C13846b(null);

    /* renamed from: f */
    public final AbstractC14974f f31084f = C14975g.m662a(new C13849e());

    /* renamed from: g */
    public final AbstractC14974f f31085g = C14975g.m662a(C13858n.f31108a);

    /* renamed from: h */
    public final AbstractC14974f f31086h = FragmentViewModelLazyKt.createViewModelLazy(this, C15131a0.m419a(C13865h.class), new C13845a(this), new C13861q());

    /* renamed from: i */
    public final AbstractC14974f f31087i = C14975g.m662a(new C13848d());

    /* renamed from: j */
    public String f31088j = "others";

    /* renamed from: k */
    public String f31089k;

    /* renamed from: l */
    public String f31090l;

    /* renamed from: m */
    public PopupWindow f31091m;

    /* renamed from: n */
    public boolean f31092n;

    /* renamed from: o */
    public boolean f31093o;

    /* renamed from: p */
    public boolean f31094p;

    /* renamed from: q */
    public HashMap f31095q;

    /* renamed from: j.a.w.r.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$a.class */
    public static final class C13845a extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {

        /* renamed from: a */
        public final /* synthetic */ Fragment f31096a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13845a(Fragment fragment) {
            super(0);
            this.f31096a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelStore invoke() {
            FragmentActivity requireActivity = this.f31096a.requireActivity();
            C15149k.m383a((Object) requireActivity, "requireActivity()");
            ViewModelStore viewModelStore = requireActivity.getViewModelStore();
            C15149k.m383a((Object) viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: j.a.w.r.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$b.class */
    public static final class C13846b {
        public C13846b() {
        }

        public /* synthetic */ C13846b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C13844d m3310a(String str, String str2, String str3) {
            C15149k.m377b(str, "from");
            C13844d dVar = new C13844d();
            Bundle bundle = new Bundle();
            bundle.putString("from", str);
            if (str2 != null) {
                bundle.putString("action", str2);
            }
            if (str3 != null) {
                bundle.putString("material", str3);
            }
            dVar.setArguments(bundle);
            return dVar;
        }
    }

    /* renamed from: j.a.w.r.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$c.class */
    public static final class View$OnClickListenerC13847c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ PopupWindow f31097a;

        public View$OnClickListenerC13847c(PopupWindow popupWindow) {
            this.f31097a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f31097a.dismiss();
        }
    }

    /* renamed from: j.a.w.r.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$d.class */
    public static final class C13848d extends AbstractC15150l implements AbstractC15107a<C13834a> {
        public C13848d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13834a invoke() {
            return new C13834a(C13844d.this.m3328a0());
        }
    }

    /* renamed from: j.a.w.r.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$e.class */
    public static final class C13849e extends AbstractC15150l implements AbstractC15107a<C13773d> {
        public C13849e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13773d invoke() {
            Context requireContext = C13844d.this.requireContext();
            C15149k.m383a((Object) requireContext, "requireContext()");
            Context applicationContext = requireContext.getApplicationContext();
            if (applicationContext != null) {
                return ((MyApplication) applicationContext).m29026c();
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.MyApplication");
        }
    }

    /* renamed from: j.a.w.r.d$f */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$f.class */
    public static final class C13850f<T> implements Observer<T> {
        public C13850f() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (!((Boolean) t).booleanValue()) {
                C13844d.this.m3323c0();
            }
        }
    }

    /* renamed from: j.a.w.r.d$g */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$g.class */
    public static final class C13851g<T> implements Observer<T> {
        public C13851g() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((RealmList) t) != null) {
                C13844d.this.m3328a0().m3271x();
                C13844d.this.m3340X().notifyItemChanged(0);
            }
        }
    }

    /* renamed from: j.a.w.r.d$h */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$h.class */
    public static final class C13852h<T> implements Observer<T> {
        public C13852h() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C13773d.AbstractC13775b bVar = (C13773d.AbstractC13775b) t;
            int i = 0;
            if (bVar != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) C13844d.this.mo1408c(R$id.clIap);
                C15149k.m383a((Object) constraintLayout, "clIap");
                constraintLayout.setVisibility(0);
            }
            int i2 = 4;
            if (bVar instanceof C13773d.AbstractC13775b.C13776a) {
                C13773d.AbstractC13775b.C13776a aVar = (C13773d.AbstractC13775b.C13776a) bVar;
                boolean z = aVar.m3450b() == 0;
                CardView cardView = (CardView) C13844d.this.mo1408c(R$id.cvIapPurchase);
                C15149k.m383a((Object) cardView, "cvIapPurchase");
                if (!z) {
                    i = 4;
                }
                cardView.setVisibility(i);
                if (z) {
                    C13844d.this.f31093o = true;
                    String str = C13844d.this.f31089k;
                    if (str == null) {
                        str = "";
                    }
                    if (C15149k.m384a((Object) str, (Object) "launch_yearly_product") && !C13844d.this.f31094p && C14137r4.m2369i()) {
                        ((CardView) C13844d.this.mo1408c(R$id.cvIapPurchase)).performClick();
                        C13844d.this.f31094p = true;
                    }
                }
                C13844d.this.m3340X().m3348a(!z);
                if (3 == aVar.m3450b()) {
                    C13844d.this.m3320d0();
                }
            } else if (bVar instanceof C13773d.AbstractC13775b.C13777b) {
                CardView cardView2 = (CardView) C13844d.this.mo1408c(R$id.cvIapPurchase);
                C15149k.m383a((Object) cardView2, "cvIapPurchase");
                cardView2.setClickable(true);
                int b = ((C13773d.AbstractC13775b.C13777b) bVar).m3449b();
                if (b == 3) {
                    C13844d dVar = C13844d.this;
                    String string = dVar.getString(R$string.cancel);
                    C15149k.m383a((Object) string, "getString(R.string.cancel)");
                    dVar.m3318e(string);
                    C13752i.m3516d(0);
                } else if (b == 1 || b == 2) {
                    C13844d dVar2 = C13844d.this;
                    String string2 = dVar2.getString(R$string.ad_free_iap_toast_subscribe_failed);
                    C15149k.m383a((Object) string2, "getString(R.string.ad_fr…p_toast_subscribe_failed)");
                    dVar2.m3318e(string2);
                    if (1 == b) {
                        i2 = -1;
                    }
                    C13752i.m3516d(i2);
                }
            }
        }
    }

    /* renamed from: j.a.w.r.d$i */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$i.class */
    public static final class C13853i<T> implements Observer<T> {
        public C13853i() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((IapPageProductInfo) t) != null) {
                C13844d.this.m3340X().notifyItemChanged(1);
            }
        }
    }

    /* renamed from: j.a.w.r.d$j */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$j.class */
    public static final class C13854j<T> implements Observer<T> {
        public C13854j() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            PlanProductRealmObject planProductRealmObject;
            String str = (String) t;
            Map<String, PlanProductRealmObject> f = C13844d.this.m3328a0().m3291f();
            if (f != null && (planProductRealmObject = f.get(str)) != null) {
                C13844d dVar = C13844d.this;
                TextView textView = (TextView) dVar.mo1408c(R$id.tvIapPurchaseCta);
                C15149k.m383a((Object) textView, "tvIapPurchaseCta");
                TextView textView2 = (TextView) C13844d.this.mo1408c(R$id.tvFreeTrialPolicy);
                C15149k.m383a((Object) textView2, "tvFreeTrialPolicy");
                dVar.m3334a(textView, textView2, planProductRealmObject);
            }
        }
    }

    /* renamed from: j.a.w.r.d$k */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$k.class */
    public static final class C13855k<T> implements Observer<T> {
        public C13855k() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            View view = (View) t;
            if (C13844d.this.f31093o && !C13844d.this.f31092n) {
                C13844d dVar = C13844d.this;
                C15149k.m383a((Object) view, "view");
                dVar.m3335a(view);
            }
        }
    }

    /* renamed from: j.a.w.r.d$l */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$l.class */
    public static final class C13856l<T> implements Observer<T> {
        public C13856l() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            Void r0 = (Void) t;
            PopupWindow popupWindow = C13844d.this.f31091m;
            if (popupWindow != null) {
                if (!popupWindow.isShowing()) {
                    popupWindow = null;
                }
                if (popupWindow != null) {
                    popupWindow.dismiss();
                }
            }
        }
    }

    /* renamed from: j.a.w.r.d$m */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$m.class */
    public static final class View$OnClickListenerC13857m implements View.OnClickListener {
        public View$OnClickListenerC13857m() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13844d.this.m3342V();
        }
    }

    /* renamed from: j.a.w.r.d$n */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$n.class */
    public static final class C13858n extends AbstractC15150l implements AbstractC15107a<C13757a> {

        /* renamed from: a */
        public static final C13858n f31108a = new C13858n();

        public C13858n() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13757a invoke() {
            C13640c d = C13640c.m3745d();
            C15149k.m383a((Object) d, "FirebaseRemoteConfigManager.getInstance()");
            return new C13757a(d);
        }
    }

    /* renamed from: j.a.w.r.d$o */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$o.class */
    public static final class DialogInterface$OnDismissListenerC13859o implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC13859o() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C13844d.this.requireActivity().finish();
        }
    }

    /* renamed from: j.a.w.r.d$p */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$p.class */
    public static final class DialogInterface$OnClickListenerC13860p implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13860p f31110a = new DialogInterface$OnClickListenerC13860p();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.w.r.d$q */
    /* loaded from: classes2-dex2jar.jar:j/a/w/r/d$q.class */
    public static final class C13861q extends AbstractC15150l implements AbstractC15107a<C13753j> {
        public C13861q() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13753j invoke() {
            C13773d Y = C13844d.this.m3339Y();
            C15149k.m383a((Object) Y, "iapRepository");
            return new C13753j(Y, C13844d.this.m3338Z());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13844d.class), "iapRepository", "getIapRepository()Lgogolook/callgogolook2/iap/data/IapRepository;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C13844d.class), "remoteConfigDataSource", "getRemoteConfigDataSource()Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C13844d.class), "viewModel", "getViewModel()Lgogolook/callgogolook2/iap/ui/IapViewModel;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C13844d.class), "iapAdapter", "getIapAdapter()Lgogolook/callgogolook2/iap/ui/IapAdapter;");
        C15131a0.m412a(sVar4);
        f31082r = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4};
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f31095q;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.iap_fragment;
    }

    /* renamed from: V */
    public final void m3342V() {
        if (!C14137r4.m2369i()) {
            FragmentActivity requireActivity = requireActivity();
            C14376j.EnumC14379c cVar = C14376j.EnumC14379c.IAP;
            FragmentActivity requireActivity2 = requireActivity();
            C15149k.m383a((Object) requireActivity2, "requireActivity()");
            Intent intent = requireActivity2.getIntent();
            C15149k.m383a((Object) intent, "requireActivity().intent");
            C14137r4.m2384a(requireActivity, cVar, intent.getExtras(), RegistrationActivity.EnumC4523g.IAP, false, true, null);
        } else if (!C14217x3.m2137h(requireActivity())) {
            String string = getResources().getString(R$string.error_code_nointernet);
            C15149k.m383a((Object) string, "resources.getString(R.st…ng.error_code_nointernet)");
            m3318e(string);
        } else {
            CardView cardView = (CardView) mo1408c(R$id.cvIapPurchase);
            C15149k.m383a((Object) cardView, "cvIapPurchase");
            cardView.setClickable(false);
            C13865h a0 = m3328a0();
            FragmentActivity requireActivity3 = requireActivity();
            C15149k.m383a((Object) requireActivity3, "requireActivity()");
            a0.m3306a(requireActivity3, this.f31088j, this.f31090l);
        }
        m3341W();
    }

    /* renamed from: W */
    public final void m3341W() {
        int i;
        String value = m3328a0().m3284k().getValue();
        if (value != null) {
            int hashCode = value.hashCode();
            if (hashCode != 400018166) {
                if (hashCode == 530277949 && value.equals("ad_free_biannual")) {
                    i = 3;
                }
            } else if (value.equals("ad_free_m")) {
                i = 1;
            }
            C13752i.m3519b(i);
        }
        i = 2;
        C13752i.m3519b(i);
    }

    /* renamed from: X */
    public final C13834a m3340X() {
        AbstractC14974f fVar = this.f31087i;
        AbstractC14906i iVar = f31082r[3];
        return (C13834a) fVar.getValue();
    }

    /* renamed from: Y */
    public final C13773d m3339Y() {
        AbstractC14974f fVar = this.f31084f;
        AbstractC14906i iVar = f31082r[0];
        return (C13773d) fVar.getValue();
    }

    /* renamed from: Z */
    public final C13757a m3338Z() {
        AbstractC14974f fVar = this.f31085g;
        AbstractC14906i iVar = f31082r[1];
        return (C13757a) fVar.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.widget.PopupWindow m3337a(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p576w.p581r.C13844d.m3337a(android.content.Context):android.widget.PopupWindow");
    }

    /* renamed from: a */
    public final void m3336a(Bundle bundle) {
        String string = bundle.getString("from");
        if (string != null) {
            if (!(string.length() > 0)) {
                string = null;
            }
            if (string != null) {
                this.f31088j = string;
                m3328a0().m3298b(string);
            }
        }
        String string2 = bundle.getString("action");
        if (string2 != null) {
            this.f31089k = string2;
        }
        String string3 = bundle.getString("material");
        if (string3 != null) {
            this.f31090l = string3;
        }
    }

    /* renamed from: a */
    public final void m3335a(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(view.getWidth()), 0), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(view.getHeight()), 0));
        Context requireContext = requireContext();
        C15149k.m383a((Object) requireContext, "requireContext()");
        PopupWindow a = m3337a(requireContext);
        a.getContentView().measure(m3322d(a.getWidth()), m3322d(a.getHeight()));
        View contentView = a.getContentView();
        C15149k.m383a((Object) contentView, "contentView");
        int i = (-Math.abs(contentView.getMeasuredWidth() - view.getMeasuredWidth())) / 2;
        View contentView2 = a.getContentView();
        C15149k.m383a((Object) contentView2, "contentView");
        a.showAsDropDown(view, i, (-(contentView2.getMeasuredHeight() + view.getMeasuredHeight())) - C14217x3.m2201a(12.0f), GravityCompat.START);
        this.f31091m = a;
        this.f31092n = true;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        RecyclerView recyclerView = (RecyclerView) mo1408c(R$id.rvIapData);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(m3340X());
        ((CardView) mo1408c(R$id.cvIapPurchase)).setOnClickListener(new View$OnClickListenerC13857m());
        m3325b0();
    }

    /* renamed from: a */
    public final void m3334a(TextView textView, TextView textView2, PlanProductRealmObject planProductRealmObject) {
        String freeTrialPeriod;
        SkuDetailsRealmObject skuDetails = planProductRealmObject.getSkuDetails();
        if (skuDetails != null && (freeTrialPeriod = skuDetails.getFreeTrialPeriod()) != null) {
            int b = C14326z2.m1568b(freeTrialPeriod);
            if (b == 0) {
                textView.setText(R$string.premiumsubscribe_button_winback);
                textView2.setVisibility(8);
                return;
            }
            C15136c0 c0Var = C15136c0.f33133a;
            String string = getString(R$string.premiumsubscribe_button_1_new);
            C15149k.m383a((Object) string, "getString(R.string.premiumsubscribe_button_1_new)");
            Object[] objArr = {String.valueOf(b)};
            String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
            textView.setText(format);
            textView2.setVisibility(0);
        }
    }

    /* renamed from: a0 */
    public final C13865h m3328a0() {
        AbstractC14974f fVar = this.f31086h;
        AbstractC14906i iVar = f31082r[2];
        return (C13865h) fVar.getValue();
    }

    /* renamed from: b0 */
    public final void m3325b0() {
        LiveData<Boolean> r = m3328a0().m3277r();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        r.observe(viewLifecycleOwner, new C13850f());
        LiveData<RealmList<PlanFeatureRealmObject>> d = m3328a0().m3295d();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner2, "viewLifecycleOwner");
        d.observe(viewLifecycleOwner2, new C13851g());
        LiveData<C13773d.AbstractC13775b> g = m3328a0().m3289g();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner3, "viewLifecycleOwner");
        g.observe(viewLifecycleOwner3, new C13852h());
        LiveData<IapPageProductInfo> o = m3328a0().m3280o();
        LifecycleOwner viewLifecycleOwner4 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner4, "viewLifecycleOwner");
        o.observe(viewLifecycleOwner4, new C13853i());
        LiveData<String> k = m3328a0().m3284k();
        LifecycleOwner viewLifecycleOwner5 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner5, "viewLifecycleOwner");
        k.observe(viewLifecycleOwner5, new C13854j());
        C14589b<View> l = m3328a0().m3283l();
        LifecycleOwner viewLifecycleOwner6 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner6, "viewLifecycleOwner");
        l.observe(viewLifecycleOwner6, new C13855k());
        C14589b<Void> c = m3328a0().m3297c();
        LifecycleOwner viewLifecycleOwner7 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner7, "viewLifecycleOwner");
        c.observe(viewLifecycleOwner7, new C13856l());
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f31095q == null) {
            this.f31095q = new HashMap();
        }
        View view = (View) this.f31095q.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f31095q.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c0 */
    public final void m3323c0() {
        m3340X().m3348a(true);
        ConstraintLayout constraintLayout = (ConstraintLayout) mo1408c(R$id.clIap);
        C15149k.m383a((Object) constraintLayout, "clIap");
        constraintLayout.setVisibility(0);
        CardView cardView = (CardView) mo1408c(R$id.cvIapPurchase);
        C15149k.m383a((Object) cardView, "cvIapPurchase");
        cardView.setVisibility(4);
    }

    /* renamed from: d */
    public final int m3322d(int i) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), i == -2 ? 0 : 1073741824);
    }

    /* renamed from: d0 */
    public final void m3320d0() {
        DialogC14618f fVar = new DialogC14618f(requireContext());
        fVar.m998b(getResources().getString(R$string.unstable_internet_connection_popup_content));
        fVar.m999b(R$string.got_it, DialogInterface$OnClickListenerC13860p.f31110a);
        fVar.setOnDismissListener(new DialogInterface$OnDismissListenerC13859o());
        fVar.show();
    }

    /* renamed from: e */
    public final void m3318e(String str) {
        if (str.length() > 0) {
        }
        C14687h.m861a(requireContext(), str, 0).m858c();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            C15149k.m383a((Object) arguments, "it");
            m3336a(arguments);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (C15149k.m384a((Object) m3328a0().m3277r().getValue(), (Object) true)) {
            m3328a0().m3274u();
            m3328a0().m3301b();
            C13865h a0 = m3328a0();
            ViewConfiguration viewConfiguration = ViewConfiguration.get(requireContext());
            C15149k.m383a((Object) viewConfiguration, "ViewConfiguration.get(requireContext())");
            a0.m3300b(viewConfiguration.getScaledTouchSlop());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        PopupWindow popupWindow = this.f31091m;
        if (popupWindow != null) {
            if (!popupWindow.isShowing()) {
                popupWindow = null;
            }
            if (popupWindow != null) {
                this.f31092n = false;
                popupWindow.dismiss();
            }
        }
        m3340X().m3361a();
        this.f31093o = false;
    }
}
