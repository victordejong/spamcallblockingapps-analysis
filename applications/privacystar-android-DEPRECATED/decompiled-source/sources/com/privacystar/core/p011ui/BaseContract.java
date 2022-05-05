package com.privacystar.core.p011ui;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/BaseContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BaseContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseContract.class */
public final class BaseContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J.\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H&J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H&J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0006H&J\b\u0010\u0011\u001a\u00020\u0006H&J\b\u0010\u0012\u001a\u00020\u0006H&J\b\u0010\u0013\u001a\u00020\u0006H&¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/BaseContract$Manager;", "", "getNavigationDrawerItems", "", "", "isDevBuild", "", "showFullUX", "showSubscription", "isApprovedListEnabled", "isItemDeveloped", "itemId", "navDrawerItemClicked", "", "functionality", "Lcom/privacystar/core/ui/BaseDrawerItemFunctionality;", "shouldConsiderShowingFullUX", "shouldDisplayUpgrade", "shouldShowAppVersion", "shouldShowSubscriptionStatus", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.BaseContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseContract$Manager.class */
    public interface Manager {
        @NotNull
        List<Integer> getNavigationDrawerItems(boolean z, boolean z2, boolean z3, boolean z4);

        boolean isItemDeveloped(int i);

        void navDrawerItemClicked(int i, @NotNull BaseDrawerItemFunctionality baseDrawerItemFunctionality);

        boolean shouldConsiderShowingFullUX();

        boolean shouldDisplayUpgrade();

        boolean shouldShowAppVersion();

        boolean shouldShowSubscriptionStatus();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\b\u0010\u000b\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\nH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0006H&J\b\u0010\u0011\u001a\u00020\u0006H&J\b\u0010\u0012\u001a\u00020\nH&J\b\u0010\u0013\u001a\u00020\u0003H&J\b\u0010\u0014\u001a\u00020\u0003H&J\u001e\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\n2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\b\u0010\u0017\u001a\u00020\u0003H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0006H&J\b\u0010\u001a\u001a\u00020\u0003H&J\b\u0010\u001b\u001a\u00020\u0003H&J\b\u0010\u001c\u001a\u00020\u0003H&J\b\u0010\u001d\u001a\u00020\u0003H&J\b\u0010\u001e\u001a\u00020\u0003H&J\b\u0010\u001f\u001a\u00020\u0006H&J\b\u0010 \u001a\u00020\u0006H&J\b\u0010!\u001a\u00020\u0006H&J\b\u0010\"\u001a\u00020\u0006H&¨\u0006#"}, m254d2 = {"Lcom/privacystar/core/ui/BaseContract$View;", "", "addMessageChangeListener", "", "closeNavDrawer", "createDrawerLayout", "", "createNavDrawerItems", "listOfItems", "", "", "finishActivity", "getActiveNavDrawerItem", "getFunctionalityInstance", "Lcom/privacystar/core/ui/BaseDrawerItemFunctionality;", "hideSubscriptionStatusRectangle", "isApproveListEnabled", "isNavDrawerOpen", "numberOfUnreadMessages", "openNavDrawer", "removeSubscriptionListener", "setActiveNavDrawerItem", "itemId", "setDefaultPreferenceValues", "setDrawerButtonBadgeVisible", "visible", "setDrawerLayoutNull", "setDrawerToggleListener", "setStatusBarBackground", "setupAppVersionText", "setupNavDrawerLogoHeader", "setupNavDrawerSubscription", "shouldDrawLogoHeader", "shouldHavePurchaseView", "shouldShowFullUX", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.BaseContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseContract$View.class */
    public interface View {
        void addMessageChangeListener();

        void closeNavDrawer();

        boolean createDrawerLayout();

        void createNavDrawerItems(@NotNull List<Integer> list);

        void finishActivity();

        int getActiveNavDrawerItem();

        @NotNull
        BaseDrawerItemFunctionality getFunctionalityInstance();

        void hideSubscriptionStatusRectangle();

        boolean isApproveListEnabled();

        boolean isNavDrawerOpen();

        int numberOfUnreadMessages();

        void openNavDrawer();

        void removeSubscriptionListener();

        void setActiveNavDrawerItem(int i, @NotNull List<Integer> list);

        void setDefaultPreferenceValues();

        void setDrawerButtonBadgeVisible(boolean z);

        void setDrawerLayoutNull();

        void setDrawerToggleListener();

        void setStatusBarBackground();

        void setupAppVersionText();

        void setupNavDrawerLogoHeader();

        boolean setupNavDrawerSubscription();

        boolean shouldDrawLogoHeader();

        boolean shouldHavePurchaseView();

        boolean shouldShowFullUX();
    }
}
