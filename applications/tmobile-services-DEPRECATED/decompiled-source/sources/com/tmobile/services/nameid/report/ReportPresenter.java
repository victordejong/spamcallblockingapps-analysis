package com.tmobile.services.nameid.report;

import android.content.res.ColorStateList;
import android.widget.LinearLayout;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.ReportItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.report.GenericReportActivity;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportPresenter.class */
public class ReportPresenter {

    /* renamed from: m */
    private static Map<String, Integer> f13648m = new HashMap();

    /* renamed from: a */
    private GenericReportActivity f13649a;
    @Nullable

    /* renamed from: b */
    private String f13650b;
    @Nullable

    /* renamed from: c */
    private String f13651c;
    @Nullable

    /* renamed from: d */
    private String f13652d;
    @Nullable

    /* renamed from: e */
    private int f13653e;
    @Nullable

    /* renamed from: f */
    private String f13654f;

    /* renamed from: g */
    private ArrayDeque<GenericReportActivity.ReportNavigation> f13655g = new ArrayDeque<>();

    /* renamed from: h */
    private HashMap<Integer, String> f13656h = new HashMap<>();

    /* renamed from: i */
    private GenericReportActivity.ReportNavigationListener f13657i = new GenericReportActivity.ReportNavigationListener() { // from class: com.tmobile.services.nameid.report.w
        @Override // com.tmobile.services.nameid.report.GenericReportActivity.ReportNavigationListener
        /* renamed from: a */
        public final void mo6384a(GenericReportActivity.ReportNavigation reportNavigation) {
            ReportPresenter.this.m6416a(reportNavigation);
        }
    };

    /* renamed from: j */
    private boolean f13658j = false;

    /* renamed from: k */
    private boolean f13659k = false;

