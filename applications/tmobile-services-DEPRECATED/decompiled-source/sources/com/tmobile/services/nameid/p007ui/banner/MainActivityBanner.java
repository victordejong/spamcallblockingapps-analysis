package com.tmobile.services.nameid.p007ui.banner;

import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H&¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/tmobile/services/nameid/ui/banner/MainActivityBanner;", "Lkotlin/Any;", "", "contactAllowed", "hasUserDeniedContactPermission", "", "onContactPermissionChanged", "(ZZ)V", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "onPageChanged", "(Lcom/tmobile/services/nameid/NameIDPage;)V", "Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;", "state", "", "trialDaysLeft", "onUserStateChange", "(Lcom/tmobile/services/nameid/utility/SubscriptionHelper$State;I)V", "setViewGone", "()V", "setViewVisible", "", "message", "showToast", "(Ljava/lang/String;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.banner.MainActivityBanner */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/banner/MainActivityBanner.class */
public interface MainActivityBanner {
    /* renamed from: a */
    void mo6211a(boolean z, boolean z2);

    /* renamed from: c */
    void mo6209c(@NotNull NameIDPage nameIDPage);

    /* renamed from: k */
    void mo6202k(@NotNull String str);

    /* renamed from: n */
    void mo6199n(@NotNull SubscriptionHelper.State state, int i);

    void setViewVisible();
}
