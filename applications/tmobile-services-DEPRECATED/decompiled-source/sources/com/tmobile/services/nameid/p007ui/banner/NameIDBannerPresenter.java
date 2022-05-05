package com.tmobile.services.nameid.p007ui.banner;

import android.content.Context;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.domain.usecase.banner.BannerState;
import com.tmobile.services.nameid.domain.usecase.banner.GetBannerStateUseCase;
import com.tmobile.services.nameid.p007ui.banner.NameIDBanner;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� C2\u00020\u0001:\u0001CB'\u0012\u0006\u0010?\u001a\u00020;\u0012\u0006\u0010@\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010,\u001a\u00020\u0007¢\u0006\u0004\bA\u0010BJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u001f\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010\t\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010+R\u0019\u0010,\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b,\u0010+\u001a\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010+R\u0016\u0010/\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010+R\u0016\u00100\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010+R\u0016\u00102\u001a\u0002018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u0002048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u00107R\u0016\u00108\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R$\u0010=\u001a\u0010\u0012\f\u0012\n <*\u0004\u0018\u00010;0;0:8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006D"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBannerPresenter;", "com/tmobile/services/nameid/ui/banner/NameIDBanner$Presenter", "", "hideBanner", "()V", "onAllowContactAccessClicked", "onBannerClosed", "", "contactAllowed", "hasUserDeniedContactPermission", "onContactPermissionChanged", "(ZZ)V", "Landroid/content/Context;", "context", "onDiscoverMoreClicked", "(Landroid/content/Context;)V", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "onPageChanged", "(Lcom/tmobile/services/nameid/NameIDPage;)V", "onSetGone", "onSetVisible", "", "message", "onToastRequested", "(Ljava/lang/String;)V", "onUpgradeClicked", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "state", "", "trialDaysLeft", "onUserStateChanged", "(Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;I)V", "onViewInitialized", "refreshView", "showTrialBanner", "(I)V", "Lcom/tmobile/services/nameid/domain/usecase/banner/BannerState;", "bannerState", "Lcom/tmobile/services/nameid/domain/usecase/banner/BannerState;", "currentPage", "Lcom/tmobile/services/nameid/NameIDPage;", "hasContactPermission", "Z", "isMetro", "()Z", "isPaused", "pendingBannerDismissed", "permissionBannerDismissed", "Lkotlin/coroutines/CoroutineContext;", "presenterJob", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "I", "userState", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$View;", "kotlin.jvm.PlatformType", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "contactPermissionAllowed", "<init>", "(Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$View;ZZZ)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerPresenter */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerPresenter.class */
public final class NameIDBannerPresenter implements NameIDBanner.Presenter {

    /* renamed from: a */
    private final WeakReference<NameIDBanner.View> f13874a;

    /* renamed from: b */
    private final CoroutineContext f13875b;

    /* renamed from: c */
    private final CoroutineScope f13876c;

    /* renamed from: d */
    private boolean f13877d;

    /* renamed from: e */
    private boolean f13878e;

    /* renamed from: f */
    private SubscriptionHelper.State f13879f;

    /* renamed from: h */
    private boolean f13881h;

    /* renamed from: i */
    private boolean f13882i;

    /* renamed from: k */
    private int f13884k;

    /* renamed from: l */
    private boolean f13885l;

    /* renamed from: m */
    private final boolean f13886m;

    /* renamed from: g */
    private NameIDPage f13880g = NameIDPage.ScamBlock.f12683b;

    /* renamed from: j */
    private BannerState f13883j = BannerState.INVALID;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBannerPresenter$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerPresenter$Companion */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerPresenter$Companion.class */
    private static final class Companion {
        private Companion() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBannerPresenter$WhenMappings */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBannerPresenter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13887a;

        static {
            int[] iArr = new int[BannerState.values().length];
            f13887a = iArr;
            iArr[BannerState.DISCOVER.ordinal()] = 1;
            f13887a[BannerState.PENDING_TRIAL.ordinal()] = 2;
            f13887a[BannerState.PENDING_SUBSCRIPTION.ordinal()] = 3;
            f13887a[BannerState.PERMISSION.ordinal()] = 4;
            f13887a[BannerState.TRIAL_DAYS_LEFT.ordinal()] = 5;
            f13887a[BannerState.UPGRADE.ordinal()] = 6;
            f13887a[BannerState.NONE.ordinal()] = 7;
            f13887a[BannerState.INVALID.ordinal()] = 8;
        }
    }

    public NameIDBannerPresenter(@NotNull NameIDBanner.View view, boolean z, boolean z2, boolean z3) {
        CompletableJob b;
        Intrinsics.m1830e(view, "view");
        this.f13886m = z3;
        this.f13874a = new WeakReference<>(view);
        b = JobKt__JobKt.m1208b(null, 1, null);
        this.f13875b = b;
        this.f13876c = CoroutineScopeKt.m1312a(b.plus(Dispatchers.m1267b()));
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        Intrinsics.m1831d(c, "SubscriptionHelper.getState()");
        this.f13879f = c;
        this.f13881h = z;
        this.f13882i = z2;
    }

