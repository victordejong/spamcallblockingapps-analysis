package p000;

import android.os.Bundle;
import java.util.EnumSet;
import p000.n91;
/* renamed from: w91 */
/* loaded from: classes3-dex2jar.jar:w91.class */
public final class w91 {

    /* renamed from: a */
    public static x91[] f8469a = {new y91()};

    /* JADX WARN: Init of enum L can be incorrect */
    /* JADX WARN: Init of enum M can be incorrect */
    /* JADX WARN: Init of enum u can be incorrect */
    /* renamed from: w91$a */
    /* loaded from: classes3-dex2jar.jar:w91$a.class */
    public enum EnumC1708a {
        INCOMING_CALL(i61.stat_event_incoming_call),
        INCOMING_SMS(i61.stat_event_incoming_sms),
        INCOMING_MMS(i61.stat_event_incoming_mms),
        BLOCKED_CALL(i61.stat_event_blocked_call),
        BLOCKED_SMS(i61.stat_event_blocked_sms),
        BLOCKED_MMS(i61.stat_event_blocked_mms),
        NUMBER_DIALED(i61.stat_event_number_dialed),
        PURCHASE(i61.stat_event_purchase),
        LEGACY_MODE_ENABLE(i61.legacy_mode_enable),
        LEGACY_MODE_DISABLE(i61.legacy_mode_disable),
        INSTALL(i61.stat_event_install),
        FRESH_START(i61.stat_event_fresh_start),
        LEAVE_REVIEW(i61.stat_event_leave_review),
        CHANGE_BLOCK_MODE(i61.a_promt_to_change_blockmode),
        TOS_ACCEPTED(i61.stat_event_tos_accepted),
        LOOKUP_NODATA(i61.a_lookup_nodata),
        LOOKUP_OK(i61.a_lookup_ok),
        LOOKUP_FAILURE(i61.a_lookup_failure),
        LANGUAGE_CHANGE(r0),
        LANGUAGE_SYSTEM(i61.a_language_system),
        VERSION_UPGRADE_SUGGESTED(i61.a_version_upgrade_suggested),
        VERSION_UPGRADE_FORCED(i61.a_version_upgrade_forced),
        PUSH_NOTIFICATION_ENABLE(i61.a_push_notification_enable),
        PUSH_NOTIFICATION_DISABLE(i61.a_push_notification_disable),
        PUSH_NOTIFICATION_TOKEN_SENT(i61.a_push_notification_token_sent),
        PUSH_NOTIFICATION_TOKEN_RECEIVED(i61.a_push_notification_token_received),
        PUSH_NOTIFICATION_TOKEN_REQUESTED(i61.a_push_notification_token_requested),
        PUSH_NOTIFICATION_TOKEN_FAILED(i61.a_push_notification_token_failed),
        PUSH_NOTIFICATION_TOKEN_FAILED_SERVER(i61.a_push_notification_token_failed_server),
        PUSH_NOTIFICATION_RECEIVED_PAYLOAD(i61.a_push_notification_received_payload),
        PUSH_NOTIFICATION_EXECUTED(i61.a_push_notification_executed),
        PUSH_NOTIFICATION_SHOWN(i61.a_push_notification_shown),
        PUSH_NOTIFICATION_ACTED(i61.a_push_notification_acted),
        SETTING_DYNAMICS(i61.a_category_setting_dynamics),
        SETTING_DYNAMICS_USERS(i61.a_action_setting_dynamics_total),
        SETTING_DYNAMICS_LANGUAGE(r0),
        SETTING_DYNAMICS_MESSAGING_APP(r0),
        SETTING_DYNAMICS_PHONE_APP(i61.a_phone_app),
        SETTING_DYNAMICS_CUSTOM_CALL_SCREEN_UI(i61.a_custom_call_screen),
        SETTING_DYNAMICS_BLOCKING_L1(i61.a_action_setting_dynamics_blocking_l1),
        SETTING_DYNAMICS_BLOCKING_L2(i61.a_action_setting_dynamics_blocking_l2),
        SETTING_DYNAMICS_BLOCKING_CONFLICT_PRIORITY(i61.a_action_setting_dynamics_blocking_conflict_priority),
        SETTING_DYNAMICS_BLOCKING_SIMILAR_NUMBERS(i61.a_action_setting_dynamics_blocking_similar_numbers),
        MISSED_CALL_OVERLAY_DISPLAYED_BLOCKED(i61.a_action_missed_call_overlay_displayed_blocked),
        MISSED_CALL_OVERLAY_DISPLAYED_MISSED(i61.a_action_missed_call_overlay_displayed_missed),
        MISSED_CALL_OVERLAY_ACTION_TAKEN(i61.a_action_missed_call_overlay_action_taken),
        CCH_SYNC_BEGIN(i61.a_label_sync_started),
        CCH_SYNC_FINISHED(i61.a_label_sync_finished),
        CCH_DEVICE_ACTIVATION(i61.a_action_cch_device_activation),
        CCH_DEVICE_DYNAMICS(i61.a_action_cch_device_dynamics),
        CCH_SETTINGS_DYNAMICS(i61.a_action_cch_setting_dynamics),
        IDENTIFICATION_CHANGED(i61.a_action_identification_changed),
        THIRD_PARTY_APPS_TRY_IT(i61.a_action_3rd_party_apps_try_it),
        THIRD_PARTY_APPS_NOT_SHOW_AGAIN(i61.a_action_3rd_party_apps_not_show_again),
        THIRD_PARTY_APPS_MESSAGE_NAV(i61.a_action_3rd_party_apps_navigate_to_message),
        THIRD_PARTY_APPS_INSTALL(i61.a_action_3rd_party_apps_install),
        THIRD_PARTY_APPS_SETUP(i61.a_action_3rd_party_apps_setup),
        THIRD_PARTY_APPS_BLOCKED(i61.a_action_3rd_party_apps_blocked),
        THIRD_PARTY_APPS_ALLOWED(i61.a_action_3rd_party_apps_allowed),
        THIRD_PARTY_APPS_SETTINGS_AS_DEFAULT(i61.a_action_3rd_party_apps_set_as_default),
        THIRD_PARTY_APPS_SETTINGS_NOT_AS_DEFAULT(i61.a_action_3rd_party_apps_not_as_default);

