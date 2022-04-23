package com.callerid.block.util;

import android.content.Context;
import com.callerid.block.bean.ParserIpBean;
import com.callerid.block.p055j.C1075b;
/* renamed from: com.callerid.block.util.z */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/z.class */
public class C1236z {
    /* renamed from: a */
    public static void m9490a(Context context) {
        String country;
        String state;
        C1186k c;
        String str;
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry()) && (country = b.getCountry()) != null && "in".equals(country) && (state = b.getState()) != null && !"".equals(state)) {
            state.hashCode();
            char c2 = 65535;
            switch (state.hashCode()) {
                case 3208:
                    if (state.equals("dl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3414:
                    if (state.equals("ka")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3483:
                    if (state.equals("mh")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    c = C1186k.m9816c();
                    str = "download_offline_db_dl";
                    break;
                case 1:
                    c = C1186k.m9816c();
                    str = "download_offline_db_ka";
                    break;
                case 2:
                    c = C1186k.m9816c();
                    str = "download_offline_db_mh";
                    break;
                default:
                    return;
            }
            c.m9812g(str);
        }
    }

    /* renamed from: b */
    public static void m9489b(Context context) {
        C1186k.m9816c().m9812g("download_offline_db");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("download_offline_db_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("download_offline_db_in");
        }
    }

    /* renamed from: c */
    public static void m9488c(Context context) {
        C1186k.m9816c().m9812g("download_offline_db_ok");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("download_offline_db_ok_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("download_offline_db_ok_in");
        }
        if (iso_code != null && iso_code.equals("CA/CAN")) {
            C1186k.m9816c().m9812g("download_offline_db_ok_ca");
        }
    }

    /* renamed from: d */
    public static void m9487d(Context context) {
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("download_offline_parser_ok_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("download_offline_parser_ok_in");
        }
        if (iso_code != null && iso_code.equals("CA/CAN")) {
            C1186k.m9816c().m9812g("download_offline_parser_ok_ca");
        }
    }

    /* renamed from: e */
    public static void m9486e(Context context) {
        String country;
        String state;
        C1186k c;
        String str;
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry()) && (country = b.getCountry()) != null && "in".equals(country) && (state = b.getState()) != null && !"".equals(state)) {
            state.hashCode();
            char c2 = 65535;
            switch (state.hashCode()) {
                case 3208:
                    if (state.equals("dl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3414:
                    if (state.equals("ka")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3483:
                    if (state.equals("mh")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    c = C1186k.m9816c();
                    str = "download_offline_db_ok_dl";
                    break;
                case 1:
                    c = C1186k.m9816c();
                    str = "download_offline_db_ok_ka";
                    break;
                case 2:
                    c = C1186k.m9816c();
                    str = "download_offline_db_ok_mh";
                    break;
                default:
                    return;
            }
            c.m9812g(str);
        }
    }

    /* renamed from: f */
    public static void m9485f(Context context) {
        C1186k.m9816c().m9812g("is_numbergeographical");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("is_numbergeographical_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("is_numbergeographical_in");
        }
        if (iso_code != null && iso_code.equals("CA/CAN")) {
            C1186k.m9816c().m9812g("is_numbergeographical_ca");
        }
    }

    /* renamed from: g */
    public static void m9484g(Context context) {
        C1186k.m9816c().m9812g("is_numbergeographical_searchok");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("is_numbergeographical_searchok_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("is_numbergeographical_searchok_in");
        }
        if (iso_code != null && iso_code.equals("CA/CAN")) {
            C1186k.m9816c().m9812g("is_numbergeographical_searchok_ca");
        }
    }

    /* renamed from: h */
    public static void m9483h(Context context) {
        C1186k.m9816c().m9812g("locacion_serrch_ok");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("locacion_serrch_ok_in");
        }
    }

    /* renamed from: i */
    public static void m9482i(Context context) {
        String country;
        String state;
        C1186k c;
        String str;
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry()) && (country = b.getCountry()) != null && "in".equals(country) && (state = b.getState()) != null && !"".equals(state)) {
            state.hashCode();
            char c2 = 65535;
            switch (state.hashCode()) {
                case 3208:
                    if (state.equals("dl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3414:
                    if (state.equals("ka")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3483:
                    if (state.equals("mh")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    c = C1186k.m9816c();
                    str = "request_offline_db_dl";
                    break;
                case 1:
                    c = C1186k.m9816c();
                    str = "request_offline_db_ka";
                    break;
                case 2:
                    c = C1186k.m9816c();
                    str = "request_offline_db_mh";
                    break;
                default:
                    return;
            }
            c.m9812g(str);
        }
    }

    /* renamed from: j */
    public static void m9481j(Context context) {
        C1186k.m9816c().m9812g("request_offline_db");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("request_offline_db_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("request_offline_db_in");
        }
    }

    /* renamed from: k */
    public static void m9480k(Context context) {
        C1186k.m9816c().m9812g("search_buyu_count");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("search_buyu_count_in");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C1186k.m9816c().m9812g("search_buyu_count_eg");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C1186k.m9816c().m9812g("search_buyu_count_iq");
        }
    }

    /* renamed from: l */
    public static void m9479l(Context context) {
        C1186k.m9816c().m9812g("search_buyu_count_ok");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("search_buyu_count_in_ok");
        }
        if (iso_code != null && iso_code.equals("EG/EGY")) {
            C1186k.m9816c().m9812g("search_buyu_count_eg_ok");
        }
        if (iso_code != null && iso_code.equals("IQ/IRQ")) {
            C1186k.m9816c().m9812g("search_buyu_count_iq_ok");
        }
    }

    /* renamed from: m */
    public static void m9478m(Context context) {
        String country;
        String state;
        C1186k c;
        String str;
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry()) && (country = b.getCountry()) != null && "in".equals(country) && (state = b.getState()) != null && !"".equals(state)) {
            state.hashCode();
            char c2 = 65535;
            switch (state.hashCode()) {
                case 3208:
                    if (state.equals("dl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3414:
                    if (state.equals("ka")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3483:
                    if (state.equals("mh")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    c = C1186k.m9816c();
                    str = "search_offline_db_dl";
                    break;
                case 1:
                    c = C1186k.m9816c();
                    str = "search_offline_db_ka";
                    break;
                case 2:
                    c = C1186k.m9816c();
                    str = "search_offline_db_mh";
                    break;
                default:
                    return;
            }
            c.m9812g(str);
        }
    }

    /* renamed from: n */
    public static void m9477n(Context context) {
        String country;
        String state;
        C1186k c;
        String str;
        ParserIpBean b = C1075b.m10216a().m10215b();
        if (b != null && b.getCountry() != null && !"".equals(b.getCountry()) && (country = b.getCountry()) != null && "in".equals(country) && (state = b.getState()) != null && !"".equals(state)) {
            state.hashCode();
            char c2 = 65535;
            switch (state.hashCode()) {
                case 3208:
                    if (state.equals("dl")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3414:
                    if (state.equals("ka")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3483:
                    if (state.equals("mh")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    c = C1186k.m9816c();
                    str = "search_offline_db_dl_ok";
                    break;
                case 1:
                    c = C1186k.m9816c();
                    str = "search_offline_db_ka_ok";
                    break;
                case 2:
                    c = C1186k.m9816c();
                    str = "search_offline_db_mh_ok";
                    break;
                default:
                    return;
            }
            c.m9812g(str);
        }
    }

    /* renamed from: o */
    public static void m9476o(Context context) {
        C1186k.m9816c().m9812g("incoming_unkonwn_answer_all");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("incoming_unkonwn_answer");
        }
    }

    /* renamed from: p */
    public static void m9475p(Context context) {
        C1186k.m9816c().m9812g("unknown_incoming_no_net");
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("US/USA")) {
            C1186k.m9816c().m9812g("unknown_incoming_no_net_us");
        }
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("unknown_incoming_no_net_in");
        }
        if (iso_code != null && iso_code.equals("CA/CAN")) {
            C1186k.m9816c().m9812g("unknown_incoming_no_net_ca");
        }
    }

    /* renamed from: q */
    public static void m9474q(Context context) {
        String iso_code = C1184j.m9826d(context).getIso_code();
        if (iso_code != null && iso_code.equals("IN/IND")) {
            C1186k.m9816c().m9812g("incoming_unkonwn_missed");
        }
    }
}
