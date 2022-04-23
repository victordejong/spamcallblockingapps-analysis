package com.tmobile.services.nameid.p007ui.banner;

import android.content.Context;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��:\u0002\u0003\u0004B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBanner;", "<init>", "()V", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBanner */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBanner.class */
public final class NameIDBanner {

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H&¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H&¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H&¢\u0006\u0004\b\u0019\u0010\u0004J\u001f\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH&¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0002H&¢\u0006\u0004\b \u0010\u0004¨\u0006!"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$Presenter;", "Lkotlin/Any;", "", "onAllowContactAccessClicked", "()V", "onBannerClosed", "", "contactAllowed", "hasUserDeniedContactPermission", "onContactPermissionChanged", "(ZZ)V", "Landroid/content/Context;", "context", "onDiscoverMoreClicked", "(Landroid/content/Context;)V", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "onPageChanged", "(Lcom/tmobile/services/nameid/NameIDPage;)V", "onSetGone", "onSetVisible", "", "message", "onToastRequested", "(Ljava/lang/String;)V", "onUpgradeClicked", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "state", "", "trialDaysLeft", "onUserStateChanged", "(Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;I)V", "onViewInitialized", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBanner$Presenter */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBanner$Presenter.class */
    public interface Presenter {
        /* renamed from: a */
        void mo6232a(boolean z, boolean z2);

        /* renamed from: b */
        void mo6231b(@NotNull String str);

        /* renamed from: c */
        void mo6230c(@NotNull NameIDPage nameIDPage);

        /* renamed from: d */
        void mo6229d();

        /* renamed from: e */
        void mo6228e(@NotNull SubscriptionHelper.State state, int i);

        /* renamed from: f */
        void mo6227f();

        /* renamed from: g */
        void mo6226g(@NotNull Context context);

        /* renamed from: h */
        void mo6225h();

        /* renamed from: i */
        void mo6224i();

        /* renamed from: j */
        void mo6223j();

        /* renamed from: k */
        void mo6222k();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H&¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H&¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0002H&¢\u0006\u0004\b\u0013\u0010\u0004J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H&¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H&¢\u0006\u0004\b\u0018\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/NameIDBanner$View;", "Lkotlin/Any;", "", "requestPermission", "()V", "setGone", "showCallCareDialog", "showContactPermissionBanner", "", "useAlternateColors", "showDiscoverBanner", "(Z)V", "", "message", "showMessage", "(Ljava/lang/String;)V", "showPendingSubscriptionBanner", "showPendingTrialBanner", "showSubscribeDialog", "showTrialDayLeftBanner", "", "daysLeft", "showTrialDaysLeftBanner", "(I)V", "showUpgradeBanner", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.banner.NameIDBanner$View */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/NameIDBanner$View.class */
    public interface View {
        /* renamed from: b */
        void mo6210b();

        /* renamed from: d */
        void mo6208d();

        /* renamed from: e */
        void mo6207e();

        /* renamed from: f */
        void mo6206f();

        /* renamed from: g */
        void mo6205g(@NotNull String str);

        /* renamed from: i */
        void mo6204i();

        /* renamed from: j */
        void mo6203j();

        /* renamed from: l */
        void mo6201l(boolean z);

        /* renamed from: m */
        void mo6200m(int i);

        /* renamed from: r */
        void mo6198r();

        /* renamed from: s */
        void mo6197s();

        void setGone();
    }
}
