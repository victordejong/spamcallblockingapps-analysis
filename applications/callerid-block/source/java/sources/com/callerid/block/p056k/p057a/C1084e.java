package com.callerid.block.p056k.p057a;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.view.ViewGroup;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.f.a;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p033a.C0877b;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.p038f.AbstractC0952b;
import com.callerid.block.p055j.AsyncTaskC1078d;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.search.EZSearchResult;
import com.callerid.block.service.OfflineDbJobService;
import com.callerid.block.service.OfflineJobService;
import com.callerid.block.util.C1177f0;
import com.callerid.block.util.C1184j;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.callerid.block.util.C1236z;
import com.phone.libphone.C2800i;
import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.p087l.C2806a;
import com.phone.libphone.p088m.C2807a;
import java.util.List;
/* renamed from: com.callerid.block.k.a.e */
/* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e.class */
public class C1084e {

    /* renamed from: com.callerid.block.k.a.e$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$a.class */
    public static /* synthetic */ class C1085a {

        /* renamed from: a */
        static final /* synthetic */ int[] f4566a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberUtil.PhoneNumberType.values().length];
            f4566a = iArr;
            try {
                iArr[PhoneNumberUtil.PhoneNumberType.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4566a[PhoneNumberUtil.PhoneNumberType.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4566a[PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4566a[PhoneNumberUtil.PhoneNumberType.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4566a[PhoneNumberUtil.PhoneNumberType.VOIP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.callerid.block.k.a.e$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$b.class */
    private static class AsyncTaskC1086b extends AsyncTask<String, Void, EZSearchResult> {

        /* renamed from: a */
        private AbstractC1091f f4567a;

        public AsyncTaskC1086b(AbstractC1091f abstractC1091f) {
            this.f4567a = abstractC1091f;
        }

        /* renamed from: a */
        public EZSearchResult doInBackground(String... strArr) {
            String str = strArr[0];
            String str2 = strArr[1];
            try {
                EZSearchContacts m10468d = C0947d.m10470b().m10468d(str);
                if (m10468d != null) {
                    EZSearchResult eZSearchResult = new EZSearchResult();
                    String type_label = m10468d.getType_label();
                    eZSearchResult.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), type_label));
                    String type = m10468d.getType();
                    if (type != null && ("Mobile".equals(type) || "Fixed line".equals(type))) {
                        eZSearchResult.setType(C1216t0.m9554w(EZCallApplication.m10163c(), type));
                    }
                    String name = m10468d.getName();
                    if (name == null || "".equals(name)) {
                        eZSearchResult.setName("");
                    } else {
                        eZSearchResult.setName(name);
                    }
                    eZSearchResult.setNumber(m10468d.getOld_tel_number());
                    String old_tel_number = m10468d.getOld_tel_number();
                    if (old_tel_number != null && !"".equals(old_tel_number)) {
                        eZSearchResult.setOld_tel_number(old_tel_number);
                    }
                    String operator = m10468d.getOperator();
                    if (operator != null && !"".equals(operator)) {
                        eZSearchResult.setOperator(operator);
                    }
                    String format_tel_number = m10468d.getFormat_tel_number();
                    if (format_tel_number != null && !"".equals(format_tel_number)) {
                        eZSearchResult.setFormat_tel_number(format_tel_number);
                    }
                    eZSearchResult.setTel_number(m10468d.getTel_number());
                    eZSearchResult.setT_p(m10468d.getT_p());
                    String avatar = m10468d.getAvatar();
                    if (avatar != null && !"".equals(avatar)) {
                        eZSearchResult.setIcon(avatar);
                    }
                    String report_count = m10468d.getReport_count();
                    int parseInt = ("".equals(report_count) || report_count == null) ? 0 : Integer.parseInt(report_count);
                    if (type_label == null || (parseInt <= 0 && "".equals(type_label))) {
                        eZSearchResult.setIsSpam(false);
                    } else {
                        eZSearchResult.setIsSpam(true);
                    }
                    String belong_area = m10468d.getBelong_area();
                    if (belong_area == null || "".equals(belong_area)) {
                        eZSearchResult.setLocation("");
                    } else {
                        eZSearchResult.setLocation(belong_area);
                    }
                    String address = m10468d.getAddress();
                    if (address != null && !"".equals(address)) {
                        eZSearchResult.setLocation(address);
                    }
                    eZSearchResult.setComplaint_times(m10468d.getReport_count());
                    String m9567j = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                    if (m9567j != null && !"".equals(m9567j)) {
                        eZSearchResult.setContact(true);
                        eZSearchResult.setName(m9567j);
                    }
                    return eZSearchResult;
                }
                C2806a m10185a = C1084e.m10185a(str, str2);
                if (m10185a == null) {
                    EZSearchResult eZSearchResult2 = null;
                    if (str2 != null) {
                        eZSearchResult2 = null;
                        if (!"".equals(str2)) {
                            String m9579d = C1216t0.m9579d(EZCallApplication.m10163c(), str, str2);
                            eZSearchResult2 = null;
                            if (m9579d != null) {
                                eZSearchResult2 = null;
                                if (!"".equals(m9579d)) {
                                    if (C1227w.f5084a) {
                                        C1227w.m9527a("wbb", "离线数据库search_number: " + m9579d);
                                    }
                                    eZSearchResult2 = null;
                                    if (C2800i.m1644c()) {
                                        if (C1227w.f5084a) {
                                            C1227w.m9527a("wbb", "离线数据库 isHaveOfflineDb");
                                        }
                                        C1186k.m9816c().m9812g("number_search_oflline_db");
                                        EZSearchContacts m9849a = new C1177f0(EZCallApplication.m10163c()).m9849a(m9579d, str);
                                        eZSearchResult2 = null;
                                        if (m9849a != null) {
                                            C1186k.m9816c().m9812g("number_search_oflline_db_success");
                                            eZSearchResult2 = new EZSearchResult();
                                            eZSearchResult2.setNumber(str);
                                            eZSearchResult2.setType(C1216t0.m9554w(EZCallApplication.m10163c(), m9849a.getType()));
                                            eZSearchResult2.setLocation(m9849a.getBelong_area());
                                            eZSearchResult2.setOperator(m9849a.getOperator());
                                            eZSearchResult2.setOld_tel_number(m9849a.getOld_tel_number());
                                            eZSearchResult2.setTel_number(m9849a.getTel_number());
                                            eZSearchResult2.setName(m9849a.getName());
                                            eZSearchResult2.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), m9849a.getType_label()));
                                            eZSearchResult2.setComplaint_times(m9849a.getReport_count());
                                            String m9567j2 = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                                            if (m9567j2 != null && !"".equals(m9567j2)) {
                                                eZSearchResult2.setContact(true);
                                                eZSearchResult2.setName(m9567j2);
                                            }
                                            C0947d.m10470b().m10469c(m9849a);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return eZSearchResult2;
                }
                EZSearchResult eZSearchResult3 = new EZSearchResult();
                eZSearchResult3.setType(C1216t0.m9554w(EZCallApplication.m10163c(), m10185a.m1630f()));
                eZSearchResult3.setFormat_tel_number(m10185a.m1634b());
                eZSearchResult3.setLocation(m10185a.m1632d());
                eZSearchResult3.setOperator(m10185a.m1635a());
                eZSearchResult3.setNumber(str);
                String m1633c = m10185a.m1633c();
                String str3 = m1633c;
                if (m1633c != null) {
                    str3 = m1633c;
                    if (m1633c.contains("+")) {
                        str3 = m1633c.replace("+", "");
                    }
                }
                if (str2 != null && !"".equals(str2)) {
                    if (str3 == null || "".equals(str3)) {
                        str3 = C1216t0.m9579d(EZCallApplication.m10163c(), str, str2);
                    }
                    if (str3 != null && !"".equals(str3)) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "离线数据库search_number: " + str3);
                        }
                        if (C2800i.m1644c()) {
                            if (C1227w.f5084a) {
                                C1227w.m9527a("wbb", "离线数据库 isHaveOfflineDb");
                            }
                            C1186k.m9816c().m9812g("number_search_oflline_db");
                            EZSearchContacts m9849a2 = new C1177f0(EZCallApplication.m10163c()).m9849a(str3, str);
                            if (m9849a2 != null) {
                                C1186k.m9816c().m9812g("number_search_oflline_db_success");
                                eZSearchResult3.setType(C1216t0.m9554w(EZCallApplication.m10163c(), m9849a2.getType()));
                                eZSearchResult3.setLocation(m9849a2.getBelong_area());
                                eZSearchResult3.setOperator(m9849a2.getOperator());
                                eZSearchResult3.setOld_tel_number(m9849a2.getOld_tel_number());
                                eZSearchResult3.setTel_number(m9849a2.getTel_number());
                                eZSearchResult3.setName(m9849a2.getName());
                                eZSearchResult3.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), m9849a2.getType_label()));
                                eZSearchResult3.setComplaint_times(m9849a2.getReport_count());
                                String m9567j3 = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                                if (m9567j3 != null && !"".equals(m9567j3)) {
                                    eZSearchResult3.setContact(true);
                                    eZSearchResult3.setName(m9567j3);
                                }
                                C0947d.m10470b().m10469c(m9849a2);
                            }
                        }
                    }
                }
                return eZSearchResult3;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(EZSearchResult eZSearchResult) {
            super.onPostExecute(eZSearchResult);
            this.f4567a.m10166a(eZSearchResult);
        }
    }

    /* renamed from: com.callerid.block.k.a.e$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$c.class */
    private static class AsyncTaskC1087c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1081c f4568a;

        public AsyncTaskC1087c(AbstractC1081c abstractC1081c) {
            this.f4568a = abstractC1081c;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = strArr[0];
            try {
                C2806a m10185a = C1084e.m10185a(str, strArr[1]);
                if (m10185a == null) {
                    return null;
                }
                String m1634b = m10185a.m1634b();
                if (m1634b != null && !"".equals(m1634b)) {
                    EZSearchContacts m10468d = C0947d.m10470b().m10468d(str);
                    if (m10468d == null) {
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        eZSearchContacts.setOld_tel_number(str);
                        eZSearchContacts.setFormat_tel_number(m1634b);
                        C0947d.m10470b().m10469c(eZSearchContacts);
                    } else {
                        String format_tel_number = m10468d.getFormat_tel_number();
                        if (format_tel_number == null || "".equals(format_tel_number)) {
                            m10468d.setFormat_tel_number(m1634b);
                            C0947d.m10470b().m10466f(m10468d, "format_tel_number");
                        }
                    }
                }
                return m1634b;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4568a.m10193a(str);
        }
    }

    /* renamed from: com.callerid.block.k.a.e$d */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$d.class */
    private static class AsyncTaskC1088d extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC1079a f4569a;

        /* renamed from: b */
        private EZSearchContacts f4570b;

        /* renamed from: c */
        private String f4571c = null;

        public AsyncTaskC1088d(AbstractC1079a abstractC1079a) {
            this.f4569a = abstractC1079a;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            C1186k c1186k;
            String str2 = strArr[0];
            String country_code = C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code();
            try {
                this.f4570b = C0947d.m10470b().m10468d(str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f4570b != null) {
                if (!C1227w.f5084a) {
                    return "db";
                }
                C1227w.m9527a("wbb", "searchContact: 本地库查询");
                return "db";
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "searchContact: 离线查询");
            }
            if (!C2800i.m1645b()) {
                return "search";
            }
            C1186k.m9816c().m9812g("search_offline_parser_new");
            String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
            if (iso_code != null && iso_code.equals("US/USA")) {
                C1186k.m9816c().m9812g("us_search_parser_new");
            }
            if (iso_code != null && iso_code.equals("IN/IND")) {
                C1186k.m9816c().m9812g("in_search_parser_new");
            }
            if (iso_code != null && iso_code.equals("CA/CAN")) {
                C1186k.m9816c().m9812g("can_search_parser_new");
            }
            C2806a m10185a = C1084e.m10185a(str2, country_code);
            if (m10185a == null) {
                return "search";
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "mode:" + m10185a.toString());
            }
            if (m10185a.m1628h()) {
                C1236z.m9485f(EZCallApplication.m10163c());
                if (m10185a.m1629g()) {
                    C1236z.m9484g(EZCallApplication.m10163c());
                }
            }
            if (m10185a.m1631e() != null) {
                int i = C1085a.f4566a[m10185a.m1631e().ordinal()];
                if (i == 1) {
                    c1186k = C1186k.m9816c();
                    str = "number_type_mobile";
                } else if (i == 2) {
                    c1186k = C1186k.m9816c();
                    str = "number_type_fixed_line";
                } else if (i == 3) {
                    c1186k = C1186k.m9816c();
                    str = "number_type_fixed_line_or_mobile";
                } else if (i == 4) {
                    c1186k = C1186k.m9816c();
                    str = "number_type_toll_free";
                } else if (i == 5) {
                    c1186k = C1186k.m9816c();
                    str = "number_type_voip";
                }
                c1186k.m9812g(str);
            }
            C1186k.m9816c().m9812g("search_offline_parser_success");
            if (iso_code != null && iso_code.equals("US/USA")) {
                C1186k.m9816c().m9812g("us_search_parser_ok");
            }
            if (iso_code != null && iso_code.equals("IN/IND")) {
                C1186k.m9816c().m9812g("in_search_parser_ok");
            }
            if (iso_code != null && iso_code.equals("CA/CAN")) {
                C1186k.m9816c().m9812g("can_search_parser_ok");
            }
            if (m10185a.m1632d() != null && !"".equals(m10185a.m1632d())) {
                C1186k.m9816c().m9812g("search_offline_parser_loc_city_success");
                if (iso_code != null && iso_code.equals("US/USA")) {
                    C1186k.m9816c().m9812g("us_search_parser_loc_city_ok");
                }
                if (iso_code != null && iso_code.equals("IN/IND")) {
                    C1186k.m9816c().m9812g("in_search_parser_loc_city_ok");
                }
                if (iso_code != null && iso_code.equals("CA/CAN")) {
                    C1186k.m9816c().m9812g("can_search_parser_loc_city_ok");
                }
            }
            if (m10185a.m1629g()) {
                C1186k.m9816c().m9812g("search_offline_parser_loc_success");
                if (iso_code != null && iso_code.equals("US/USA")) {
                    C1186k.m9816c().m9812g("us_search_parser_loc_ok");
                }
                if (iso_code != null && iso_code.equals("IN/IND")) {
                    C1186k.m9816c().m9812g("in_search_parser_loc_ok");
                }
                if (iso_code != null && iso_code.equals("CA/CAN")) {
                    C1186k.m9816c().m9812g("can_search_parser_loc_ok");
                }
            }
            EZSearchContacts eZSearchContacts = new EZSearchContacts();
            this.f4570b = eZSearchContacts;
            eZSearchContacts.setBelong_area(m10185a.m1632d());
            this.f4570b.setType(m10185a.m1630f());
            this.f4570b.setFormat_tel_number(m10185a.m1634b());
            this.f4570b.setOperator(m10185a.m1635a());
            String m1633c = m10185a.m1633c();
            this.f4571c = m1633c;
            if (m1633c == null || !m1633c.contains("+")) {
                return "search";
            }
            this.f4571c = this.f4571c.replace("+", "");
            return "search";
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("search".equals(str)) {
                this.f4569a.m10197b(this.f4570b, this.f4571c);
            } else if (!"db".equals(str)) {
            } else {
                this.f4569a.m10198a(this.f4570b);
            }
        }
    }

