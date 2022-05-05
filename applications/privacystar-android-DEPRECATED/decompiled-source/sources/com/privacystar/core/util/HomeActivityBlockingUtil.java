package com.privacystar.core.util;

import android.content.Context;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.BaseActivity;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.approved_list.ApprovedListFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import com.privacystar.core.p011ui.widgets.NumberListType;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/HomeActivityBlockingUtil.class */
public class HomeActivityBlockingUtil {
    private static boolean approveEntry(CallDetails callDetails, Context context, FragmentManager fragmentManager, Realm realm) {
        if (callDetails == null) {
            return false;
        }
        if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.APPROVE_LIST)) {
            context.startActivity(DetailActivity.subscriptionIntent(context));
            return false;
        } else if (callDetails.containsOnlySms()) {
            StaticDialogs.INSTANCE.newSmsInListInstance(context, NumberListType.APPROVED).show(fragmentManager, "sms_blocking_explanation_fragment");
            return false;
        } else if (BlockListRealm.isCallerBlocked(realm, callDetails.getCaller())) {
            StaticDialogs.INSTANCE.newAlreadyInOtherListInstance(context, realm, callDetails.getCaller().getNumber(), NumberListType.APPROVED).show(fragmentManager, "in_other_list_explanation_fragment");
            return false;
        } else {
            approveEntryImpl(callDetails, realm);
            StaticDialogs.INSTANCE.newAddedToNumberListInstance(context, BaseActivity.Companion.detailIntent(context, ApprovedListFragment.class, null), NumberListType.APPROVED).show(fragmentManager, "blocked_type_explanation_fragment");
            return true;
        }
    }

    public static boolean approveEntry(CallDetails callDetails, FragmentActivity fragmentActivity, Realm realm) {
        return approveEntry(callDetails, fragmentActivity, fragmentActivity.getSupportFragmentManager(), realm);
    }

    public static boolean approveEntry(CallDetails callDetails, PSActivity pSActivity) {
        return approveEntry(callDetails, pSActivity, pSActivity.getSupportFragmentManager(), pSActivity.getRealm());
    }

    private static void approveEntryImpl(CallDetails callDetails, Realm realm) {
        Timber.m37d("Approving the numberTextView: %s", callDetails.getCaller().getNumber());
        ApprovedListRealm.setApproved(realm, callDetails.getCaller().getNumber(), true);
    }

    private static boolean blockEntry(CallDetails callDetails, Context context, FragmentManager fragmentManager, Realm realm) {
        if (callDetails == null) {
            return false;
        }
        if (callDetails.getCaller().isUnknownNumber() && !PreferenceUtil.getIsUnknownBlockingEnabled()) {
            StaticDialogs.INSTANCE.newUnknownBlockingInstance(context, false).show(fragmentManager, "unknown_blocking_explanation_fragment");
            return false;
        } else if (FeatureUtil.couldBlockAsScam(realm, callDetails.getCaller())) {
            blockEntryImpl(callDetails, realm);
            StaticDialogs.INSTANCE.newAddedToNumberListInstance(context, null, NumberListType.BLOCK).show(fragmentManager, "blocked_type_explanation_fragment");
            return true;
        } else if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            context.startActivity(DetailActivity.subscriptionIntent(context));
            return false;
        } else if (callDetails.containsOnlySms()) {
            StaticDialogs.INSTANCE.newSmsInListInstance(context, NumberListType.BLOCK).show(fragmentManager, "sms_blocking_explanation_fragment");
            return false;
        } else if (callerIsApproved(callDetails.getCaller(), realm)) {
            StaticDialogs.INSTANCE.newAlreadyInOtherListInstance(context, realm, callDetails.getCaller().getNumber(), NumberListType.BLOCK).show(fragmentManager, "in_other_list_explanation_fragment");
            return false;
        } else {
            blockEntryImpl(callDetails, realm);
            StaticDialogs.INSTANCE.newAddedToNumberListInstance(context, BaseActivity.Companion.detailIntent(context, BlockListFragment.class, null), NumberListType.BLOCK).show(fragmentManager, "blocked_type_explanation_fragment");
            return true;
        }
    }

    public static boolean blockEntry(CallDetails callDetails, FragmentActivity fragmentActivity, Realm realm) {
        return blockEntry(callDetails, fragmentActivity, fragmentActivity.getSupportFragmentManager(), realm);
    }

    public static boolean blockEntry(CallDetails callDetails, PSActivity pSActivity) {
        return blockEntry(callDetails, pSActivity, pSActivity.getSupportFragmentManager(), pSActivity.getRealm());
    }

    private static void blockEntryImpl(CallDetails callDetails, Realm realm) {
        Timber.m37d("Blocking the numberTextView: %s", callDetails.getCaller().getNumber());
        BlockListRealm.addToOrUpdateBlockList(realm, callDetails.getCaller());
    }

    private static boolean callerIsApproved(Caller caller, Realm realm) {
        if (caller == null) {
            Timber.m25w("Checking if caller is approved but caller is null.", new Object[0]);
            return false;
        }
        boolean isCallerApproved = ApprovedListRealm.isCallerApproved(realm, caller);
        Timber.m28v("Caller is%s approved by list.", isCallerApproved ? "" : " not");
        return isCallerApproved;
    }

    public static boolean unapproveEntry(CallDetails callDetails, Realm realm) {
        if (callDetails == null) {
            return false;
        }
        Timber.m37d("Unapproving the number: %s", callDetails.getCaller().getNumber());
        ApprovedListRealm.setApproved(realm, callDetails.getCaller().getNumber(), false);
        return true;
    }

    private static boolean unblockEntry(CallDetails callDetails, Context context, FragmentManager fragmentManager, Realm realm) {
        if (callDetails == null) {
            return false;
        }
        if (callDetails.getCaller().isBlockedDueToType(false)) {
            StaticDialogs.INSTANCE.newBlockedTypeInstance(context, callDetails.getCaller().getOffenderCategoryId()).show(fragmentManager, "blocked_type_explanation_fragment");
            return false;
        } else if (callDetails.getCaller().isBlockedDueToUnknown()) {
            StaticDialogs.INSTANCE.newUnknownBlockingInstance(context, true).show(fragmentManager, "unknown_block_explanation_fragment");
            return false;
        } else {
            BlockingUtil.unblockNumber(fragmentManager, context, realm, callDetails.getCaller().getNumber());
            Timber.m37d("Unblocking the number: %s", callDetails.getCaller().getNumber());
            return true;
        }
    }

    public static boolean unblockEntry(CallDetails callDetails, FragmentActivity fragmentActivity, Realm realm) {
        return unblockEntry(callDetails, fragmentActivity, fragmentActivity.getSupportFragmentManager(), realm);
    }

    public static boolean unblockEntry(CallDetails callDetails, PSActivity pSActivity) {
        return unblockEntry(callDetails, pSActivity, pSActivity.getSupportFragmentManager(), pSActivity.getRealm());
    }
}
