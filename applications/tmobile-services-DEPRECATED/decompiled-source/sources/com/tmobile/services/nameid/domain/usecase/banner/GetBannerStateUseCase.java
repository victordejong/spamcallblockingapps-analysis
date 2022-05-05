package com.tmobile.services.nameid.domain.usecase.banner;

import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.domain.usecase.Result;
import com.tmobile.services.nameid.domain.usecase.UseCase;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� +2\u00020\u0001:\u0001+BG\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0004\u0012\u0006\u0010\u001f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b)\u0010*J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0015\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\u0011\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0015\u001a\u0004\b\u0011\u0010\u0017R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0019\u0010\u001d\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0015\u001a\u0004\b\u001e\u0010\u0017R\u0019\u0010\u001f\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0015\u001a\u0004\b \u0010\u0017R\u0019\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010!\u001a\u0004\b\"\u0010#R\u0019\u0010%\u001a\u00020$8\u0006@\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006,"}, d2 = {"Lcom/tmobile/services/nameid/domain/usecase/banner/GetBannerStateUseCase;", "Lcom/tmobile/services/nameid/domain/usecase/UseCase;", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "", "canShowDiscoverOnPage", "(Lcom/tmobile/services/nameid/NameIDPage;)Z", "canShowPendingOnPage", "canShowPermissionsOnPage", "canShowTrialOnPage", "canShowUpgradeOnPage", "Lcom/tmobile/services/nameid/domain/usecase/Result;", "Lcom/tmobile/services/nameid/domain/usecase/banner/BannerState;", "execute", "()Lcom/tmobile/services/nameid/domain/usecase/Result;", "", "trialDaysLeft", "isMetro", "isTrialInRange", "(IZ)Z", "contactPermGranted", "Z", "getContactPermGranted", "()Z", "contactPermHasBeenDenied", "getContactPermHasBeenDenied", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "pendingDismissed", "getPendingDismissed", "permissionDismissed", "getPermissionDismissed", "I", "getTrialDaysLeft", "()I", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "userState", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "getUserState", "()Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "<init>", "(Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;ZZILcom/tmobile/services/nameid/NameIDPage;ZZZ)V", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/usecase/banner/GetBannerStateUseCase.class */
public final class GetBannerStateUseCase implements UseCase<BannerState> {
    @NotNull

    /* renamed from: a */
    private final SubscriptionHelper.State f13478a;

    /* renamed from: b */
    private final boolean f13479b;

    /* renamed from: c */
    private final boolean f13480c;

    /* renamed from: d */
    private final int f13481d;
    @NotNull

    /* renamed from: e */
    private final NameIDPage f13482e;

    /* renamed from: f */
    private final boolean f13483f;

    /* renamed from: g */
    private final boolean f13484g;

    /* renamed from: h */
    private final boolean f13485h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/domain/usecase/banner/GetBannerStateUseCase$Companion;", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/usecase/banner/GetBannerStateUseCase$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    public GetBannerStateUseCase(@NotNull SubscriptionHelper.State userState, boolean z, boolean z2, int i, @NotNull NameIDPage page, boolean z3, boolean z4, boolean z5) {
        Intrinsics.m1830e(userState, "userState");
        Intrinsics.m1830e(page, "page");
        this.f13478a = userState;
        this.f13479b = z;
        this.f13480c = z2;
        this.f13481d = i;
        this.f13482e = page;
        this.f13483f = z3;
        this.f13484g = z4;
        this.f13485h = z5;
    }

    /* renamed from: a */
    private final boolean m6582a(NameIDPage nameIDPage) {
        return (nameIDPage instanceof NameIDPage.Activity) || (nameIDPage instanceof NameIDPage.Manage) || (nameIDPage instanceof NameIDPage.ManageTab) || (nameIDPage instanceof NameIDPage.SettingsPage.CategoryManager) || (nameIDPage instanceof NameIDPage.CallerDetailsPage) || (nameIDPage instanceof NameIDPage.ScamBlock);
    }

    /* renamed from: b */
    private final boolean m6581b(NameIDPage nameIDPage) {
        return Intrinsics.m1834a(nameIDPage, NameIDPage.Activity.f12672b) || (nameIDPage instanceof NameIDPage.Manage) || (nameIDPage instanceof NameIDPage.ManageTab) || (nameIDPage instanceof NameIDPage.CallerDetailsPage) || Intrinsics.m1834a(nameIDPage, NameIDPage.SettingsPage.CategoryManager.f12688b);
    }

    /* renamed from: c */
    private final boolean m6580c(NameIDPage nameIDPage) {
        return Intrinsics.m1834a(nameIDPage, NameIDPage.Activity.f12672b);
    }

    /* renamed from: d */
    private final boolean m6579d(NameIDPage nameIDPage) {
        return Intrinsics.m1834a(nameIDPage, NameIDPage.Activity.f12672b) || (nameIDPage instanceof NameIDPage.Manage) || (nameIDPage instanceof NameIDPage.ManageTab) || Intrinsics.m1834a(nameIDPage, NameIDPage.SettingsPage.CategoryManager.f12688b);
    }

    /* renamed from: e */
    private final boolean m6578e(NameIDPage nameIDPage) {
        return Intrinsics.m1834a(nameIDPage, NameIDPage.Activity.f12672b) || (nameIDPage instanceof NameIDPage.Manage) || (nameIDPage instanceof NameIDPage.ManageTab) || Intrinsics.m1834a(nameIDPage, NameIDPage.SettingsPage.CategoryManager.f12688b) || (nameIDPage instanceof NameIDPage.CallerDetailsPage);
    }

    /* renamed from: g */
    private final boolean m6576g(int i, boolean z) {
        return z ? true : i <= 25;
    }

    @NotNull
    /* renamed from: f */
    public Result<BannerState> m6577f() {
        BannerState bannerState;
        BannerState bannerState2 = BannerState.NONE;
        if (m6582a(this.f13482e) && WidgetUtils.m5236f()) {
            bannerState = BannerState.DISCOVER;
        } else if (m6581b(this.f13482e) && SubscriptionHelper.m5310r(this.f13478a) && !this.f13483f) {
            bannerState = SubscriptionHelper.m5306v(this.f13478a) ? BannerState.PENDING_TRIAL : BannerState.PENDING_SUBSCRIPTION;
        } else if (m6580c(this.f13482e) && !this.f13479b && this.f13480c && !this.f13484g) {
            bannerState = BannerState.PERMISSION;
        } else if (!m6578e(this.f13482e) || SubscriptionHelper.m5315m(this.f13478a)) {
            bannerState = bannerState2;
            if (m6579d(this.f13482e)) {
                bannerState = bannerState2;
                if (SubscriptionHelper.m5306v(this.f13478a)) {
                    bannerState = bannerState2;
                    if (!SubscriptionHelper.m5310r(this.f13478a)) {
                        bannerState = bannerState2;
                        if (m6576g(this.f13481d, this.f13485h)) {
                            bannerState = BannerState.TRIAL_DAYS_LEFT;
                        }
                    }
                }
            }
        } else {
            bannerState = BannerState.UPGRADE;
        }
        LogUtil.m5639h("GetBannerStateUseCase", "returning " + bannerState.name());
        return new Result<>(true, bannerState);
    }
}