    /* renamed from: o */
    private final void m6218o() {
        NameIDBanner.View view = this.f13874a.get();
        if (view != null) {
            view.setGone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public final void m6217p() {
        BannerState a = new GetBannerStateUseCase(this.f13879f, this.f13881h, this.f13882i, this.f13884k, this.f13880g, this.f13877d, this.f13878e, this.f13886m).m6577f().m6583a();
        LogUtil.m5643d("NameIDBannerPresenterrefreshView", "new state = " + a.name() + "; old state = " + this.f13883j);
        if (a == BannerState.PERMISSION) {
            this.f13878e = true;
        }
        this.f13883j = a;
        if (!this.f13885l) {
            switch (WhenMappings.f13887a[a.ordinal()]) {
                case 1:
                    NameIDBanner.View view = this.f13874a.get();
                    if (view != null) {
                        view.mo6201l(true);
                        return;
                    }
                    return;
                case 2:
                    NameIDBanner.View view2 = this.f13874a.get();
                    if (view2 != null) {
                        view2.mo6207e();
                        return;
                    }
                    return;
                case 3:
                    NameIDBanner.View view3 = this.f13874a.get();
                    if (view3 != null) {
                        view3.mo6198r();
                        return;
                    }
                    return;
                case 4:
                    NameIDBanner.View view4 = this.f13874a.get();
                    if (view4 != null) {
                        view4.mo6208d();
                        return;
                    }
                    return;
                case 5:
                    m6216q(this.f13884k);
                    return;
                case 6:
                    NameIDBanner.View view5 = this.f13874a.get();
                    if (view5 != null) {
                        view5.mo6197s();
                        return;
                    }
                    return;
                case 7:
                    m6218o();
                    return;
                case 8:
                    m6218o();
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: q */
    private final void m6216q(int i) {
        if (i > 1) {
            NameIDBanner.View view = this.f13874a.get();
            if (view != null) {
                view.mo6200m(i);
                return;
            }
            return;
        }
        NameIDBanner.View view2 = this.f13874a.get();
        if (view2 != null) {
            view2.mo6204i();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: a */
    public void mo6232a(boolean z, boolean z2) {
        boolean z3 = (this.f13881h == z && this.f13882i == z2) ? false : true;
        this.f13881h = z;
        this.f13882i = z2;
        StringBuilder sb = new StringBuilder();
        sb.append("contact permission ");
        sb.append(z3 ? "has" : "has not");
        sb.append(" changed");
        LogUtil.m5639h("NameIDBannerPresenteronContactPermissionChanged", sb.toString());
        if (z3) {
            m6217p();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: b */
    public void mo6231b(@NotNull String message) {
        Intrinsics.m1830e(message, "message");
        BuildersKt__Builders_commonKt.m1370b(this.f13876c, null, null, new NameIDBannerPresenter$onToastRequested$1(this, message, null), 3, null);
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: c */
    public void mo6230c(@NotNull NameIDPage page) {
        Intrinsics.m1830e(page, "page");
        boolean z = !Intrinsics.m1834a(this.f13880g, page);
        this.f13880g = page;
        StringBuilder sb = new StringBuilder();
        sb.append("page ");
        sb.append(z ? "has" : "has not");
        sb.append(" changed (");
        sb.append(page.m7485a());
        sb.append(')');
        LogUtil.m5639h("NameIDBannerPresenteronPageChanged", sb.toString());
        if (z) {
            m6217p();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: d */
    public void mo6229d() {
        NameIDBanner.View view = this.f13874a.get();
        if (view != null) {
            view.setGone();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: e */
    public void mo6228e(@NotNull SubscriptionHelper.State state, int i) {
        Intrinsics.m1830e(state, "state");
        boolean z = (this.f13879f == state && this.f13884k == i) ? false : true;
        this.f13879f = state;
        this.f13884k = i;
        StringBuilder sb = new StringBuilder();
        sb.append("userstate/trial ");
        sb.append(z ? "has" : "has not");
        sb.append(" changed");
        LogUtil.m5639h("NameIDBannerPresenteronUserStateChanged", sb.toString());
        if (z) {
            m6217p();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: f */
    public void mo6227f() {
        NameIDBanner.View view = this.f13874a.get();
        if (view != null) {
            view.mo6206f();
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: g */
    public void mo6226g(@NotNull Context context) {
        Intrinsics.m1830e(context, "context");
        PreferenceUtils.m5386k("PREF_HAS_CONSUMED_DISCOVER_BANNER", true);
        ((MainActivity) context).m7630L();
        m6217p();
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: h */
    public void mo6225h() {
        BannerState bannerState = this.f13883j;
        if (bannerState == BannerState.PENDING_SUBSCRIPTION || bannerState == BannerState.PENDING_TRIAL) {
            this.f13877d = true;
        } else if (bannerState == BannerState.PERMISSION) {
            this.f13878e = true;
        }
        LogUtil.m5639h("NameIDBannerPresenteronBannerClosed", "Banner was closed by the user");
        m6217p();
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: i */
    public void mo6224i() {
        m6217p();
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: j */
    public void mo6223j() {
        m6217p();
    }

    @Override // com.tmobile.services.nameid.p007ui.banner.NameIDBanner.Presenter
    /* renamed from: k */
    public void mo6222k() {
        if (SubscriptionHelper.m5302z()) {
            NameIDBanner.View view = this.f13874a.get();
            if (view != null) {
                view.mo6210b();
                return;
            }
            return;
        }
        NameIDBanner.View view2 = this.f13874a.get();
        if (view2 != null) {
            view2.mo6203j();
        }
    }
}
