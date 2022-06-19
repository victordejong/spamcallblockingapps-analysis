package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.google.android.play.core.splitinstall.model.SplitInstallErrorCode;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
/* renamed from: com.bytedance.sdk.openadsdk.core.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/f.class */
public class C4566f {
    /* renamed from: a */
    public static String m35036a(int i) {
        if (i != -100) {
            if (i == 20001) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_no_ad");
            }
            if (i == 50001) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_sys_error");
            }
            if (i == 60007) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_error_verify_reward");
            }
            if (i == -16) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_error_ad_able_false_msg");
            }
            if (i == -15) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_lack_android_manifest_configuration");
            }
            if (i == 201) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_load_creative_icon_response_error");
            }
            if (i == 202) {
                return C5486x.m32071a(C4600n.m34815a(), "tt_load_creative_icon_error");
            }
            switch (i) {
                case SplitInstallErrorCode.SPLITCOMPAT_EMULATION_ERROR /* -12 */:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_splash_not_have_cache_error");
                case SplitInstallErrorCode.SPLITCOMPAT_VERIFICATION_ERROR /* -11 */:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_splash_cache_expired_error");
                case -10:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_splash_cache_parse_error");
                case -9:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_request_body_error");
                case SplitInstallErrorCode.INCOMPATIBLE_WITH_EXISTING_SESSION /* -8 */:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_frequent_call_erroe");
                case -7:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_splash_ad_load_image_error");
                case -6:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_insert_ad_load_image_error");
                case -5:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_banner_ad_load_image_error");
                case -4:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_ad_data_error");
                case -3:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_no_ad_parse");
                case -2:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_net_error");
                case -1:
                    return C5486x.m32071a(C4600n.m34815a(), "tt_parse_fail");
                default:
                    switch (i) {
                        case 101:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_render_parse_error");
                        case 102:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_main_template_invalid");
                        case 103:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_diff_template_invalid");
                        case 104:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_fail_meta_invalid");
                        case 105:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_fail_template_parse_error");
                        case 106:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_fail_unknown");
                        case 107:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_render_fail_timeout");
                        case 108:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_reder_ad_load_timeout");
                        case 109:
                            return C5486x.m32071a(C4600n.m34815a(), "tt_template_load_fail");
                        default:
                            switch (i) {
                                case PangleAdapterConfiguration.CONTENT_TYPE_ERROR /* 40000 */:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_content_type");
                                case 40001:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_request_pb_error");
                                case 40002:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_app_empty");
                                case ApiErrorData.ErrorCodes.BadRequest.InvalidRequest /* 40003 */:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_wap_empty");
                                case 40004:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_adslot_empty");
                                case ApiErrorData.ErrorCodes.BadRequest.NumberMissingLeadingPlus /* 40005 */:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_adslot_size_empty");
                                case PangleAdapterConfiguration.PLACEMENT_ERROR /* 40006 */:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_adslot_id_error");
                                case 40007:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_code_adcount_error");
                                case 40008:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_image_size");
                                case 40009:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_media_id");
                                case 40010:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_media_type");
                                case 40011:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_ad_type");
                                case 40012:
                                case 40017:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_access_method_pass");
                                case 40013:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_splash_ad_type");
                                case 40014:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_redirect");
                                case 40015:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_request_invalid");
                                case 40016:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_slot_id_app_id_differ");
                                case 40018:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_package_name");
                                case 40019:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_adtype_differ");
                                case 40020:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_new_register_limit");
                                case 40021:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_apk_sign_check_error");
                                case 40022:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_origin_ad_error");
                                case 40023:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_union_os_error");
                                case 40024:
                                    return C5486x.m32071a(C4600n.m34815a(), "tt_error_union_sdk_too_old");
                                default:
                                    switch (i) {
                                        case 60001:
                                            return C5486x.m32071a(C4600n.m34815a(), "tt_ror_code_show_event_error");
                                        case 60002:
                                            return C5486x.m32071a(C4600n.m34815a(), "tt_error_code_click_event_error");
                                        default:
                                            return C5486x.m32071a(C4600n.m34815a(), "tt_error_unknow");
                                    }
                            }
                    }
            }
        }
        return C5486x.m32071a(C4600n.m34815a(), "tt_init_setting_config_not_complete");
    }
}
