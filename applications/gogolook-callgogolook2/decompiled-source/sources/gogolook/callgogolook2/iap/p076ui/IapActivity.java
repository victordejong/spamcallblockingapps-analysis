package gogolook.callgogolook2.iap.p076ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.legacy.app.ActionBarDrawerToggle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelStore;
import com.appsflyer.AppsFlyerLib;
import com.mopub.common.Constants;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.p074ad.AdConstant;
import gogolook.callgogolook2.share.RedeemActivity;
import gogolook.callgogolook2.share.ReferralActivity;
import gogolook.callgogolook2.util.control.VersionManager;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p518j.AbstractC12474a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p576w.C13752i;
import p459j.p460a.p576w.C13753j;
import p459j.p460a.p576w.p577n.C13757a;
import p459j.p460a.p576w.p577n.C13773d;
import p459j.p460a.p576w.p579p.C13808d;
import p459j.p460a.p576w.p581r.C13844d;
import p459j.p460a.p576w.p581r.C13865h;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.DialogC14644l;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� F2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001FB\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u001f0\"H\u0002J\b\u0010#\u001a\u00020\u001fH\u0016J\b\u0010$\u001a\u00020\u001fH\u0002J\b\u0010%\u001a\u00020\u001fH\u0002J\b\u0010&\u001a\u00020\u001fH\u0002J\b\u0010'\u001a\u00020\u001fH\u0002J\b\u0010(\u001a\u00020\u001fH\u0016J\u0012\u0010)\u001a\u00020\u001f2\b\u0010*\u001a\u0004\u0018\u00010+H\u0014J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020-2\u0006\u00101\u001a\u000202H\u0016J\b\u00103\u001a\u00020\u001fH\u0014J\b\u00104\u001a\u00020\u001fH\u0016J\b\u00105\u001a\u00020\u001fH\u0016J\b\u00106\u001a\u00020\u001fH\u0014J\b\u00107\u001a\u00020\u001fH\u0014J\b\u00108\u001a\u00020\u001fH\u0014J\u0010\u00109\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\b\u0010:\u001a\u00020\u001fH\u0002J\b\u0010;\u001a\u00020\u001fH\u0002J\b\u0010<\u001a\u00020\u001fH\u0002J\b\u0010=\u001a\u00020-H\u0016J\b\u0010>\u001a\u00020\u001fH\u0002J\b\u0010?\u001a\u00020\u001fH\u0002J\u0018\u0010@\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020\u001fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R#\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u000e\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n��¨\u0006G"}, m815d2 = {"Lgogolook/callgogolook2/iap/ui/IapActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/app/ActivityNavigator;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "()V", "action", "", "from", "iapRepository", "Lgogolook/callgogolook2/iap/data/IapRepository;", "kotlin.jvm.PlatformType", "getIapRepository", "()Lgogolook/callgogolook2/iap/data/IapRepository;", "iapRepository$delegate", "Lkotlin/Lazy;", "iapViewModel", "Lgogolook/callgogolook2/iap/ui/IapViewModel;", "getIapViewModel", "()Lgogolook/callgogolook2/iap/ui/IapViewModel;", "iapViewModel$delegate", "material", "progressDialog", "Lgogolook/callgogolook2/view/MProgressDialog;", "remoteConfigDataSource", "Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;", "getRemoteConfigDataSource", "()Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;", "remoteConfigDataSource$delegate", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "checkRegisterAndDoAction", "", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "Lkotlin/Function0;", "doNavigation", "initIapFragment", "initPremiumFragment", "launchCustomerService", "observeViewModel", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", SupportMenuInflater.XML_MENU, "Landroid/view/Menu;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "onPause", "onProbeStarted", "onProbeStopped", "onResume", "onStart", "onStop", "parseIntent", "removeIapFragment", "removePremiumFragment", "setActionBar", "shouldNavigate", "showLoadingDialog", "showPurchaseSuccess", "showRegisterDialog", "intention", "Lgogolook/callgogolook2/intro/IntroControl$Intention;", "userFrom", "Lgogolook/callgogolook2/intro/registration/RegistrationActivity$UserFrom;", "updateActionBarTitle", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.iap.ui.IapActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity.class */
public final class IapActivity extends AppCompatActivity implements AbstractC12474a, C13930d.AbstractC13931a {

    /* renamed from: j */
    public static final /* synthetic */ AbstractC14906i[] f10798j;

    /* renamed from: k */
    public static final C4488b f10799k = new C4488b(null);

    /* renamed from: a */
    public final AbstractC14974f f10800a = C14975g.m662a(new C4489c());

    /* renamed from: b */
    public final AbstractC14974f f10801b = C14975g.m662a(C4496j.f10817a);

    /* renamed from: c */
    public final AbstractC14974f f10802c = new ViewModelLazy(C15131a0.m419a(C13865h.class), new C4487a(this), new C4490d());

    /* renamed from: d */
    public final C13929c f10803d = new C13929c(this, false);

    /* renamed from: e */
    public String f10804e = "others";

    /* renamed from: f */
    public String f10805f;

    /* renamed from: g */
    public String f10806g;

    /* renamed from: h */
    public DialogC14628h f10807h;

    /* renamed from: i */
    public HashMap f10808i;

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$a.class */
    public static final class C4487a extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {

        /* renamed from: a */
        public final /* synthetic */ ComponentActivity f10809a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4487a(ComponentActivity componentActivity) {
            super(0);
            this.f10809a = componentActivity;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelStore invoke() {
            ViewModelStore viewModelStore = this.f10809a.getViewModelStore();
            C15149k.m383a((Object) viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$b.class */
    public static final class C4488b {
        public C4488b() {
        }

        public /* synthetic */ C4488b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ Intent m28094a(C4488b bVar, Context context, String str, String str2, String str3, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "others";
            }
            if ((i & 4) != 0) {
                str2 = null;
            }
            if ((i & 8) != 0) {
                str3 = null;
            }
            return bVar.m28095a(context, str, str2, str3);
        }

        /* renamed from: a */
        public final Intent m28095a(Context context, String str, String str2, String str3) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, IapActivity.class);
            if (str != null) {
                intent.putExtra("from", str);
            }
            if (str2 != null) {
                intent.putExtra("action", str2);
            }
            if (str3 != null) {
                intent.putExtra("material", str3);
            }
            return intent;
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$c.class */
    public static final class C4489c extends AbstractC15150l implements AbstractC15107a<C13773d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4489c() {
            super(0);
            IapActivity.this = r4;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13773d invoke() {
            Context applicationContext = IapActivity.this.getApplicationContext();
            if (applicationContext != null) {
                return ((MyApplication) applicationContext).m29026c();
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.MyApplication");
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$d.class */
    public static final class C4490d extends AbstractC15150l implements AbstractC15107a<C13753j> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4490d() {
            super(0);
            IapActivity.this = r4;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13753j invoke() {
            C13773d E = IapActivity.this.m28123E();
            C15149k.m383a((Object) E, "iapRepository");
            return new C13753j(E, IapActivity.this.m28121G());
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$e.class */
    public static final class C4491e<T> implements Observer<T> {
        public C4491e() {
            IapActivity.this = r4;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            Boolean bool = (Boolean) t;
            C15149k.m383a((Object) bool, "it");
            if (bool.booleanValue()) {
                IapActivity.this.m28112P();
                return;
            }
            DialogC14628h hVar = IapActivity.this.f10807h;
            if (hVar != null) {
                C14315y.m1604a(hVar);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$f.class */
    public static final class C4492f<T> implements Observer<T> {
        public C4492f() {
            IapActivity.this = r4;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            boolean booleanValue = ((Boolean) t).booleanValue();
            IapActivity.this.m28110R();
            if (booleanValue) {
                IapActivity.this.m28119I();
            } else {
                IapActivity.this.m28120H();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$g.class */
    public static final class C4493g<T> implements Observer<T> {
        public C4493g() {
            IapActivity.this = r4;
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C13773d.AbstractC13775b bVar = (C13773d.AbstractC13775b) t;
            if ((bVar instanceof C13773d.AbstractC13775b.C13777b) && ((C13773d.AbstractC13775b.C13777b) bVar).m3449b() == 0) {
                IapActivity.this.m28111Q();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$h.class */
    public static final class C4494h extends AbstractC15150l implements AbstractC15107a<C14989s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4494h() {
            super(0);
            IapActivity.this = r4;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke */
        public final void invoke2() {
            IapActivity.this.m28104a(C14376j.EnumC14379c.Redeem, RegistrationActivity.EnumC4523g.UNKNOWN);
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$i.class */
    public static final class C4495i extends AbstractC15150l implements AbstractC15107a<C14989s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4495i() {
            super(0);
            IapActivity.this = r4;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        /* renamed from: invoke */
        public final void invoke2() {
            IapActivity.this.m28104a(C14376j.EnumC14379c.Referral, RegistrationActivity.EnumC4523g.UNKNOWN);
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$j.class */
    public static final class C4496j extends AbstractC15150l implements AbstractC15107a<C13757a> {

        /* renamed from: a */
        public static final C4496j f10817a = new C4496j();

        public C4496j() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13757a invoke() {
            C13640c d = C13640c.m3745d();
            C15149k.m383a((Object) d, "FirebaseRemoteConfigManager.getInstance()");
            return new C13757a(d);
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$k.class */
    public static final class DialogInterface$OnKeyListenerC4497k implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC4497k() {
            IapActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return true;
            }
            IapActivity.this.finish();
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.iap.ui.IapActivity$l */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/iap/ui/IapActivity$l.class */
    public static final class DialogInterface$OnClickListenerC4498l implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC4498l f10819a = new DialogInterface$OnClickListenerC4498l();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(IapActivity.class), "iapRepository", "getIapRepository()Lgogolook/callgogolook2/iap/data/IapRepository;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(IapActivity.class), "remoteConfigDataSource", "getRemoteConfigDataSource()Lgogolook/callgogolook2/iap/data/IapFirebaseRemoteConfigDataSource;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(IapActivity.class), "iapViewModel", "getIapViewModel()Lgogolook/callgogolook2/iap/ui/IapViewModel;");
        C15131a0.m412a(sVar3);
        f10798j = new AbstractC14906i[]{sVar, sVar2, sVar3};
    }

    /* renamed from: a */
    public static final Intent m28109a(Context context, String str, String str2, String str3) {
        return f10799k.m28095a(context, str, str2, str3);
    }

    /* renamed from: D */
    public void m28124D() {
        VersionManager.m26003a(this);
    }

    /* renamed from: E */
    public final C13773d m28123E() {
        AbstractC14974f fVar = this.f10800a;
        AbstractC14906i iVar = f10798j[0];
        return (C13773d) fVar.getValue();
    }

    /* renamed from: F */
    public final C13865h m28122F() {
        AbstractC14974f fVar = this.f10802c;
        AbstractC14906i iVar = f10798j[2];
        return (C13865h) fVar.getValue();
    }

    /* renamed from: G */
    public final C13757a m28121G() {
        AbstractC14974f fVar = this.f10801b;
        AbstractC14906i iVar = f10798j[1];
        return (C13757a) fVar.getValue();
    }

    /* renamed from: H */
    public final void m28120H() {
        m28115M();
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        if (findFragmentById == null || !(findFragmentById instanceof C13844d)) {
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, C13844d.f31083s.m3310a(this.f10804e, this.f10805f, this.f10806g)).commitAllowingStateLoss();
        }
    }

    /* renamed from: I */
    public final void m28119I() {
        m28116L();
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        if (findFragmentById == null || !(findFragmentById instanceof C13808d)) {
            try {
                getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, C13808d.f31024j.m3388a()).commitAllowingStateLoss();
            } catch (Exception e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: J */
    public final void m28118J() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("with_extra_info", false);
        bundle.putString("title_postfix", "Whoscall - " + getString(R$string.aboutus_page_email) + "  (ad free IAP)");
        bundle.putBoolean("need_num_verified", false);
        bundle.putInt("category_id", 3);
        bundle.putInt("step", 3);
        C13884a4.m3187a(this, 3, bundle, (C13884a4.AbstractC13890d) null);
    }

    /* renamed from: K */
    public final void m28117K() {
        m28122F().m3276s().observe(this, new C4491e());
        m28122F().m3275t().observe(this, new C4492f());
        m28122F().m3289g().observe(this, new C4493g());
    }

    /* renamed from: L */
    public final void m28116L() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        if (findFragmentById != null && (findFragmentById instanceof C13844d)) {
            getSupportFragmentManager().beginTransaction().remove(findFragmentById).commitAllowingStateLoss();
        }
    }

    /* renamed from: M */
    public final void m28115M() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R$id.fragment_container);
        if (findFragmentById instanceof C13808d) {
            try {
                getSupportFragmentManager().beginTransaction().remove(findFragmentById).commitAllowingStateLoss();
            } catch (Exception e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: N */
    public final void m28114N() {
        setSupportActionBar((Toolbar) m28100e(R$id.tbIap));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle("");
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowHomeEnabled(false);
            supportActionBar.setHomeButtonEnabled(true);
            supportActionBar.setHomeAsUpIndicator(R$drawable.actionbar_back_gray_btn);
        }
    }

    /* renamed from: O */
    public boolean m28113O() {
        return VersionManager.m25991e(4);
    }

    /* renamed from: P */
    public final void m28112P() {
        DialogC14628h hVar = new DialogC14628h(this, getResources().getString(R$string.wait));
        hVar.setOnKeyListener(new DialogInterface$OnKeyListenerC4497k());
        hVar.setCanceledOnTouchOutside(false);
        hVar.setCancelable(true);
        hVar.show();
        this.f10807h = hVar;
    }

    /* renamed from: Q */
    public final void m28111Q() {
        DialogC14644l lVar = new DialogC14644l(this);
        lVar.setTitle(R$string.ad_free_iap_subscribe_success_title);
        lVar.m937a(R$string.ad_free_iap_subscribe_success_content);
        lVar.m936a(R$string.ad_free_iap_subscribe_success_button, DialogInterface$OnClickListenerC4498l.f10819a);
        lVar.show();
        C14063l4.m2658g();
        String value = m28122F().m3284k().getValue();
        if (value != null) {
            C15149k.m383a((Object) value, "it");
            C13752i.m3518b(value);
        }
    }

    /* renamed from: R */
    public final void m28110R() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(C14021h2.m2779g() ? R$string.ad_free_sidebar_subscribed : R$string.ad_free_sidebar);
        }
    }

    /* renamed from: a */
    public final void m28108a(Intent intent) {
        String stringExtra = intent.getStringExtra("from");
        if (stringExtra != null) {
            if (!(stringExtra.length() > 0)) {
                stringExtra = null;
            }
            if (stringExtra != null) {
                this.f10804e = stringExtra;
            }
        }
        String stringExtra2 = intent.getStringExtra("action");
        if (stringExtra2 != null) {
            this.f10805f = stringExtra2;
        }
        String stringExtra3 = intent.getStringExtra("material");
        if (stringExtra3 != null) {
            this.f10806g = stringExtra3;
        }
    }

    /* renamed from: a */
    public final void m28107a(Intent intent, AbstractC15107a<C14989s> aVar) {
        if (C14137r4.m2369i()) {
            C14191v.m2257a(this, intent, null, 2, null);
        } else {
            aVar.invoke();
        }
    }

    /* renamed from: a */
    public final void m28104a(C14376j.EnumC14379c cVar, RegistrationActivity.EnumC4523g gVar) {
        C14137r4.m2383a(this, cVar, gVar);
    }

    /* renamed from: e */
    public View m28100e(int i) {
        if (this.f10808i == null) {
            this.f10808i = new HashMap();
        }
        View view = (View) this.f10808i.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f10808i.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
        C13752i.m3521a(this.f10804e, this.f10806g);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m28122F().m3308a();
        super.onBackPressed();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.iap_activity_layout);
        Intent intent = getIntent();
        if (intent != null) {
            m28108a(intent);
        }
        m28114N();
        m28117K();
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), AdConstant.APPSFLYER_IAP_VIEW, null);
        C13915b3.m3055b("prefs_iap_has_seen_iap_page", true);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        C15149k.m377b(menu, SupportMenuInflater.XML_MENU);
        MenuInflater menuInflater = getMenuInflater();
        C15149k.m383a((Object) menuInflater, "menuInflater");
        menuInflater.inflate(R$menu.option_iap, menu);
        MenuItem findItem = menu.findItem(R$id.menu_referrer);
        if (findItem != null) {
            findItem.setVisible(C13891a.m3149m());
        }
        MenuItem findItem2 = menu.findItem(R$id.menu_redeem);
        if (findItem2 != null) {
            findItem2.setVisible(C13891a.m3164b() || C14017g4.m2831E());
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        switch (menuItem.getItemId()) {
            case ActionBarDrawerToggle.ID_HOME /* 16908332 */:
                C14217x3.m2167b((Activity) this);
                return true;
            case R$id.menu_about_subscription /* 2131362814 */:
                C13752i.m3524a(13, this.f10803d.m3021b(true));
                C14021h2.m2787b(this);
                break;
            case R$id.menu_contact_us /* 2131362842 */:
                C13752i.m3519b(14);
                m28118J();
                break;
            case R$id.menu_redeem /* 2131362865 */:
                C13752i.m3519b(11);
                m28107a(new Intent(this, RedeemActivity.class), new C4494h());
                break;
            case R$id.menu_referrer /* 2131362866 */:
                C13752i.m3519b(12);
                m28107a(new Intent(this, ReferralActivity.class), new C4495i());
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f10803d.m3029c(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f10803d.m3029c(true);
        if (m28113O()) {
            m28124D();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m28122F().m3278q();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        DialogC14628h hVar = this.f10807h;
        if (hVar != null) {
            C14315y.m1604a(hVar);
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        int b = this.f10803d.m3022b();
        C14289m.m1892a("IAP log", b);
        C13752i.m3523a(m28122F().m3279p());
        C13752i.m3525a(b);
    }
}
