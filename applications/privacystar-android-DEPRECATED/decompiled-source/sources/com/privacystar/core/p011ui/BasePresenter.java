package com.privacystar.core.p011ui;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.p011ui.BaseContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\tJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\tH\u0002J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u0019\u001a\u00020\u0017J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\tJ\u0006\u0010\u001b\u001a\u00020\u0017J\u0010\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0012H\u0002J\b\u0010\u001e\u001a\u00020\u0017H\u0002J\u0006\u0010\u001f\u001a\u00020\u0017J\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, m254d2 = {"Lcom/privacystar/core/ui/BasePresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/BaseContract$View;", "(Lcom/privacystar/core/ui/BaseContract$View;)V", "manager", "Lcom/privacystar/core/ui/BaseManagerImpl;", "navDrawerItems", "", "", "Ljava/lang/ref/WeakReference;", "checkUnreadNotifications", "itemId", "getHomeNavItem", "getInvalidNavItem", "getNavIcon", "getNavTitle", "isInvalidNavDrawerItem", "", "item", "isItemDeveloped", "isSeparator", "onBackPressed", "", "onMessageChanged", "onNavButtonClicked", "onNavDrawerItemClicked", "onSubscriptionChanged", "populateNavDrawer", "shouldDisplayUpgrade", "setupNavDrawer", "viewCreated", "viewDestroyed", "viewPostCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BasePresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BasePresenter.class */
public final class BasePresenter {
    private final BaseManagerImpl manager = BaseManagerImpl.INSTANCE;
    private List<Integer> navDrawerItems = CollectionsKt.emptyList();
    private final WeakReference<BaseContract.View> view;

    public BasePresenter(@NotNull BaseContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    private final boolean isInvalidNavDrawerItem(int i) {
        return i == this.manager.getNAV_DRAWER_ITEM_INVALID();
    }

    private final boolean isItemDeveloped(int i) {
        boolean isItemDeveloped = this.manager.isItemDeveloped(i);
        if (!isItemDeveloped) {
            Timber.m37d("Selected Navigation Item Has Not Been Developed Yet. ID = " + i, new Object[0]);
        }
        return isItemDeveloped;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
        if (r0 != false) goto L_0x004f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void populateNavDrawer(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            java.lang.ref.WeakReference<com.privacystar.core.ui.BaseContract$View> r0 = r0.view
            java.lang.Object r0 = r0.get()
            com.privacystar.core.ui.BaseContract$View r0 = (com.privacystar.core.p011ui.BaseContract.View) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007f
            com.privacystar.core.util.BuildUtil r0 = com.privacystar.core.util.BuildUtil.INSTANCE
            boolean r0 = r0.isDevelopmentBuild()
            r10 = r0
            r0 = r7
            com.privacystar.core.ui.BaseManagerImpl r0 = r0.manager
            boolean r0 = r0.shouldConsiderShowingFullUX()
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0032
            r0 = r9
            boolean r0 = r0.shouldShowFullUX()
            r11 = r0
            goto L_0x0035
        L_0x0032:
            r0 = 0
            r11 = r0
        L_0x0035:
            r0 = r12
            r13 = r0
            r0 = r7
            com.privacystar.core.ui.BaseManagerImpl r0 = r0.manager
            boolean r0 = r0.shouldShowSubscriptionStatus()
            if (r0 == 0) goto L_0x005f
            r0 = r8
            if (r0 != 0) goto L_0x004f
            r0 = r12
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x005f
        L_0x004f:
            r0 = r12
            r13 = r0
            r0 = r9
            boolean r0 = r0.shouldHavePurchaseView()
            if (r0 == 0) goto L_0x005f
            r0 = 1
            r13 = r0
        L_0x005f:
            r0 = r7
            r1 = r7
            com.privacystar.core.ui.BaseManagerImpl r1 = r1.manager
            r2 = r10
            r3 = r11
            r4 = r13
            r5 = r9
            boolean r5 = r5.isApproveListEnabled()
            java.util.List r1 = r1.getNavigationDrawerItems(r2, r3, r4, r5)
            r0.navDrawerItems = r1
            r0 = r9
            r1 = r7
            java.util.List<java.lang.Integer> r1 = r1.navDrawerItems
            r0.createNavDrawerItems(r1)
        L_0x007f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.BasePresenter.populateNavDrawer(boolean):void");
    }

    private final void setupNavDrawer() {
        BaseContract.View view = this.view.get();
        if (view != null && view.createDrawerLayout()) {
            if (isInvalidNavDrawerItem(view.getActiveNavDrawerItem())) {
                view.setDrawerLayoutNull();
                return;
            }
            if (!PreferenceUtil.getNewFeatureExplained()) {
                view.setDrawerButtonBadgeVisible(true);
                PreferenceUtil.putJumpToSpoofingSetting(true);
            }
            if (view.shouldDrawLogoHeader()) {
                view.setupNavDrawerLogoHeader();
            }
            boolean z = false;
            if (this.manager.shouldDisplayUpgrade()) {
                z = false;
                if (view.shouldHavePurchaseView()) {
                    z = view.setupNavDrawerSubscription();
                }
            }
            if (!this.manager.shouldShowSubscriptionStatus()) {
                view.hideSubscriptionStatusRectangle();
            }
            if (this.manager.shouldShowAppVersion()) {
                view.setupAppVersionText();
            }
            populateNavDrawer(z);
        }
    }

    public final int checkUnreadNotifications(int i) {
        int i2 = 0;
        if (this.manager.getNAV_DRAWER_UNREAD()[i]) {
            if (i == this.manager.getNAV_DRAWER_ITEM_INBOX()) {
                BaseContract.View view = this.view.get();
                int numberOfUnreadMessages = view != null ? view.numberOfUnreadMessages() : 0;
                Timber.m37d("Inbox messages read: drawing widget with value %d.", Integer.valueOf(numberOfUnreadMessages));
                i2 = numberOfUnreadMessages;
            } else {
                i2 = 0;
                if (i == this.manager.getNAV_DRAWER_ITEM_SETTINGS()) {
                    Timber.m37d("Showing badge for new feature", new Object[0]);
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    public final int getHomeNavItem() {
        return this.manager.getNAV_DRAWER_ITEM_HOME();
    }

    public final int getInvalidNavItem() {
        return this.manager.getNAV_DRAWER_ITEM_INVALID();
    }

    public final int getNavIcon(int i) {
        return this.manager.getNAV_DRAWER_ICONS()[i];
    }

    public final int getNavTitle(int i) {
        return this.manager.getNAV_DRAWER_TITLES()[i];
    }

    public final boolean isSeparator(int i) {
        return i == this.manager.getNAV_DRAWER_ITEM_SEPARATOR();
    }

    public final void onBackPressed() {
        BaseContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (view.isNavDrawerOpen()) {
            view.closeNavDrawer();
        } else {
            view.finishActivity();
        }
    }

    public final void onMessageChanged() {
        setupNavDrawer();
    }

    public final void onNavButtonClicked() {
        AnalyticsManager.INSTANCE.fire(Event.SideMenuView.INSTANCE);
        BaseContract.View view = this.view.get();
        if (view != null) {
            view.openNavDrawer();
        }
    }

    public final void onNavDrawerItemClicked(int i) {
        BaseContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (i == view.getActiveNavDrawerItem()) {
            view.closeNavDrawer();
            return;
        }
        if (isItemDeveloped(i)) {
            view.setActiveNavDrawerItem(i, this.navDrawerItems);
        }
        this.manager.navDrawerItemClicked(i, view.getFunctionalityInstance());
        view.closeNavDrawer();
    }

    public final void onSubscriptionChanged() {
        Timber.m37d("redrawing subscription header.", new Object[0]);
        setupNavDrawer();
    }

    public final void viewCreated() {
        BaseContract.View view = this.view.get();
        if (view != null) {
            view.setDefaultPreferenceValues();
            view.setDrawerToggleListener();
        }
    }

    public final void viewDestroyed() {
        BaseContract.View view = this.view.get();
        if (view != null) {
            view.removeSubscriptionListener();
        }
    }

    public final void viewPostCreated() {
        BaseContract.View view = this.view.get();
        if (view != null) {
            view.addMessageChangeListener();
        }
        setupNavDrawer();
    }
}
