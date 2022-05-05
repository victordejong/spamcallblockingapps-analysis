package com.privacystar.core.util.enums;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.p011ui.BaseActivity;
import com.privacystar.core.p011ui.detail_view.about.AboutFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.detail_view.inbox.InboxFragment;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsFragment;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsFragment;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.walkthrough.WalkthroughActivity;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/enums/NavigationTarget.class */
public enum NavigationTarget {
    LOOKUP(1, CallerDetailsFragment.class, true),
    BLOCK(2),
    APPROVE(3),
    INBOX(4, InboxFragment.class, true),
    SETTINGS(5, BasicSettingsFragment.class, true),
    HOME(10, HomeActivity.class),
    CALLER_DETAILS(11, CallerDetailsFragment.class, true),
    BLOCK_LIST(12, BlockListFragment.class, true),
    SUBSCRIPTION(13, SubscriptionFragment.class, true),
    ADV_SETTINGS(14, AdvancedSettingsFragment.class, true),
    ABOUT(15, AboutFragment.class, true),
    WALKTHROUGH(16, WalkthroughActivity.class),
    SHARE_APP(17);
    
    private Class clazz;

    /* renamed from: id */
    private int f302id;
    private boolean isFragment;

    NavigationTarget(int i) {
        this(i, null);
    }

    NavigationTarget(int i, Class cls) {
        this(i, cls, false);
    }

    NavigationTarget(int i, Class cls, boolean z) {
        this.f302id = i;
        this.clazz = cls;
        this.isFragment = z;
    }

    public static NavigationTarget targetFromId(int i) {
        NavigationTarget[] values;
        for (NavigationTarget navigationTarget : values()) {
            if (navigationTarget.f302id == i) {
                return navigationTarget;
            }
        }
        return null;
    }

    public boolean isLaunchable() {
        return this.clazz != null;
    }

    public void launchView(Context context, Realm realm, String str) {
        Intent intent;
        if (isLaunchable()) {
            AnalyticsUtil.INSTANCE.trackPushMessageResponse(AnalyticsUtil.PushMessageAnalyticsEvent.ACTION_TAKEN);
            if (this.isFragment) {
                Caller caller = null;
                if (equals(CALLER_DETAILS)) {
                    caller = CallerFactory.getInstance().getPopulatedCaller(str);
                    LookupHandler.getInstance().lookupUncachedCaller(realm, str, LookupRequest.LookupType.MANUAL);
                }
                intent = BaseActivity.Companion.detailIntent(context, this.clazz, caller);
            } else {
                intent = new Intent(context, this.clazz);
            }
            if (!(context instanceof Activity) && intent != null) {
                intent.addFlags(335544320);
            }
            context.startActivity(intent);
            return;
        }
        Timber.m25w("There is no valid view associated with this target that can be launched.", new Object[0]);
    }
}