        static {
            int i = i61.a_language;
        }

        EnumC1708a(int i) {
        }
    }

    static {
        EnumSet.noneOf(EnumC1708a.class);
    }

    /* renamed from: a */
    public static void m277a() {
        for (x91 x91Var : f8469a) {
            x91Var.mo90d();
        }
    }

    /* renamed from: b */
    public static void m276b(Object obj, EnumC1708a enumC1708a) {
        m273e(obj, enumC1708a, n91.EnumC1484a.NONE, null);
    }

    /* renamed from: c */
    public static void m275c(Object obj, EnumC1708a enumC1708a, Bundle bundle) {
        m273e(obj, enumC1708a, n91.EnumC1484a.NONE, bundle);
    }

    /* renamed from: d */
    public static void m274d(Object obj, EnumC1708a enumC1708a, n91.EnumC1484a enumC1484a) {
        m273e(obj, enumC1708a, enumC1484a, null);
    }

    /* renamed from: e */
    public static void m273e(Object obj, EnumC1708a enumC1708a, n91.EnumC1484a enumC1484a, Bundle bundle) {
        for (x91 x91Var : f8469a) {
            x91Var.mo93a(obj, enumC1708a, enumC1484a, bundle);
        }
    }

    /* renamed from: f */
    public static void m272f(Object obj) {
        for (x91 x91Var : f8469a) {
            x91Var.mo92b(obj);
        }
    }

    /* renamed from: g */
    public static void m271g(Object obj) {
        for (x91 x91Var : f8469a) {
            x91Var.mo89e(obj);
        }
    }

    /* renamed from: h */
    public static void m270h(Object obj, Bundle bundle) {
        for (x91 x91Var : f8469a) {
            x91Var.mo91c(obj, bundle);
        }
    }

    /* renamed from: i */
    public static void m269i() {
        for (x91 x91Var : f8469a) {
            x91Var.shutdown();
        }
    }
}
