package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhn.class */
public final class zzhn implements zzhk {

    /* renamed from: a */
    private static final zzbq<Boolean> f8124a;

    static {
        zzbu zzbuVar = new zzbu(zzbn.m14015a("com.google.android.gms.icing"));
        zzbuVar.m13998a("block_action_upload_if_data_sharing_disabled", false);
        zzbuVar.m13998a("drop_usage_reports_for_account_mismatch", false);
        zzbuVar.m13998a("enable_additional_type_for_email", true);
        f8124a = zzbuVar.m13998a("enable_client_grant_slice_permission", true);
        zzbuVar.m13998a("enable_custom_action_url_generation", false);
        zzbuVar.m13998a("enable_failure_response_for_apitask_exceptions", false);
        zzbuVar.m13998a("enable_on_device_sharing_control_ui", false);
        zzbuVar.m13998a("enable_safe_app_indexing_package_removal", false);
        zzbuVar.m13998a("enable_slice_authority_validation", false);
        zzbuVar.m13998a("redirect_user_actions_from_persistent_to_main", false);
        zzbuVar.m13998a("type_access_whitelist_enforce_platform_permissions", true);
    }

    @Override // com.google.android.gms.internal.icing.zzhk
    /* renamed from: a */
    public final boolean mo13472a() {
        return f8124a.m14012a().booleanValue();
    }
}
