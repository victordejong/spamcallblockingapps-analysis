package com.netqin.p525cm.utils;

import android.content.Context;
import p131c.p431l.p432a.p468n.C6851j;
/* renamed from: com.netqin.cm.utils.NQSPFManager */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/NQSPFManager.class */
public class NQSPFManager {

    /* renamed from: d */
    public static NQSPFManager f35741d;

    /* renamed from: a */
    public Context f35742a;

    /* renamed from: b */
    public final C6851j<EnumNetQin> f35743b;

    /* renamed from: c */
    public final C6851j<EnumAntiHarass> f35744c;

    /* renamed from: com.netqin.cm.utils.NQSPFManager$EnumAntiHarass */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/NQSPFManager$EnumAntiHarass.class */
    public enum EnumAntiHarass {
        antiharass_block_model,
        antiharass_reject_way,
        antiharass_block_prank_call,
        antiharass_block_prank_call_notification,
        smsBackContent,
        is_migrate_showing,
        is_migrate_showed,
        has_score_showed,
        antiharass_is_more_migrate_showed,
        antiharass_block_sms,
        call_reminder_pro
    }

    /* renamed from: com.netqin.cm.utils.NQSPFManager$EnumNetQin */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/NQSPFManager$EnumNetQin.class */
    public enum EnumNetQin {
        uid,
        first_run,
        imei_value,
        soft_version,
        AdShowTime,
        key_show_nqfamily,
        show_olympic_icon,
        ad_type_main_call_log,
        ad_type_main_sms_log,
        ad_type_main_rule_page,
        self_ad_main_call_list,
        self_ad_main_sms_list,
        self_ad_main_rule_page,
        self_ad_more_page,
        self_ad_trigger,
        wifi_doctor_state
    }

    /* renamed from: com.netqin.cm.utils.NQSPFManager$EnumSettingTag */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/utils/NQSPFManager$EnumSettingTag.class */
    public enum EnumSettingTag {
        finance_account_protection,
        finance_account_protection_tip,
        prevent_eavesdropping_protection,
        auto_update_virusdb_status,
        auto_update_virusdb_only_wifi,
        auto_update_virusdb_success_notify,
        region_show_state,
        region_float_window_x,
        region_float_window_y,
        p_lib_version,
        f_lib_version,
        furls_version
    }

    public NQSPFManager(Context context) {
        this.f35742a = context;
        this.f35743b = new C6851j<>(context, "Call Blocker");
        this.f35744c = new C6851j<>(this.f35742a, "nq_antiharass");
        new C6851j(this.f35742a, "nq_phonetag");
    }

    /* renamed from: a */
    public static NQSPFManager m3184a(Context context) {
        NQSPFManager nQSPFManager;
        synchronized (NQSPFManager.class) {
            try {
                if (f35741d == null) {
                    f35741d = new NQSPFManager(context.getApplicationContext());
                }
                nQSPFManager = f35741d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nQSPFManager;
    }
}