    /* renamed from: com.callerid.block.k.a.e$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$e.class */
    private static class AsyncTaskC1089e extends AsyncTask<String, Void, CallLogBean> {

        /* renamed from: com.callerid.block.k.a.e$e$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$e$a.class */
        public class RunnableC1090a implements Runnable {
            RunnableC1090a(AsyncTaskC1089e asyncTaskC1089e) {
            }

            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = AbstractC0952b.f4315a;
                if (viewGroup == null || !viewGroup.isShown()) {
                    return;
                }
                a.n(EZCallApplication.m10163c());
            }
        }

        private AsyncTaskC1089e() {
        }

        /* synthetic */ AsyncTaskC1089e(C1085a c1085a) {
            this();
        }

        /* renamed from: a */
        public CallLogBean doInBackground(String... strArr) {
            CallLogBean callLogBean;
            Exception e;
            String str = strArr[0];
            try {
                String country_code = C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code();
                EZSearchContacts m10468d = C0947d.m10470b().m10468d(str);
                if (m10468d == null) {
                    C2806a m10185a = C1084e.m10185a(str, country_code);
                    callLogBean = null;
                    if (m10185a != null) {
                        callLogBean = new CallLogBean();
                        try {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), m10185a.m1630f()));
                            callLogBean.m10056h0(m10185a.m1634b());
                            callLogBean.m10075W(m10185a.m1632d());
                            callLogBean.m10042p0(m10185a.m1635a());
                            callLogBean.m10048m0(str);
                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                            eZSearchContacts.setBelong_area(m10185a.m1632d());
                            eZSearchContacts.setType(m10185a.m1630f());
                            eZSearchContacts.setFormat_tel_number(m10185a.m1634b());
                            eZSearchContacts.setOperator(m10185a.m1635a());
                            eZSearchContacts.setOld_tel_number(str);
                            try {
                                C0947d.m10470b().m10469c(eZSearchContacts);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            if (C1227w.f5084a) {
                                C1227w.m9527a("wbb", "" + callLogBean.m10045o());
                            }
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            return callLogBean;
                        }
                    }
                } else {
                    callLogBean = new CallLogBean();
                    try {
                        callLogBean.m10030w0(m10468d.isSearched());
                        callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), m10468d.getType_label()));
                        callLogBean.m10037s0(m10468d.getReport_count());
                        callLogBean.m10075W(m10468d.getBelong_area());
                        callLogBean.m10035t0(m10468d.getName());
                        callLogBean.m10050l0(m10468d.getName());
                        if (m10468d.getType() != null && ("Mobile".equals(m10468d.getType()) || "Fixed line".equals(m10468d.getType()))) {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), m10468d.getType()));
                        }
                        callLogBean.m10100D0(m10468d.getTel_number());
                        callLogBean.m10044o0(m10468d.getOld_tel_number());
                        callLogBean.m10056h0(m10468d.getFormat_tel_number());
                        callLogBean.m10042p0(m10468d.getOperator());
                        callLogBean.m10078T(m10468d.getAddress());
                        callLogBean.m10077U(m10468d.getAvatar());
                        callLogBean.m10060f0(m10468d.getFb_avatar());
                        callLogBean.m10102C0(m10468d.getT_p());
                        callLogBean.m10062e0(m10468d.getFaild_error_log());
                        callLogBean.m10048m0(str);
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        return callLogBean;
                    }
                }
            } catch (Exception e5) {
                e = e5;
                callLogBean = null;
            }
            return callLogBean;
        }

        /* renamed from: b */
        public void onPostExecute(CallLogBean callLogBean) {
            super.onPostExecute(callLogBean);
            if (callLogBean != null) {
                a.r(EZCallApplication.m10163c(), callLogBean);
                new Handler().postDelayed(new RunnableC1090a(this), 6000L);
            }
        }
    }

    /* renamed from: a */
    public static C2806a m10185a(String str, String str2) {
        String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
        String str3 = iso_code;
        if (iso_code.contains("/")) {
            str3 = iso_code.substring(0, iso_code.indexOf("/"));
        }
        return m10184b(str, str2, str3);
    }

    /* renamed from: b */
    public static C2806a m10184b(String str, String str2, String str3) {
        C2806a m1646a;
        try {
            if (!C2800i.m1645b() || (m1646a = C2800i.m1646a(str, str3, str2, C2807a.m1619a(EZCallApplication.m10163c().f4578c))) == null) {
                return null;
            }
            if (m1646a.m1634b() == null) {
                m1646a.m1626j("");
            }
            if (m1646a.m1632d() == null) {
                m1646a.m1624l("");
            }
            if (m1646a.m1635a() == null) {
                m1646a.m1627i("");
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "mode:" + m1646a.toString());
            }
            return m1646a;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static void m10183c(List<CallLogBean> list, String str) {
        try {
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "批量查詢數據");
            }
            String iso_code = C1184j.m9826d(EZCallApplication.m10163c()).getIso_code();
            String str2 = iso_code;
            if (iso_code.contains("/")) {
                str2 = iso_code.substring(0, iso_code.indexOf("/"));
            }
            if (list == null || list.size() <= 0) {
                return;
            }
            try {
                for (CallLogBean callLogBean : list) {
                    EZSearchContacts m10468d = C0947d.m10470b().m10468d(callLogBean.m10045o());
                    if (m10468d == null) {
                        if (C1227w.f5084a) {
                            C1227w.m9527a("wbb", "本地数据库没有数据，调用离线解析库解析数据展示");
                        }
                        C2806a m10184b = m10184b(callLogBean.m10045o(), str, str2);
                        if (m10184b != null) {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), m10184b.m1630f()));
                            callLogBean.m10056h0(m10184b.m1634b());
                            callLogBean.m10075W(m10184b.m1632d());
                            callLogBean.m10042p0(m10184b.m1635a());
                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                            eZSearchContacts.setBelong_area(m10184b.m1632d());
                            eZSearchContacts.setType(m10184b.m1630f());
                            eZSearchContacts.setFormat_tel_number(m10184b.m1634b());
                            eZSearchContacts.setOperator(m10184b.m1635a());
                            eZSearchContacts.setOld_tel_number(callLogBean.m10045o());
                            C0947d.m10470b().m10469c(eZSearchContacts);
                        }
                    } else {
                        callLogBean.m10030w0(m10468d.isSearched());
                        callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), m10468d.getType_label()));
                        callLogBean.m10037s0(m10468d.getReport_count());
                        callLogBean.m10075W(m10468d.getBelong_area());
                        callLogBean.m10035t0(m10468d.getName());
                        if (m10468d.getType() != null && ("Mobile".equals(m10468d.getType()) || "Fixed line".equals(m10468d.getType()))) {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), m10468d.getType()));
                        }
                        callLogBean.m10100D0(m10468d.getTel_number());
                        callLogBean.m10044o0(m10468d.getOld_tel_number());
                        callLogBean.m10056h0(m10468d.getFormat_tel_number());
                        callLogBean.m10042p0(m10468d.getOperator());
                        callLogBean.m10078T(m10468d.getAddress());
                        callLogBean.m10077U(m10468d.getAvatar());
                        callLogBean.m10060f0(m10468d.getFb_avatar());
                        callLogBean.m10102C0(m10468d.getT_p());
                        callLogBean.m10062e0(m10468d.getFaild_error_log());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m10182d(String str, AbstractC1079a abstractC1079a) {
        try {
            new AsyncTaskC1088d(abstractC1079a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m10181e(String str) {
        try {
            new AsyncTaskC1089e(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public static void m10180f(String str, String str2, AbstractC1091f abstractC1091f) {
        try {
            new AsyncTaskC1086b(abstractC1091f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m10179g(Context context, long j) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                JobInfo.Builder builder = new JobInfo.Builder(970, new ComponentName(context, OfflineDbJobService.class));
                builder.setRequiredNetworkType(1);
                builder.setRequiresCharging(false);
                builder.setRequiresDeviceIdle(false);
                builder.setMinimumLatency(j);
                JobInfo build = builder.build();
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.schedule(build);
                }
            } else {
                C0877b.m10617e().m10616f(j, 970);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m10178h(Context context, boolean z, AbstractC1080b abstractC1080b) {
        try {
            new AsyncTaskC1078d(context, z, abstractC1080b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    public static void m10177i(Context context, long j) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                JobInfo.Builder builder = new JobInfo.Builder(718, new ComponentName(context, OfflineJobService.class));
                builder.setRequiredNetworkType(1);
                builder.setRequiresCharging(false);
                builder.setRequiresDeviceIdle(false);
                builder.setMinimumLatency(j);
                JobInfo build = builder.build();
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.schedule(build);
                }
            } else {
                C0877b.m10617e().m10616f(j, 718);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public static void m10176j(AbstractC1080b abstractC1080b) {
        try {
            new AsyncTaskC1082d(abstractC1080b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    public static void m10175k(String str, String str2, AbstractC1081c abstractC1081c) {
        try {
            new AsyncTaskC1087c(abstractC1081c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