    /* renamed from: l */
    private GenericReportActivity.ReportNavigation f13660l = GenericReportActivity.ReportNavigation.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.report.ReportPresenter$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportPresenter$1.class */
    public static /* synthetic */ class C18401 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13661a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[GenericReportActivity.ReportNavigation.values().length];
            f13661a = iArr;
            try {
                iArr[GenericReportActivity.ReportNavigation.NON_OFFENDER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.DEBT_COLLECTOR_START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.DEBT_FINAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.TELEMARKETER_START.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.TELEMARKETER_FINAL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.SCAMMER_START.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.SCAMMER_END.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f13661a[GenericReportActivity.ReportNavigation.THANK_YOU.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public ReportPresenter(GenericReportActivity genericReportActivity) {
        this.f13649a = genericReportActivity;
        m6415b();
    }

    /* renamed from: b */
    private void m6415b() {
        f13648m.clear();
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_no_permission), 9);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_told_to_stop), 10);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_called_before), 11);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_did_not_disclose), 12);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_threatened), 13);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_recorded_message), 14);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_someone_else), 15);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_do_not_owe), 16);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_harassed), 17);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_abusive), 18);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_mobile_told_not_to), 19);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_told_family_debt), 20);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_threatened_to_sue), 21);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_harassed_other), 22);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_more_than_25), 27);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_previously_told_stop), 28);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_after_work), 31);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_didnt_identify_collector), 32);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_robocall), 36);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_do_not_owe_caps), 37);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_do_owe_caps), 38);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_someone_else_collection), 39);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_told_stop_calling), 40);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_have_done_business), 41);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_car_warranty), 44);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_irs), 45);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_lottery), 46);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_malware), 47);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_other), 48);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_asked_personal_info), 49);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_had_personal_info), 50);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_won_lottery), 51);
        f13648m.put(this.f13649a.getString(C1517R.string.report_question_demand_money), 52);
    }

    /* renamed from: c */
    private String[] m6414c() {
        String str = this.f13652d;
        String str2 = "";
        String lowerCase = str != null ? str.toLowerCase() : "";
        String str3 = this.f13650b;
        if (str3 != null) {
            str2 = str3.toLowerCase();
        }
        return new String[]{lowerCase, str2};
    }

    /* renamed from: a */
    public void m6416a(GenericReportActivity.ReportNavigation reportNavigation) {
        boolean z;
        if (reportNavigation == GenericReportActivity.ReportNavigation.RESCROLL) {
            this.f13649a.m6454s();
            return;
        }
        if (reportNavigation == GenericReportActivity.ReportNavigation.BACK) {
            z = false;
            if (this.f13655g.isEmpty()) {
                reportNavigation = GenericReportActivity.ReportNavigation.NONE;
                m6410g();
            } else {
                reportNavigation = this.f13655g.pop();
            }
        } else {
            m6409h(this.f13660l);
            z = true;
        }
        this.f13649a.m6463j(z, reportNavigation);
    }

    /* renamed from: d */
    public GenericReportActivity.ReportNavigation m6413d() {
        String[] c = m6414c();
        String str = c[0];
        String str2 = c[1];
        if (str.contains("scam") || str2.contains("scam")) {
            this.f13658j = true;
            return GenericReportActivity.ReportNavigation.SCAMMER_START;
        } else if (str.contains("telemarket") || str2.contains("telemarket")) {
            this.f13658j = true;
            return GenericReportActivity.ReportNavigation.TELEMARKETER_START;
        } else if (str.contains("debt") || str2.contains("debt")) {
            this.f13658j = true;
            return GenericReportActivity.ReportNavigation.DEBT_COLLECTOR_START;
        } else {
            this.f13658j = false;
            return GenericReportActivity.ReportNavigation.NON_OFFENDER;
        }
    }

    /* renamed from: e */
    public String[] m6412e() {
        String str;
        String str2;
        String str3 = this.f13652d;
        String str4 = "";
        if (str3 == null || str3.isEmpty()) {
            String str5 = this.f13650b;
            if (str5 == null || str5.isEmpty()) {
                str4 = this.f13651c;
                str2 = "";
                str = str2;
            } else {
                str = this.f13650b;
                str4 = this.f13651c;
                str2 = "";
            }
        } else {
            String str6 = this.f13650b;
            if (str6 == null || str6.isEmpty()) {
                str = this.f13652d;
                str4 = this.f13651c;
                str2 = "";
            } else {
                str2 = this.f13652d;
                str = this.f13650b;
                str4 = this.f13651c;
            }
        }
        if (str4 == null) {
        }
        return new String[]{str2, str, str4};
    }

    /* renamed from: f */
    public void m6411f(GenericReportActivity.ReportNavigation reportNavigation, boolean z) {
        this.f13660l = reportNavigation;
        this.f13649a.m6453t();
        LinearLayout o = this.f13649a.m6458o();
        ColorStateList m = this.f13649a.m6460m();
        switch (C18401.f13661a[reportNavigation.ordinal()]) {
            case 1:
                this.f13658j = false;
                ReportNonOffenderBuilder.m6417c(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m);
                return;
            case 2:
                ReportDebtCollectorStartBuilder.m6446f(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m);
                return;
            case 3:
                ReportDebtCollectorFinalBuilder.m6452a(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m);
                return;
            case 4:
                ReportTelemarketerBuilder.m6388g(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m, this.f13658j);
                return;
            case 5:
                ReportTelemarketerFinalBuilder.m6387a(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m);
                return;
            case 6:
                ReportScammerStartBuilder.m6395g(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m, this.f13658j);
                this.f13652d = "scam";
                return;
            case 7:
                this.f13659k = true;
                ReportScammerEndBuilder.m6402a(this.f13649a, o, m, this.f13657i, z, this.f13656h, f13648m);
                this.f13652d = "scam";
                return;
            case 8:
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<Integer, String> entry : this.f13656h.entrySet()) {
                    LogUtil.m5632o("ReportPresenter", entry.getKey() + ":" + entry.getValue());
                    arrayList.add(new ReportItem(entry.getValue(), Integer.toString(entry.getKey().intValue())));
                }
                arrayList.add(new ReportItem(Integer.toString(this.f13653e), TmoUserStatus.CUSTOMER_TYPE_PREPAID));
                arrayList.add(new ReportItem(this.f13654f, "4"));
                arrayList.add(new ReportItem(this.f13650b, "5"));
                arrayList.add(new ReportItem(PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN"), "6"));
                this.f13649a.m6462k(arrayList, this.f13659k);
                return;
            default:
                LogUtil.m5631p("ReportPresenter#goToView", "Unknown page was navigated to");
                return;
        }
    }

    /* renamed from: g */
    public void m6410g() {
        if (this.f13655g.isEmpty()) {
            this.f13649a.m6457p();
        } else {
            m6416a(GenericReportActivity.ReportNavigation.BACK);
        }
    }

    /* renamed from: h */
    public void m6409h(GenericReportActivity.ReportNavigation reportNavigation) {
        if (reportNavigation != GenericReportActivity.ReportNavigation.BACK && reportNavigation != GenericReportActivity.ReportNavigation.NONE) {
            this.f13655g.push(reportNavigation);
        }
    }

    /* renamed from: i */
    public void m6408i(int i) {
        this.f13653e = i;
    }

    /* renamed from: j */
    public void m6407j(String str) {
        this.f13652d = str;
    }

    /* renamed from: k */
    public void m6406k(String str) {
        this.f13650b = str;
    }

    /* renamed from: l */
    public void m6405l(String str) {
        this.f13651c = str;
    }

    /* renamed from: m */
    public void m6404m(String str) {
        this.f13654f = str;
    }

    /* renamed from: n */
    public void m6403n() {
        GenericReportActivity.ReportNavigation d = m6413d();
        this.f13660l = d;
        m6411f(d, false);
    }
}
