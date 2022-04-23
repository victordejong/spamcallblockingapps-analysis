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

    /* JADX INFO: Access modifiers changed from: package-private */
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

        public AsyncTaskC1086b(AbstractC1091f fVar) {
            this.f4567a = fVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public EZSearchResult doInBackground(String... strArr) {
            String str = strArr[0];
            String str2 = strArr[1];
            try {
                EZSearchContacts d = C0947d.m10470b().m10468d(str);
                if (d == null) {
                    C2806a a = C1084e.m10185a(str, str2);
                    if (a != null) {
                        EZSearchResult eZSearchResult = new EZSearchResult();
                        eZSearchResult.setType(C1216t0.m9554w(EZCallApplication.m10163c(), a.m1630f()));
                        eZSearchResult.setFormat_tel_number(a.m1634b());
                        eZSearchResult.setLocation(a.m1632d());
                        eZSearchResult.setOperator(a.m1635a());
                        eZSearchResult.setNumber(str);
                        String c = a.m1633c();
                        String str3 = c;
                        if (c != null) {
                            str3 = c;
                            if (c.contains("+")) {
                                str3 = c.replace("+", "");
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
                                    EZSearchContacts a2 = new C1177f0(EZCallApplication.m10163c()).m9849a(str3, str);
                                    if (a2 != null) {
                                        C1186k.m9816c().m9812g("number_search_oflline_db_success");
                                        eZSearchResult.setType(C1216t0.m9554w(EZCallApplication.m10163c(), a2.getType()));
                                        eZSearchResult.setLocation(a2.getBelong_area());
                                        eZSearchResult.setOperator(a2.getOperator());
                                        eZSearchResult.setOld_tel_number(a2.getOld_tel_number());
                                        eZSearchResult.setTel_number(a2.getTel_number());
                                        eZSearchResult.setName(a2.getName());
                                        eZSearchResult.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), a2.getType_label()));
                                        eZSearchResult.setComplaint_times(a2.getReport_count());
                                        String j = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                                        if (j != null && !"".equals(j)) {
                                            eZSearchResult.setContact(true);
                                            eZSearchResult.setName(j);
                                        }
                                        C0947d.m10470b().m10469c(a2);
                                    }
                                }
                            }
                        }
                        return eZSearchResult;
                    }
                    EZSearchResult eZSearchResult2 = null;
                    if (str2 != null) {
                        eZSearchResult2 = null;
                        if (!"".equals(str2)) {
                            String d2 = C1216t0.m9579d(EZCallApplication.m10163c(), str, str2);
                            eZSearchResult2 = null;
                            if (d2 != null) {
                                eZSearchResult2 = null;
                                if (!"".equals(d2)) {
                                    if (C1227w.f5084a) {
                                        C1227w.m9527a("wbb", "离线数据库search_number: " + d2);
                                    }
                                    eZSearchResult2 = null;
                                    if (C2800i.m1644c()) {
                                        if (C1227w.f5084a) {
                                            C1227w.m9527a("wbb", "离线数据库 isHaveOfflineDb");
                                        }
                                        C1186k.m9816c().m9812g("number_search_oflline_db");
                                        EZSearchContacts a3 = new C1177f0(EZCallApplication.m10163c()).m9849a(d2, str);
                                        eZSearchResult2 = null;
                                        if (a3 != null) {
                                            C1186k.m9816c().m9812g("number_search_oflline_db_success");
                                            eZSearchResult2 = new EZSearchResult();
                                            eZSearchResult2.setNumber(str);
                                            eZSearchResult2.setType(C1216t0.m9554w(EZCallApplication.m10163c(), a3.getType()));
                                            eZSearchResult2.setLocation(a3.getBelong_area());
                                            eZSearchResult2.setOperator(a3.getOperator());
                                            eZSearchResult2.setOld_tel_number(a3.getOld_tel_number());
                                            eZSearchResult2.setTel_number(a3.getTel_number());
                                            eZSearchResult2.setName(a3.getName());
                                            eZSearchResult2.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), a3.getType_label()));
                                            eZSearchResult2.setComplaint_times(a3.getReport_count());
                                            String j2 = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                                            if (j2 != null && !"".equals(j2)) {
                                                eZSearchResult2.setContact(true);
                                                eZSearchResult2.setName(j2);
                                            }
                                            C0947d.m10470b().m10469c(a3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return eZSearchResult2;
                }
                EZSearchResult eZSearchResult3 = new EZSearchResult();
                String type_label = d.getType_label();
                eZSearchResult3.setType_label(C1216t0.m9559r(EZCallApplication.m10163c(), type_label));
                String type = d.getType();
                if (type != null && ("Mobile".equals(type) || "Fixed line".equals(type))) {
                    eZSearchResult3.setType(C1216t0.m9554w(EZCallApplication.m10163c(), type));
                }
                String name = d.getName();
                if (name == null || "".equals(name)) {
                    eZSearchResult3.setName("");
                } else {
                    eZSearchResult3.setName(name);
                }
                eZSearchResult3.setNumber(d.getOld_tel_number());
                String old_tel_number = d.getOld_tel_number();
                if (old_tel_number != null && !"".equals(old_tel_number)) {
                    eZSearchResult3.setOld_tel_number(old_tel_number);
                }
                String operator = d.getOperator();
                if (operator != null && !"".equals(operator)) {
                    eZSearchResult3.setOperator(operator);
                }
                String format_tel_number = d.getFormat_tel_number();
                if (format_tel_number != null && !"".equals(format_tel_number)) {
                    eZSearchResult3.setFormat_tel_number(format_tel_number);
                }
                eZSearchResult3.setTel_number(d.getTel_number());
                eZSearchResult3.setT_p(d.getT_p());
                String avatar = d.getAvatar();
                if (avatar != null && !"".equals(avatar)) {
                    eZSearchResult3.setIcon(avatar);
                }
                String report_count = d.getReport_count();
                int parseInt = ("".equals(report_count) || report_count == null) ? 0 : Integer.parseInt(report_count);
                if (type_label == null || (parseInt <= 0 && "".equals(type_label))) {
                    eZSearchResult3.setIsSpam(false);
                } else {
                    eZSearchResult3.setIsSpam(true);
                }
                String belong_area = d.getBelong_area();
                if (belong_area == null || "".equals(belong_area)) {
                    eZSearchResult3.setLocation("");
                } else {
                    eZSearchResult3.setLocation(belong_area);
                }
                String address = d.getAddress();
                if (address != null && !"".equals(address)) {
                    eZSearchResult3.setLocation(address);
                }
                eZSearchResult3.setComplaint_times(d.getReport_count());
                String j3 = C1216t0.m9567j(EZCallApplication.m10163c(), str);
                if (j3 != null && !"".equals(j3)) {
                    eZSearchResult3.setContact(true);
                    eZSearchResult3.setName(j3);
                }
                return eZSearchResult3;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
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

        public AsyncTaskC1087c(AbstractC1081c cVar) {
            this.f4568a = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = strArr[0];
            try {
                C2806a a = C1084e.m10185a(str, strArr[1]);
                if (a == null) {
                    return null;
                }
                String b = a.m1634b();
                if (b != null && !"".equals(b)) {
                    EZSearchContacts d = C0947d.m10470b().m10468d(str);
                    if (d == null) {
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        eZSearchContacts.setOld_tel_number(str);
                        eZSearchContacts.setFormat_tel_number(b);
                        C0947d.m10470b().m10469c(eZSearchContacts);
                    } else {
                        String format_tel_number = d.getFormat_tel_number();
                        if (format_tel_number == null || "".equals(format_tel_number)) {
                            d.setFormat_tel_number(b);
                            C0947d.m10470b().m10466f(d, "format_tel_number");
                        }
                    }
                }
                return b;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
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

        public AsyncTaskC1088d(AbstractC1079a aVar) {
            this.f4569a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            C1186k kVar;
            String str2 = strArr[0];
            String country_code = C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code();
            try {
                this.f4570b = C0947d.m10470b().m10468d(str2);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f4570b == null) {
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
                C2806a a = C1084e.m10185a(str2, country_code);
                if (a == null) {
                    return "search";
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("wbb", "mode:" + a.toString());
                }
                if (a.m1628h()) {
                    C1236z.m9485f(EZCallApplication.m10163c());
                    if (a.m1629g()) {
                        C1236z.m9484g(EZCallApplication.m10163c());
                    }
                }
                if (a.m1631e() != null) {
                    int i = C1085a.f4566a[a.m1631e().ordinal()];
                    if (i == 1) {
                        kVar = C1186k.m9816c();
                        str = "number_type_mobile";
                    } else if (i == 2) {
                        kVar = C1186k.m9816c();
                        str = "number_type_fixed_line";
                    } else if (i == 3) {
                        kVar = C1186k.m9816c();
                        str = "number_type_fixed_line_or_mobile";
                    } else if (i == 4) {
                        kVar = C1186k.m9816c();
                        str = "number_type_toll_free";
                    } else if (i == 5) {
                        kVar = C1186k.m9816c();
                        str = "number_type_voip";
                    }
                    kVar.m9812g(str);
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
                if (a.m1632d() != null && !"".equals(a.m1632d())) {
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
                if (a.m1629g()) {
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
                eZSearchContacts.setBelong_area(a.m1632d());
                this.f4570b.setType(a.m1630f());
                this.f4570b.setFormat_tel_number(a.m1634b());
                this.f4570b.setOperator(a.m1635a());
                String c = a.m1633c();
                this.f4571c = c;
                if (c == null || !c.contains("+")) {
                    return "search";
                }
                this.f4571c = this.f4571c.replace("+", "");
                return "search";
            } else if (!C1227w.f5084a) {
                return "db";
            } else {
                C1227w.m9527a("wbb", "searchContact: 本地库查询");
                return "db";
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("search".equals(str)) {
                this.f4569a.m10197b(this.f4570b, this.f4571c);
            } else if ("db".equals(str)) {
                this.f4569a.m10198a(this.f4570b);
            }
        }
    }

    /* renamed from: com.callerid.block.k.a.e$e */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$e.class */
    private static class AsyncTaskC1089e extends AsyncTask<String, Void, CallLogBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callerid.block.k.a.e$e$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/k/a/e$e$a.class */
        public class RunnableC1090a implements Runnable {
            RunnableC1090a(AsyncTaskC1089e eVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = AbstractC0952b.f4315a;
                if (viewGroup != null && viewGroup.isShown()) {
                    a.n(EZCallApplication.m10163c());
                }
            }
        }

        private AsyncTaskC1089e() {
        }

        /* synthetic */ AsyncTaskC1089e(C1085a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public CallLogBean doInBackground(String... strArr) {
            Exception e;
            r5 = null;
            CallLogBean callLogBean = null;
            String str = strArr[0];
            try {
                String country_code = C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code();
                EZSearchContacts d = C0947d.m10470b().m10468d(str);
                if (d == null) {
                    C2806a a = C1084e.m10185a(str, country_code);
                    if (a != null) {
                        callLogBean = new CallLogBean();
                        try {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), a.m1630f()));
                            callLogBean.m10056h0(a.m1634b());
                            callLogBean.m10075W(a.m1632d());
                            callLogBean.m10042p0(a.m1635a());
                            callLogBean.m10048m0(str);
                            EZSearchContacts eZSearchContacts = new EZSearchContacts();
                            eZSearchContacts.setBelong_area(a.m1632d());
                            eZSearchContacts.setType(a.m1630f());
                            eZSearchContacts.setFormat_tel_number(a.m1634b());
                            eZSearchContacts.setOperator(a.m1635a());
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
                        callLogBean.m10030w0(d.isSearched());
                        callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), d.getType_label()));
                        callLogBean.m10037s0(d.getReport_count());
                        callLogBean.m10075W(d.getBelong_area());
                        callLogBean.m10035t0(d.getName());
                        callLogBean.m10050l0(d.getName());
                        if (d.getType() != null && ("Mobile".equals(d.getType()) || "Fixed line".equals(d.getType()))) {
                            callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), d.getType()));
                        }
                        callLogBean.m10100D0(d.getTel_number());
                        callLogBean.m10044o0(d.getOld_tel_number());
                        callLogBean.m10056h0(d.getFormat_tel_number());
                        callLogBean.m10042p0(d.getOperator());
                        callLogBean.m10078T(d.getAddress());
                        callLogBean.m10077U(d.getAvatar());
                        callLogBean.m10060f0(d.getFb_avatar());
                        callLogBean.m10102C0(d.getT_p());
                        callLogBean.m10062e0(d.getFaild_error_log());
                        callLogBean.m10048m0(str);
                    } catch (Exception e4) {
                        e = e4;
                        e.printStackTrace();
                        return callLogBean;
                    }
                }
            } catch (Exception e5) {
                e = e5;
            }
            return callLogBean;
        }

        /* JADX INFO: Access modifiers changed from: protected */
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
        C2806a a;
        try {
            if (!C2800i.m1645b() || (a = C2800i.m1646a(str, str3, str2, C2807a.m1619a(EZCallApplication.m10163c().f4578c))) == null) {
                return null;
            }
            if (a.m1634b() == null) {
                a.m1626j("");
            }
            if (a.m1632d() == null) {
                a.m1624l("");
            }
            if (a.m1635a() == null) {
                a.m1627i("");
            }
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "mode:" + a.toString());
            }
            return a;
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
            if (list != null && list.size() > 0) {
                try {
                    for (CallLogBean callLogBean : list) {
                        EZSearchContacts d = C0947d.m10470b().m10468d(callLogBean.m10045o());
                        if (d == null) {
                            if (C1227w.f5084a) {
                                C1227w.m9527a("wbb", "本地数据库没有数据，调用离线解析库解析数据展示");
                            }
                            C2806a b = m10184b(callLogBean.m10045o(), str, str2);
                            if (b != null) {
                                callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), b.m1630f()));
                                callLogBean.m10056h0(b.m1634b());
                                callLogBean.m10075W(b.m1632d());
                                callLogBean.m10042p0(b.m1635a());
                                EZSearchContacts eZSearchContacts = new EZSearchContacts();
                                eZSearchContacts.setBelong_area(b.m1632d());
                                eZSearchContacts.setType(b.m1630f());
                                eZSearchContacts.setFormat_tel_number(b.m1634b());
                                eZSearchContacts.setOperator(b.m1635a());
                                eZSearchContacts.setOld_tel_number(callLogBean.m10045o());
                                C0947d.m10470b().m10469c(eZSearchContacts);
                            }
                        } else {
                            callLogBean.m10030w0(d.isSearched());
                            callLogBean.m10092H0(C1216t0.m9559r(EZCallApplication.m10163c(), d.getType_label()));
                            callLogBean.m10037s0(d.getReport_count());
                            callLogBean.m10075W(d.getBelong_area());
                            callLogBean.m10035t0(d.getName());
                            if (d.getType() != null && ("Mobile".equals(d.getType()) || "Fixed line".equals(d.getType()))) {
                                callLogBean.m10032v0(C1216t0.m9554w(EZCallApplication.m10163c(), d.getType()));
                            }
                            callLogBean.m10100D0(d.getTel_number());
                            callLogBean.m10044o0(d.getOld_tel_number());
                            callLogBean.m10056h0(d.getFormat_tel_number());
                            callLogBean.m10042p0(d.getOperator());
                            callLogBean.m10078T(d.getAddress());
                            callLogBean.m10077U(d.getAvatar());
                            callLogBean.m10060f0(d.getFb_avatar());
                            callLogBean.m10102C0(d.getT_p());
                            callLogBean.m10062e0(d.getFaild_error_log());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m10182d(String str, AbstractC1079a aVar) {
        try {
            new AsyncTaskC1088d(aVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
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
    public static void m10180f(String str, String str2, AbstractC1091f fVar) {
        try {
            new AsyncTaskC1086b(fVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, str2);
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
    public static void m10178h(Context context, boolean z, AbstractC1080b bVar) {
        try {
            new AsyncTaskC1078d(context, z, bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
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
    public static void m10176j(AbstractC1080b bVar) {
        try {
            new AsyncTaskC1082d(bVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    public static void m10175k(String str, String str2, AbstractC1081c cVar) {
        try {
            new AsyncTaskC1087c(cVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
