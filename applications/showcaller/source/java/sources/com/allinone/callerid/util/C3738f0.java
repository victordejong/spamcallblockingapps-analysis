package com.allinone.callerid.util;

import android.content.Context;
import android.os.Build;
import com.allinone.callerid.bean.ParserIpBean;
import com.allinone.callerid.p162i.p163a.p185o.C2921c;
/* renamed from: com.allinone.callerid.util.f0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/f0.class */
public class C3738f0 {
    /* renamed from: A */
    public static void m24402A(Context context) {
        C3810q.m24071b().m24070c("search_buyu_count_ok");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_buyu_count_in_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("search_buyu_count_eg_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_buyu_count_iq_ok");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("search_buyu_count_id_ok");
    }

    /* renamed from: B */
    public static void m24401B(Context context) {
        C3810q.m24071b().m24070c("search_soft_comments_ok");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_comments_ok");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_comments_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_comments_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_comments_ok");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("idn_comments_ok");
    }

    /* renamed from: C */
    public static void m24400C(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code == null || !iso_code.equals("IN/IND")) {
            return;
        }
        C3810q.m24071b().m24070c("search_in_140_number");
        C3810q.m24071b().m24070c("search_in_140_number");
    }

    /* renamed from: D */
    public static void m24399D(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code == null || !iso_code.equals("IN/IND")) {
            return;
        }
        C3810q.m24071b().m24070c("search_in_140_number_ok");
        C3810q.m24071b().m24070c("search_in_140_number_ok");
    }

    /* renamed from: E */
    public static void m24398E(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_location_ok");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_location_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_location_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_location_ok");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_location_ok");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_location_ok");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_location_ok");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_location_ok");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_location_ok");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_location_ok");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_location_ok");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_location_ok");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_location_ok");
    }

    /* renamed from: F */
    public static void m24397F(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_unknown_name_ok");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_unknown_name_ok");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_unknown_name_ok");
    }

    /* renamed from: G */
    public static void m24396G(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_search_ok");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_search_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_search_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_search_ok");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_search_ok");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_search_ok");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_search_ok");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_search_ok");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_search_ok");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_search_ok");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_search_ok");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_search_ok");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_search_ok");
    }

    /* renamed from: H */
    public static void m24395H(Context context) {
        C3810q.m24071b().m24070c("search_offline_db_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("search_offline_db_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_offline_db_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_offline_db_iq_new");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("search_offline_db_eg_new");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("search_offline_db_id_new");
    }

    /* renamed from: I */
    public static void m24394I(Context context) {
        String country;
        String state;
        ParserIpBean m26410b = C2921c.m26411a().m26410b();
        if (m26410b == null || m26410b.getCountry() == null || "".equals(m26410b.getCountry()) || (country = m26410b.getCountry()) == null || !"in".equals(country) || (state = m26410b.getState()) == null || "".equals(state)) {
            return;
        }
        boolean z = true;
        switch (state.hashCode()) {
            case 3208:
                if (state.equals("dl")) {
                    z = false;
                    break;
                }
                break;
            case 3414:
                if (state.equals("ka")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (state.equals("mh")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                C3810q.m24071b().m24070c("search_offline_db_in_dl_new");
                return;
            case true:
                C3810q.m24071b().m24070c("search_offline_db_in_ka_new");
                return;
            case true:
                C3810q.m24071b().m24070c("search_offline_db_in_mh_new");
                return;
            default:
                return;
        }
    }

    /* renamed from: J */
    public static void m24393J(Context context) {
        C3810q.m24071b().m24070c("search_offline_db_success_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("search_offline_db_success_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_offline_db_success_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_offline_db_success_iq_new");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("search_offline_db_success_eg_new");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("search_offline_db_success_id_new");
    }

    /* renamed from: K */
    public static void m24392K(Context context) {
        String country;
        String state;
        ParserIpBean m26410b = C2921c.m26411a().m26410b();
        if (m26410b == null || m26410b.getCountry() == null || "".equals(m26410b.getCountry()) || (country = m26410b.getCountry()) == null || !"in".equals(country) || (state = m26410b.getState()) == null || "".equals(state)) {
            return;
        }
        boolean z = true;
        switch (state.hashCode()) {
            case 3208:
                if (state.equals("dl")) {
                    z = false;
                    break;
                }
                break;
            case 3414:
                if (state.equals("ka")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (state.equals("mh")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                C3810q.m24071b().m24070c("search_offline_db_success_in_dl_new");
                return;
            case true:
                C3810q.m24071b().m24070c("search_offline_db_success_in_ka_new");
                return;
            case true:
                C3810q.m24071b().m24070c("search_offline_db_success_in_mh_new");
                return;
            default:
                return;
        }
    }

    /* renamed from: L */
    public static void m24391L(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_unknown_spam_ok");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_unknown_sapm_ok");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_unknown_sapm_ok");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_unknown_sapm_ok");
    }

    /* renamed from: M */
    public static void m24390M(Context context) {
        C3810q.m24071b().m24070c("incoming_unknown_offhook");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_answer_in");
        }
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_answer_us");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_answer_br");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_answer_de");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_answer_au");
        }
        if (iso_code == null || !iso_code.equals("IQ/IRQ")) {
            return;
        }
        C3810q.m24071b().m24070c("incoming_unkonwn_answer_iq");
    }

    /* renamed from: N */
    public static void m24389N(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("incoming_us_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("incoming_in_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("incoming_irq_unkonwn");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("incoming_egy_unkonwn");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("incoming_idn_unkonwn");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("incoming_gbr_unkonwn");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("incoming_aus_unkonwn");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("incoming_deu_unkonwn");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("incoming_bra_unkonwn");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("incoming_nga_unkonwn");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("incoming_tur_unkonwn");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("incoming_pak_unkonwn");
        }
        if (iso_code != null && iso_code.equals("BD/BGD")) {
            C3810q.m24071b().m24070c("incoming_bgd_unkonwn");
        }
        if (iso_code != null && iso_code.equals("KE/KEN")) {
            C3810q.m24071b().m24070c("incoming_ken_unkonwn");
        }
        if (iso_code != null && iso_code.equals("CL/CHL")) {
            C3810q.m24071b().m24070c("incoming_chl_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IT/ITA")) {
            C3810q.m24071b().m24070c("incoming_ita_unkonwn");
        }
        if (iso_code != null && iso_code.equals("ZA/ZAF")) {
            C3810q.m24071b().m24070c("incoming_zaf_unkonwn");
        }
        if (iso_code != null && iso_code.equals("PH/PHL")) {
            C3810q.m24071b().m24070c("incoming_phl_unkonwn");
        }
        if (iso_code != null && iso_code.equals("RU/RUS")) {
            C3810q.m24071b().m24070c("incoming_rus_unkonwn");
        }
        if (iso_code == null || !iso_code.equals("ET/ETH")) {
            return;
        }
        C3810q.m24071b().m24070c("incoming_eth_unkonwn");
    }

    /* renamed from: O */
    public static void m24388O(Context context) {
        C3810q.m24071b().m24070c("incoming_unkonwn_missed");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_missed_in");
        }
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_missed_us");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_missed_br");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_missed_de");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("incoming_unkonwn_missed_au");
        }
        if (iso_code == null || !iso_code.equals("IQ/IRQ")) {
            return;
        }
        C3810q.m24071b().m24070c("incoming_unkonwn_missed_iq");
    }

    /* renamed from: P */
    public static void m24387P(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("outgoing_us_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("outgoing_in_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("outgoing_irq_unkonwn");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("outgoing_egy_unkonwn");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("outgoing_idn_unkonwn");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("outgoing_gbr_unkonwn");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("outgoing_aus_unkonwn");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("outgoing_deu_unkonwn");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("outgoing_bra_unkonwn");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("outgoing_nga_unkonwn");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("outgoing_tur_unkonwn");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("outgoing_pak_unkonwn");
        }
        if (iso_code != null && iso_code.equals("BD/BGD")) {
            C3810q.m24071b().m24070c("outgoing_bgd_unkonwn");
        }
        if (iso_code != null && iso_code.equals("KE/KEN")) {
            C3810q.m24071b().m24070c("outgoing_ken_unkonwn");
        }
        if (iso_code != null && iso_code.equals("CL/CHL")) {
            C3810q.m24071b().m24070c("outgoing_chl_unkonwn");
        }
        if (iso_code != null && iso_code.equals("IT/ITA")) {
            C3810q.m24071b().m24070c("outgoing_ita_unkonwn");
        }
        if (iso_code != null && iso_code.equals("ZA/ZAF")) {
            C3810q.m24071b().m24070c("outgoing_zaf_unkonwn");
        }
        if (iso_code != null && iso_code.equals("PH/PHL")) {
            C3810q.m24071b().m24070c("outgoing_phl_unkonwn");
        }
        if (iso_code != null && iso_code.equals("RU/RUS")) {
            C3810q.m24071b().m24070c("outgoing_rus_unkonwn");
        }
        if (iso_code == null || !iso_code.equals("ET/ETH")) {
            return;
        }
        C3810q.m24071b().m24070c("outgoing_eth_unkonwn");
    }

    /* renamed from: a */
    public static void m24386a(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code == null || !"US/USA".equals(iso_code)) {
            return;
        }
        C3810q.m24071b().m24070c(C3744g1.f11949w);
    }

    /* renamed from: b */
    public static void m24385b(Context context) {
        try {
            if (C3742g0.m24356a().equals("samsung") && Build.VERSION.SDK_INT >= 24) {
                C3810q.m24071b().m24070c("is_samsung_device");
                if (C3767h1.m24232o0(context, "com.samsung.android.sm_cn")) {
                    C3810q.m24071b().m24070c("is_has_smart_manager_cn");
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "sm_cn");
                    }
                } else if (C3767h1.m24232o0(context, "com.samsung.android.sm")) {
                    C3810q.m24071b().m24070c("is_has_smart_manager");
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("tony", "sm");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m24384c(Context context) {
        C3810q.m24071b().m24070c("search_offline_parser_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("search_offline_parser_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_offline_parser_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_offline_parser_iq_new");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("search_offline_parser_eg_new");
    }

    /* renamed from: d */
    public static void m24383d(Context context) {
        C3810q.m24071b().m24070c("search_offline_parser_loc_success_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("search_offline_parser_loc_success_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_offline_parser_loc_success_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_offline_parser_loc_success_iq_new");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("search_offline_parser_loc_success_eg_new");
    }

    /* renamed from: e */
    public static void m24382e(Context context) {
        C3810q.m24071b().m24070c("search_offline_parser_success_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("search_offline_parser_success_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_offline_parser_success_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_offline_parser_success_iq_new");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("search_offline_parser_success_eg_new");
    }

    /* renamed from: f */
    public static void m24381f(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("incoming_us_contact");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("incoming_in_contact");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("incoming_irq_contact");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("incoming_egy_contact");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("incoming_idn_contact");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("incoming_gbr_contact");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("incoming_aus_contact");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("incoming_deu_contact");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("incoming_bra_contact");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("incoming_nga_contact");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("incoming_tur_contact");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("incoming_pak_contact");
        }
        if (iso_code != null && iso_code.equals("BD/BGD")) {
            C3810q.m24071b().m24070c("incoming_bgd_contact");
        }
        if (iso_code != null && iso_code.equals("KE/KEN")) {
            C3810q.m24071b().m24070c("incoming_ken_contact");
        }
        if (iso_code != null && iso_code.equals("CL/CHL")) {
            C3810q.m24071b().m24070c("incoming_chl_contact");
        }
        if (iso_code != null && iso_code.equals("IT/ITA")) {
            C3810q.m24071b().m24070c("incoming_ita_contact");
        }
        if (iso_code != null && iso_code.equals("ZA/ZAF")) {
            C3810q.m24071b().m24070c("incoming_zaf_contact");
        }
        if (iso_code != null && iso_code.equals("PH/PHL")) {
            C3810q.m24071b().m24070c("incoming_phl_contact");
        }
        if (iso_code != null && iso_code.equals("RU/RUS")) {
            C3810q.m24071b().m24070c("incoming_rus_contact");
        }
        if (iso_code == null || !iso_code.equals("ET/ETH")) {
            return;
        }
        C3810q.m24071b().m24070c("incoming_eth_contact");
    }

    /* renamed from: g */
    public static void m24380g(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("outgoing_us_contact");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("outgoing_in_contact");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("outgoing_irq_contact");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("outgoing_egy_contact");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("outgoing_idn_contact");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("outgoing_gbr_contact");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("outgoing_aus_contact");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("outgoing_deu_contact");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("outgoing_bra_contact");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("outgoing_nga_contact");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("outgoing_tur_contact");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("outgoing_pak_contact");
        }
        if (iso_code != null && iso_code.equals("BD/BGD")) {
            C3810q.m24071b().m24070c("outgoing_bgd_contact");
        }
        if (iso_code != null && iso_code.equals("KE/KEN")) {
            C3810q.m24071b().m24070c("outgoing_ken_contact");
        }
        if (iso_code != null && iso_code.equals("CL/CHL")) {
            C3810q.m24071b().m24070c("outgoing_chl_contact");
        }
        if (iso_code != null && iso_code.equals("IT/ITA")) {
            C3810q.m24071b().m24070c("outgoing_ita_contact");
        }
        if (iso_code != null && iso_code.equals("ZA/ZAF")) {
            C3810q.m24071b().m24070c("outgoing_zaf_contact");
        }
        if (iso_code != null && iso_code.equals("PH/PHL")) {
            C3810q.m24071b().m24070c("outgoing_phl_contact");
        }
        if (iso_code != null && iso_code.equals("RU/RUS")) {
            C3810q.m24071b().m24070c("outgoing_rus_contact");
        }
        if (iso_code == null || !iso_code.equals("ET/ETH")) {
            return;
        }
        C3810q.m24071b().m24070c("outgoing_eth_contact");
    }

    /* renamed from: h */
    public static void m24379h(Context context) {
        String country;
        String state;
        ParserIpBean m26410b = C2921c.m26411a().m26410b();
        if (m26410b == null || m26410b.getCountry() == null || "".equals(m26410b.getCountry()) || (country = m26410b.getCountry()) == null || !"in".equals(country) || (state = m26410b.getState()) == null || "".equals(state)) {
            return;
        }
        boolean z = true;
        switch (state.hashCode()) {
            case 3208:
                if (state.equals("dl")) {
                    z = false;
                    break;
                }
                break;
            case 3414:
                if (state.equals("ka")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (state.equals("mh")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                C3810q.m24071b().m24070c("download_offline_db_dl_new");
                return;
            case true:
                C3810q.m24071b().m24070c("download_offline_db_ka_new");
                return;
            case true:
                C3810q.m24071b().m24070c("download_offline_db_mh_new");
                return;
            default:
                return;
        }
    }

    /* renamed from: i */
    public static void m24378i(Context context) {
        C3810q.m24071b().m24070c("download_offline_db_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("download_offline_db_new_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("download_offline_db_new_in");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("download_offline_db_new_iq");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("download_offline_db_new_eg");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("download_offline_db_new_id");
    }

    /* renamed from: j */
    public static void m24377j(Context context) {
        C3810q.m24071b().m24070c("download_offline_db_ok_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_iq_new");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_eg_new");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("download_offline_db_ok_id_new");
    }

    /* renamed from: k */
    public static void m24376k(Context context) {
        C3810q.m24071b().m24070c("download_offline_db_ok_first_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_us_first_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_in_first_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_iq_first_new");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("download_offline_db_ok_eg_first_new");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("download_offline_db_ok_id_first_new");
    }

    /* renamed from: l */
    public static void m24375l(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("download_offline_parser_new_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("download_offline_parser_new_in");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("download_offline_parser_new_iq");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("download_offline_parser_new_eg");
    }

    /* renamed from: m */
    public static void m24374m(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("download_offline_parser_ok_us_new");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("download_offline_parser_ok_in_new");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("download_offline_parser_ok_iq_new");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("download_offline_parser_ok_eg_new");
    }

    /* renamed from: n */
    public static void m24373n(Context context) {
        String country;
        String state;
        ParserIpBean m26410b = C2921c.m26411a().m26410b();
        if (m26410b == null || m26410b.getCountry() == null || "".equals(m26410b.getCountry()) || (country = m26410b.getCountry()) == null || !"in".equals(country) || (state = m26410b.getState()) == null || "".equals(state)) {
            return;
        }
        boolean z = true;
        switch (state.hashCode()) {
            case 3208:
                if (state.equals("dl")) {
                    z = false;
                    break;
                }
                break;
            case 3414:
                if (state.equals("ka")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (state.equals("mh")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                C3810q.m24071b().m24070c("download_offline_db_ok_dl_new");
                return;
            case true:
                C3810q.m24071b().m24070c("download_offline_db_ok_ka_new");
                return;
            case true:
                C3810q.m24071b().m24070c("download_offline_db_ok_mh_new");
                return;
            default:
                return;
        }
    }

    /* renamed from: o */
    public static void m24372o(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("first_enter_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("first_enter_in");
            if (C3725e.m24415d(context)) {
                C3810q.m24071b().m24070c("first_enter_in_wifi");
            }
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("first_enter_idn");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("first_enter_irq");
            if (C3725e.m24415d(context)) {
                C3810q.m24071b().m24070c("first_enter_irq_wifi");
            }
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("first_enter_egy");
        if (!C3725e.m24415d(context)) {
            return;
        }
        C3810q.m24071b().m24070c("first_enter_egy_wifi");
    }

    /* renamed from: p */
    public static void m24371p(Context context) {
        C3810q.m24071b().m24070c("is_numbergeographical_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("is_numbergeographical_us_new");
        }
        if (iso_code == null || !iso_code.equals("IN/IND")) {
            return;
        }
        C3810q.m24071b().m24070c("is_numbergeographical_in_new");
    }

    /* renamed from: q */
    public static void m24370q(Context context) {
        C3810q.m24071b().m24070c("is_numbergeographical_searchok");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("is_numbergeographical_searchok_us");
        }
        if (iso_code == null || !iso_code.equals("IN/IND")) {
            return;
        }
        C3810q.m24071b().m24070c("is_numbergeographical_searchok_in");
    }

    /* renamed from: r */
    public static void m24369r(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code == null || !iso_code.equals("US/USA")) {
            return;
        }
        C3810q.m24071b().m24070c("is_spam_answered");
    }

    /* renamed from: s */
    public static void m24368s(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code == null || !iso_code.equals("US/USA")) {
            return;
        }
        C3810q.m24071b().m24070c("is_spam_content_show");
    }

    /* renamed from: t */
    public static void m24367t(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_is_connected");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_is_connected");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_is_connected");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_is_connected");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_is_connected");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_is_connected");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_is_connected");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_is_connected");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_is_connected");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_is_connected");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_is_connected");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_is_connected");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_is_connected");
    }

    /* renamed from: u */
    public static void m24366u(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("us_not_connected");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("in_not_connected");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("irq_not_connected");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("egy_not_connected");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("idn_not_connected");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("gbr_not_connected");
        }
        if (iso_code != null && iso_code.equals("AU/AUS")) {
            C3810q.m24071b().m24070c("aus_not_connected");
        }
        if (iso_code != null && iso_code.equals("DE/DEU")) {
            C3810q.m24071b().m24070c("deu_not_connected");
        }
        if (iso_code != null && iso_code.equals("BR/BRA")) {
            C3810q.m24071b().m24070c("bra_not_connected");
        }
        if (iso_code != null && iso_code.equals("NG/NGA")) {
            C3810q.m24071b().m24070c("nga_not_connected");
        }
        if (iso_code != null && iso_code.equals("TR/TUR")) {
            C3810q.m24071b().m24070c("tur_not_connected");
        }
        if (iso_code != null && iso_code.equals("PK/PAK")) {
            C3810q.m24071b().m24070c("pak_not_connected");
        }
        if (iso_code == null || !iso_code.equals("BD/BGD")) {
            return;
        }
        C3810q.m24071b().m24070c("bgd_not_connected");
    }

    /* renamed from: v */
    public static void m24365v(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("one_block_show_in");
        }
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("one_block_show_us");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("one_block_show_eg");
        }
        if (iso_code != null && iso_code.equals("ID/IDN")) {
            C3810q.m24071b().m24070c("one_block_show_id");
        }
        if (iso_code != null && iso_code.equals("GB/GBR")) {
            C3810q.m24071b().m24070c("one_block_show_gb");
        }
        if (iso_code == null || !iso_code.equals("IQ/IRQ")) {
            return;
        }
        C3810q.m24071b().m24070c("one_block_show_iq");
    }

    /* renamed from: w */
    public static void m24364w(Context context) {
        String country;
        String state;
        ParserIpBean m26410b = C2921c.m26411a().m26410b();
        if (m26410b == null || m26410b.getCountry() == null || "".equals(m26410b.getCountry()) || (country = m26410b.getCountry()) == null || !"in".equals(country) || (state = m26410b.getState()) == null || "".equals(state)) {
            return;
        }
        boolean z = true;
        switch (state.hashCode()) {
            case 3208:
                if (state.equals("dl")) {
                    z = false;
                    break;
                }
                break;
            case 3414:
                if (state.equals("ka")) {
                    z = true;
                    break;
                }
                break;
            case 3483:
                if (state.equals("mh")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                C3810q.m24071b().m24070c("request_offline_db_dl_new");
                return;
            case true:
                C3810q.m24071b().m24070c("request_offline_db_ka_new");
                return;
            case true:
                C3810q.m24071b().m24070c("request_offline_db_mh_new");
                return;
            default:
                return;
        }
    }

    /* renamed from: x */
    public static void m24363x(Context context) {
        C3810q.m24071b().m24070c("request_offline_db_new");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("request_offline_db_new_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("request_offline_db_new_in");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("request_offline_db_new_iq");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("request_offline_db_new_eg");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("request_offline_db_new_id");
    }

    /* renamed from: y */
    public static void m24362y(Context context) {
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C3810q.m24071b().m24070c("request_offline_parser_new_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("request_offline_parser_new_in");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("request_offline_parser_new_iq");
        }
        if (iso_code == null || !iso_code.equals("EG/EGY")) {
            return;
        }
        C3810q.m24071b().m24070c("request_offline_parser_new_eg");
    }

    /* renamed from: z */
    public static void m24361z(Context context) {
        C3810q.m24071b().m24070c("search_buyu_count");
        String iso_code = C3806p.m24083d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C3810q.m24071b().m24070c("search_buyu_count_in");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C3810q.m24071b().m24070c("search_buyu_count_eg");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C3810q.m24071b().m24070c("search_buyu_count_iq");
        }
        if (iso_code == null || !iso_code.equals("ID/IDN")) {
            return;
        }
        C3810q.m24071b().m24070c("search_buyu_count_id");
    }
}
