package com.allinone.callerid.p200l.p201a;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p135a.C2137b;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p161h.C2735a;
import com.allinone.callerid.p199k.AsyncTaskC3034c;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.service.OfflineDbJobService;
import com.allinone.callerid.service.OfflineJobService;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3738f0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3803n0;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3810q;
import com.phone.libphone.C9405i;
import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.p318l.C9411a;
import com.phone.libphone.p319m.C9412a;
import java.util.List;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.l.a.f */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f.class */
public class C3045f {

    /* renamed from: com.allinone.callerid.l.a.f$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f$a.class */
    public static /* synthetic */ class C3046a {

        /* renamed from: a */
        static final /* synthetic */ int[] f9899a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberUtil.PhoneNumberType.values().length];
            f9899a = iArr;
            try {
                iArr[PhoneNumberUtil.PhoneNumberType.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9899a[PhoneNumberUtil.PhoneNumberType.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9899a[PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.l.a.f$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f$b.class */
    public static class AsyncTaskC3047b extends AsyncTask<String, Void, EZSearchResult> {

        /* renamed from: a */
        private AbstractC3051g f9900a;

        AsyncTaskC3047b(AbstractC3051g abstractC3051g) {
            this.f9900a = abstractC3051g;
        }

        /* renamed from: a */
        public EZSearchResult doInBackground(String... strArr) {
            String str = strArr[0];
            String str2 = strArr[1];
            try {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(str);
                if (m26999d != null) {
                    EZSearchResult eZSearchResult = new EZSearchResult();
                    String type_label = m26999d.getType_label();
                    eZSearchResult.setType_label_id(type_label);
                    eZSearchResult.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), type_label));
                    String type = m26999d.getType();
                    if (type != null && ("Mobile".equals(type) || "Fixed line".equals(type))) {
                        eZSearchResult.setType(C3767h1.m24280J(EZCallApplication.m26146c(), type));
                    }
                    String name = m26999d.getName();
                    if (name == null || "".equals(name)) {
                        eZSearchResult.setName("");
                    } else {
                        eZSearchResult.setName(name);
                    }
                    eZSearchResult.setNumber(m26999d.getOld_tel_number());
                    String old_tel_number = m26999d.getOld_tel_number();
                    if (old_tel_number != null && !"".equals(old_tel_number)) {
                        eZSearchResult.setOld_tel_number(old_tel_number);
                    }
                    String operator = m26999d.getOperator();
                    if (operator != null && !"".equals(operator)) {
                        eZSearchResult.setOperator(operator);
                    }
                    String format_tel_number = m26999d.getFormat_tel_number();
                    if (format_tel_number != null && !"".equals(format_tel_number)) {
                        eZSearchResult.setFormat_tel_number(format_tel_number);
                    }
                    eZSearchResult.setTel_number(m26999d.getTel_number());
                    eZSearchResult.setT_p(m26999d.getT_p());
                    String avatar = m26999d.getAvatar();
                    if (avatar != null && !"".equals(avatar)) {
                        eZSearchResult.setIcon(avatar);
                    }
                    String belong_area = m26999d.getBelong_area();
                    if (belong_area == null || "".equals(belong_area)) {
                        eZSearchResult.setLocation("");
                    } else {
                        eZSearchResult.setLocation(belong_area);
                    }
                    String address = m26999d.getAddress();
                    if (address != null && !"".equals(address)) {
                        eZSearchResult.setAddress(address);
                    }
                    eZSearchResult.setComplaint_times(m26999d.getReport_count());
                    String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), str);
                    if (m24217w != null && !"".equals(m24217w)) {
                        eZSearchResult.setContact(true);
                        eZSearchResult.setName(m24217w);
                    }
                    return eZSearchResult;
                }
                C9411a m26171a = C3045f.m26171a(str, str2);
                if (m26171a == null) {
                    EZSearchResult eZSearchResult2 = null;
                    if (str2 != null) {
                        eZSearchResult2 = null;
                        if (!"".equals(str2)) {
                            String m24249g = C3767h1.m24249g(EZCallApplication.m26146c(), str, str2);
                            eZSearchResult2 = null;
                            if (m24249g != null) {
                                eZSearchResult2 = null;
                                if (!"".equals(m24249g)) {
                                    if (C3718c0.f11914a) {
                                        C3718c0.m24436a("wbb", "离线数据库search_number: " + m24249g);
                                    }
                                    eZSearchResult2 = null;
                                    if (C3767h1.m24240k0()) {
                                        if (C3718c0.f11914a) {
                                            C3718c0.m24436a("wbb", "离线数据库 isHaveOfflineDb");
                                        }
                                        EZSearchContacts m24088a = new C3803n0(EZCallApplication.m26146c()).m24088a(m24249g, str);
                                        eZSearchResult2 = null;
                                        if (m24088a != null) {
                                            eZSearchResult2 = new EZSearchResult();
                                            eZSearchResult2.setNumber(str);
                                            eZSearchResult2.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m24088a.getType()));
                                            eZSearchResult2.setLocation(m24088a.getBelong_area());
                                            eZSearchResult2.setOperator(m24088a.getOperator());
                                            eZSearchResult2.setOld_tel_number(m24088a.getOld_tel_number());
                                            eZSearchResult2.setTel_number(m24088a.getTel_number());
                                            eZSearchResult2.setName(m24088a.getName());
                                            eZSearchResult2.setType_label_id(m24088a.getType_label());
                                            eZSearchResult2.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), m24088a.getType_label()));
                                            eZSearchResult2.setComplaint_times(m24088a.getReport_count());
                                            String m24217w2 = C3767h1.m24217w(EZCallApplication.m26146c(), str);
                                            if (m24217w2 != null && !"".equals(m24217w2)) {
                                                eZSearchResult2.setContact(true);
                                                eZSearchResult2.setName(m24217w2);
                                            }
                                            C2631f.m27001b().m27000c(m24088a);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return eZSearchResult2;
                }
                EZSearchResult eZSearchResult3 = new EZSearchResult();
                eZSearchResult3.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m26171a.m645g()));
                eZSearchResult3.setFormat_tel_number(m26171a.m650b());
                eZSearchResult3.setLocation(m26171a.m647e());
                eZSearchResult3.setOperator(m26171a.m651a());
                eZSearchResult3.setNumber(str);
                String m649c = m26171a.m649c();
                String str3 = m649c;
                if (m649c != null) {
                    str3 = m649c;
                    if (m649c.contains("+")) {
                        str3 = m649c.replace("+", "");
                    }
                }
                if (str2 != null && !"".equals(str2)) {
                    if (str3 == null || "".equals(str3)) {
                        str3 = C3767h1.m24249g(EZCallApplication.m26146c(), str, str2);
                    }
                    if (str3 != null && !"".equals(str3)) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wbb", "离线数据库search_number: " + str3);
                        }
                        if (C3767h1.m24240k0()) {
                            if (C3718c0.f11914a) {
                                C3718c0.m24436a("wbb", "离线数据库 isHaveOfflineDb");
                            }
                            EZSearchContacts m24088a2 = new C3803n0(EZCallApplication.m26146c()).m24088a(str3, str);
                            if (m24088a2 != null) {
                                eZSearchResult3.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m24088a2.getType()));
                                eZSearchResult3.setLocation(m24088a2.getBelong_area());
                                eZSearchResult3.setOperator(m24088a2.getOperator());
                                eZSearchResult3.setOld_tel_number(m24088a2.getOld_tel_number());
                                eZSearchResult3.setTel_number(m24088a2.getTel_number());
                                eZSearchResult3.setName(m24088a2.getName());
                                eZSearchResult3.setType_label_id(m24088a2.getType_label());
                                eZSearchResult3.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), m24088a2.getType_label()));
                                eZSearchResult3.setComplaint_times(m24088a2.getReport_count());
                                String m24217w3 = C3767h1.m24217w(EZCallApplication.m26146c(), str);
                                if (m24217w3 != null && !"".equals(m24217w3)) {
                                    eZSearchResult3.setContact(true);
                                    eZSearchResult3.setName(m24217w3);
                                }
                                C2631f.m27001b().m27000c(m24088a2);
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
            this.f9900a.mo25863a(eZSearchResult);
            Intent intent = new Intent();
            intent.setAction("com.allinone.callerid.INIT_HISTORY");
            C1764a.m28939b(EZCallApplication.m26146c()).m28937d(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.l.a.f$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f$c.class */
    public static class AsyncTaskC3048c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC3040c f9901a;

        /* renamed from: b */
        private EZSearchContacts f9902b;

        /* renamed from: c */
        private String f9903c = null;

        AsyncTaskC3048c(AbstractC3040c abstractC3040c) {
            this.f9901a = abstractC3040c;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str = strArr[0];
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            try {
                this.f9902b = C2631f.m27001b().m26999d(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            EZSearchContacts eZSearchContacts = this.f9902b;
            if (eZSearchContacts == null) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "searchContact: 离线查询");
                }
                if (!C9405i.m660b()) {
                    return "search";
                }
                C3738f0.m24384c(EZCallApplication.m26146c());
                C9411a m26171a = C3045f.m26171a(str, country_code);
                if (m26171a == null) {
                    return "search";
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "mode:" + m26171a.toString());
                }
                if (m26171a.m643i()) {
                    C3738f0.m24371p(EZCallApplication.m26146c());
                    if (m26171a.m644h()) {
                        C3738f0.m24370q(EZCallApplication.m26146c());
                    }
                }
                String m647e = m26171a.m647e();
                if (m647e != null && !"".equals(m647e)) {
                    C3810q.m24071b().m24070c("search_offline_parser_guishudi");
                }
                if (m26171a.m646f() != null) {
                    int i = C3046a.f9899a[m26171a.m646f().ordinal()];
                    if (i == 1) {
                        C3810q.m24071b().m24070c("number_type_mobile");
                    } else if (i == 2) {
                        C3810q.m24071b().m24070c("number_type_fixed_line");
                    } else if (i == 3) {
                        C3810q.m24071b().m24070c("number_type_fixed_line_or_mobile");
                    }
                }
                C3738f0.m24382e(EZCallApplication.m26146c());
                if (m26171a.m644h()) {
                    C3738f0.m24383d(EZCallApplication.m26146c());
                }
                EZSearchContacts eZSearchContacts2 = new EZSearchContacts();
                this.f9902b = eZSearchContacts2;
                eZSearchContacts2.setBelong_area(m26171a.m648d());
                if (m26171a.m645g() != null && ("Mobile".equals(m26171a.m645g()) || "Fixed line".equals(m26171a.m645g()))) {
                    this.f9902b.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m26171a.m645g()));
                }
                this.f9902b.setFormat_tel_number(m26171a.m650b());
                this.f9902b.setOperator(m26171a.m651a());
                String m649c = m26171a.m649c();
                this.f9903c = m649c;
                if (m649c != null && m649c.contains("+")) {
                    this.f9903c = this.f9903c.replace("+", "");
                }
                if (!C3718c0.f11914a) {
                    return "search";
                }
                C3718c0.m24436a("wbb", "formatE164: " + this.f9903c);
                return "search";
            } else if (eZSearchContacts.getSearch_time() != 0 || this.f9902b.isSearched()) {
                if (!C3718c0.f11914a) {
                    return "db";
                }
                C3718c0.m24436a("wbb", "searchContact: 本地库查询");
                return "db";
            } else {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "searchContact: 离线查询");
                }
                if (!C9405i.m660b()) {
                    return "search";
                }
                C3738f0.m24384c(EZCallApplication.m26146c());
                C9411a m26171a2 = C3045f.m26171a(str, country_code);
                if (m26171a2 == null) {
                    return "search";
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "mode:" + m26171a2.toString());
                }
                if (m26171a2.m643i()) {
                    C3738f0.m24371p(EZCallApplication.m26146c());
                    if (m26171a2.m644h()) {
                        C3738f0.m24370q(EZCallApplication.m26146c());
                    }
                }
                String m647e2 = m26171a2.m647e();
                if (m647e2 != null && !"".equals(m647e2)) {
                    C3810q.m24071b().m24070c("search_offline_parser_guishudi");
                }
                if (m26171a2.m646f() != null) {
                    int i2 = C3046a.f9899a[m26171a2.m646f().ordinal()];
                    if (i2 == 1) {
                        C3810q.m24071b().m24070c("number_type_mobile");
                    } else if (i2 == 2) {
                        C3810q.m24071b().m24070c("number_type_fixed_line");
                    } else if (i2 == 3) {
                        C3810q.m24071b().m24070c("number_type_fixed_line_or_mobile");
                    }
                }
                C3738f0.m24382e(EZCallApplication.m26146c());
                if (m26171a2.m644h()) {
                    C3738f0.m24383d(EZCallApplication.m26146c());
                }
                EZSearchContacts eZSearchContacts3 = new EZSearchContacts();
                this.f9902b = eZSearchContacts3;
                eZSearchContacts3.setBelong_area(m26171a2.m648d());
                if (m26171a2.m645g() != null && ("Mobile".equals(m26171a2.m645g()) || "Fixed line".equals(m26171a2.m645g()))) {
                    this.f9902b.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m26171a2.m645g()));
                }
                this.f9902b.setFormat_tel_number(m26171a2.m650b());
                this.f9902b.setOperator(m26171a2.m651a());
                String m649c2 = m26171a2.m649c();
                this.f9903c = m649c2;
                if (m649c2 != null && m649c2.contains("+")) {
                    this.f9903c = this.f9903c.replace("+", "");
                }
                if (!C3718c0.f11914a) {
                    return "search";
                }
                C3718c0.m24436a("wbb", "formatE164: " + this.f9903c);
                return "search";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("search".equals(str)) {
                this.f9901a.mo26190a(this.f9902b, this.f9903c);
            } else if (!"db".equals(str)) {
            } else {
                this.f9901a.mo26189b(this.f9902b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.l.a.f$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f$d.class */
    public static class AsyncTaskC3049d extends AsyncTask<String, Void, CallLogBean> {

        /* renamed from: com.allinone.callerid.l.a.f$d$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/l/a/f$d$a.class */
        public class RunnableC3050a implements Runnable {
            RunnableC3050a() {
                AsyncTaskC3049d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2735a.m26730o().m26728q();
            }
        }

        private AsyncTaskC3049d() {
        }

        /* synthetic */ AsyncTaskC3049d(C3046a c3046a) {
            this();
        }

        /* renamed from: a */
        public CallLogBean doInBackground(String... strArr) {
            String str = strArr[0];
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "剪贴板查询开始： " + str);
            }
            String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
            EZSearchContacts m26999d = C2631f.m27001b().m26999d(str);
            CallLogBean callLogBean = null;
            if (m26999d == null) {
                C9411a m26171a = C3045f.m26171a(str, country_code);
                if (m26171a != null) {
                    CallLogBean callLogBean2 = new CallLogBean();
                    callLogBean2.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26171a.m645g()));
                    callLogBean2.m24863x0(m26171a.m650b());
                    callLogBean2.m24896g0(m26171a.m648d());
                    callLogBean2.m24945H0(m26171a.m651a());
                    callLogBean2.m24951E0(str);
                    EZSearchContacts eZSearchContacts = new EZSearchContacts();
                    eZSearchContacts.setBelong_area(m26171a.m648d());
                    eZSearchContacts.setType(m26171a.m645g());
                    eZSearchContacts.setFormat_tel_number(m26171a.m650b());
                    eZSearchContacts.setOperator(m26171a.m651a());
                    eZSearchContacts.setOld_tel_number(str);
                    C2631f.m27001b().m27000c(eZSearchContacts);
                    callLogBean = callLogBean2;
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "" + callLogBean2.m24880o());
                        callLogBean = callLogBean2;
                    }
                }
            } else {
                callLogBean = new CallLogBean();
                callLogBean.m24931P0(m26999d.isSearched());
                callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                callLogBean.m24939L0(m26999d.getReport_count());
                callLogBean.m24896g0(m26999d.getBelong_area());
                callLogBean.m24937M0(m26999d.getName());
                callLogBean.m24955C0(m26999d.getName());
                if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                    callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                }
                callLogBean.m24913a1(m26999d.getTel_number());
                callLogBean.m24947G0(m26999d.getOld_tel_number());
                callLogBean.m24863x0(m26999d.getFormat_tel_number());
                callLogBean.m24945H0(m26999d.getOperator());
                callLogBean.m24905d0(m26999d.getAddress());
                callLogBean.m24902e0(m26999d.getAvatar());
                callLogBean.m24865w0(m26999d.getFb_avatar());
                callLogBean.m24915Z0(m26999d.getT_p());
                callLogBean.m24867v0(m26999d.getFaild_error_log());
                callLogBean.m24951E0(str);
            }
            return callLogBean;
        }

        /* renamed from: b */
        public void onPostExecute(CallLogBean callLogBean) {
            super.onPostExecute(callLogBean);
            if (callLogBean != null) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "剪贴板查询成功");
                }
                try {
                    C2735a.m26730o().m26724u(EZCallApplication.m26146c(), callLogBean);
                    new Handler().postDelayed(new RunnableC3050a(), 6000L);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static C9411a m26171a(String str, String str2) {
        String iso_code = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code();
        String str3 = iso_code;
        if (iso_code.contains("/")) {
            str3 = iso_code.substring(0, iso_code.indexOf("/"));
        }
        return m26170b(str, str2, str3);
    }

    /* renamed from: b */
    private static C9411a m26170b(String str, String str2, String str3) {
        C9411a m661a;
        if (!C9405i.m660b() || (m661a = C9405i.m661a(str, str3, str2, C9412a.m633a(EZCallApplication.m26146c().f9914h))) == null) {
            return null;
        }
        if (m661a.m650b() == null) {
            m661a.m641k("");
        }
        if (m661a.m648d() == null) {
            m661a.m639m("");
        }
        if (m661a.m651a() == null) {
            m661a.m642j("");
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "mode:" + m661a.toString());
        }
        return m661a;
    }

    /* renamed from: c */
    public static void m26169c(List<CallLogBean> list, String str) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "批量查詢數據");
        }
        String iso_code = C3806p.m24083d(EZCallApplication.m26146c()).getIso_code();
        String str2 = iso_code;
        if (iso_code.contains("/")) {
            str2 = iso_code.substring(0, iso_code.indexOf("/"));
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            for (CallLogBean callLogBean : list) {
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                if (m26999d == null) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("wbb", "本地数据库没有数据，调用离线解析库解析数据展示");
                    }
                    C9411a m26170b = m26170b(callLogBean.m24880o(), str, str2);
                    if (m26170b != null) {
                        callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26170b.m645g()));
                        callLogBean.m24863x0(m26170b.m650b());
                        callLogBean.m24896g0(m26170b.m648d());
                        callLogBean.m24945H0(m26170b.m651a());
                        EZSearchContacts eZSearchContacts = new EZSearchContacts();
                        eZSearchContacts.setBelong_area(m26170b.m648d());
                        eZSearchContacts.setType(m26170b.m645g());
                        eZSearchContacts.setFormat_tel_number(m26170b.m650b());
                        eZSearchContacts.setOperator(m26170b.m651a());
                        eZSearchContacts.setOld_tel_number(callLogBean.m24880o());
                        C2631f.m27001b().m27000c(eZSearchContacts);
                    }
                } else {
                    callLogBean.m24931P0(m26999d.isSearched());
                    callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                    callLogBean.m24898f1(m26999d.getType_label());
                    callLogBean.m24939L0(m26999d.getReport_count());
                    callLogBean.m24896g0(m26999d.getBelong_area());
                    callLogBean.m24937M0(m26999d.getName());
                    if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                        callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                    }
                    callLogBean.m24913a1(m26999d.getTel_number());
                    callLogBean.m24947G0(m26999d.getOld_tel_number());
                    callLogBean.m24863x0(m26999d.getFormat_tel_number());
                    callLogBean.m24945H0(m26999d.getOperator());
                    callLogBean.m24905d0(m26999d.getAddress());
                    callLogBean.m24902e0(m26999d.getAvatar());
                    callLogBean.m24865w0(m26999d.getFb_avatar());
                    callLogBean.m24915Z0(m26999d.getT_p());
                    callLogBean.m24867v0(m26999d.getFaild_error_log());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m26168d(String str, AbstractC3040c abstractC3040c) {
        try {
            new AsyncTaskC3048c(abstractC3040c).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m26167e(String str) {
        try {
            new AsyncTaskC3049d(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public static void m26166f(String str, String str2, AbstractC3051g abstractC3051g) {
        try {
            new AsyncTaskC3047b(abstractC3051g).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private static void m26165g(Context context, long j) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                JobInfo.Builder builder = new JobInfo.Builder(970, new ComponentName(context, OfflineDbJobService.class));
                builder.setRequiredNetworkType(2);
                builder.setRequiresCharging(false);
                builder.setRequiresDeviceIdle(false);
                builder.setMinimumLatency(j);
                JobInfo build = builder.build();
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.schedule(build);
                }
            } else {
                C2137b.m27926e().m27925f(j, 970);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: h */
    public static void m26164h(Context context, boolean z, AbstractC3041d abstractC3041d) {
        try {
            new AsyncTaskC3034c(context, z, abstractC3041d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    private static void m26163i(Context context, long j) {
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                JobInfo.Builder builder = new JobInfo.Builder(718, new ComponentName(context, OfflineJobService.class));
                builder.setRequiredNetworkType(2);
                builder.setRequiresCharging(false);
                builder.setRequiresDeviceIdle(false);
                builder.setMinimumLatency(j);
                JobInfo build = builder.build();
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                if (jobScheduler != null) {
                    jobScheduler.schedule(build);
                }
            } else {
                C2137b.m27926e().m27925f(j, 718);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public static void m26162j(AbstractC3041d abstractC3041d) {
        try {
            new AsyncTaskC3042e(abstractC3041d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: k */
    public static void m26161k(Context context) {
        try {
            long m24473w2 = C3711a1.m24473w2();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "time:" + m24473w2);
            }
            if (m24473w2 != 0 && System.currentTimeMillis() - m24473w2 <= 2592000000L) {
                if (System.currentTimeMillis() <= C3711a1.m24539g0()) {
                    return;
                }
                m26165g(context, 120000L);
                return;
            }
            m26163i(context, 180000L);
            if (System.currentTimeMillis() <= C3711a1.m24539g0()) {
                return;
            }
            m26165g(context, 120000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
