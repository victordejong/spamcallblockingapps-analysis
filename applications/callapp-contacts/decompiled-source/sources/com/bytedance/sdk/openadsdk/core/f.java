package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.play.core.splitinstall.model.SplitInstallErrorCode;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/f.class */
public class f {
    public static String a(int i) {
        if (i == -100) {
            return x.a(n.a(), "tt_init_setting_config_not_complete");
        }
        if (i == 20001) {
            return x.a(n.a(), "tt_no_ad");
        }
        if (i == 50001) {
            return x.a(n.a(), "tt_sys_error");
        }
        if (i == 60007) {
            return x.a(n.a(), "tt_error_verify_reward");
        }
        if (i == -16) {
            return x.a(n.a(), "tt_error_ad_able_false_msg");
        }
        if (i == -15) {
            return x.a(n.a(), "tt_lack_android_manifest_configuration");
        }
        if (i == 201) {
            return x.a(n.a(), "tt_load_creative_icon_response_error");
        }
        if (i == 202) {
            return x.a(n.a(), "tt_load_creative_icon_error");
        }
        switch (i) {
            case SplitInstallErrorCode.SPLITCOMPAT_EMULATION_ERROR /* -12 */:
                return x.a(n.a(), "tt_splash_not_have_cache_error");
            case SplitInstallErrorCode.SPLITCOMPAT_VERIFICATION_ERROR /* -11 */:
                return x.a(n.a(), "tt_splash_cache_expired_error");
            case -10:
                return x.a(n.a(), "tt_splash_cache_parse_error");
            case -9:
                return x.a(n.a(), "tt_request_body_error");
            case SplitInstallErrorCode.INCOMPATIBLE_WITH_EXISTING_SESSION /* -8 */:
                return x.a(n.a(), "tt_frequent_call_erroe");
            case -7:
                return x.a(n.a(), "tt_splash_ad_load_image_error");
            case -6:
                return x.a(n.a(), "tt_insert_ad_load_image_error");
            case -5:
                return x.a(n.a(), "tt_banner_ad_load_image_error");
            case -4:
                return x.a(n.a(), "tt_ad_data_error");
            case -3:
                return x.a(n.a(), "tt_no_ad_parse");
            case -2:
                return x.a(n.a(), "tt_net_error");
            case -1:
                return x.a(n.a(), "tt_parse_fail");
            default:
                switch (i) {
                    case 101:
                        return x.a(n.a(), "tt_render_render_parse_error");
                    case 102:
                        return x.a(n.a(), "tt_render_main_template_invalid");
                    case 103:
                        return x.a(n.a(), "tt_render_diff_template_invalid");
                    case 104:
                        return x.a(n.a(), "tt_render_fail_meta_invalid");
                    case 105:
                        return x.a(n.a(), "tt_render_fail_template_parse_error");
                    case 106:
                        return x.a(n.a(), "tt_render_fail_unknown");
                    case 107:
                        return x.a(n.a(), "tt_render_fail_timeout");
                    case 108:
                        return x.a(n.a(), "tt_reder_ad_load_timeout");
                    case 109:
                        return x.a(n.a(), "tt_template_load_fail");
                    default:
                        switch (i) {
                            case PangleAdapterConfiguration.CONTENT_TYPE_ERROR /* 40000 */:
                                return x.a(n.a(), "tt_content_type");
                            case 40001:
                                return x.a(n.a(), "tt_request_pb_error");
                            case 40002:
                                return x.a(n.a(), "tt_app_empty");
                            case ApiErrorData.ErrorCodes.BadRequest.InvalidRequest /* 40003 */:
                                return x.a(n.a(), "tt_wap_empty");
                            case 40004:
                                return x.a(n.a(), "tt_adslot_empty");
                            case ApiErrorData.ErrorCodes.BadRequest.NumberMissingLeadingPlus /* 40005 */:
                                return x.a(n.a(), "tt_adslot_size_empty");
                            case PangleAdapterConfiguration.PLACEMENT_ERROR /* 40006 */:
                                return x.a(n.a(), "tt_adslot_id_error");
                            case 40007:
                                return x.a(n.a(), "tt_error_code_adcount_error");
                            case 40008:
                                return x.a(n.a(), "tt_error_image_size");
                            case 40009:
                                return x.a(n.a(), "tt_error_media_id");
                            case 40010:
                                return x.a(n.a(), "tt_error_media_type");
                            case 40011:
                                return x.a(n.a(), "tt_error_ad_type");
                            case 40012:
                            case 40017:
                                return x.a(n.a(), "tt_error_access_method_pass");
                            case 40013:
                                return x.a(n.a(), "tt_error_splash_ad_type");
                            case 40014:
                                return x.a(n.a(), "tt_error_redirect");
                            case 40015:
                                return x.a(n.a(), "tt_error_request_invalid");
                            case 40016:
                                return x.a(n.a(), "tt_error_slot_id_app_id_differ");
                            case 40018:
                                return x.a(n.a(), "tt_error_package_name");
                            case 40019:
                                return x.a(n.a(), "tt_error_adtype_differ");
                            case 40020:
                                return x.a(n.a(), "tt_error_new_register_limit");
                            case 40021:
                                return x.a(n.a(), "tt_error_apk_sign_check_error");
                            case 40022:
                                return x.a(n.a(), "tt_error_origin_ad_error");
                            case 40023:
                                return x.a(n.a(), "tt_error_union_os_error");
                            case 40024:
                                return x.a(n.a(), "tt_error_union_sdk_too_old");
                            default:
                                switch (i) {
                                    case 60001:
                                        return x.a(n.a(), "tt_ror_code_show_event_error");
                                    case 60002:
                                        return x.a(n.a(), "tt_error_code_click_event_error");
                                    default:
                                        return x.a(n.a(), "tt_error_unknow");
                                }
                        }
                }
        }
    }
}
