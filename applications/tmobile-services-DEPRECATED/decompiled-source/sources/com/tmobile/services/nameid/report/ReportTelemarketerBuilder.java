package com.tmobile.services.nameid.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.report.GenericReportActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportTelemarketerBuilder.class */
public class ReportTelemarketerBuilder {
    private ReportTelemarketerBuilder() {
        throw new IllegalAccessError("This is a utilty class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m6394a(ArrayList<CheckBox> arrayList, HashMap<Integer, String> hashMap, Map<String, Integer> map, GenericReportActivity.ReportNavigationListener reportNavigationListener) {
        ReportFormItemCreators.m6420z("report_tm_start_pref", arrayList);
        ReportFormItemCreators.m6427s(arrayList, hashMap, map);
        reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.THANK_YOU);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m6392c(CheckBox checkBox, CompoundButton compoundButton, boolean z) {
        if (!z && checkBox.isChecked()) {
            checkBox.setChecked(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m6388g(Context context, ViewGroup viewGroup, ColorStateList colorStateList, final GenericReportActivity.ReportNavigationListener reportNavigationListener, boolean z, final HashMap<Integer, String> hashMap, final Map<String, Integer> map, boolean z2) {
        if (z2) {
            ReportFormItemCreators.m6439g(context, viewGroup, C1517R.string.report_telemarketer_change_1, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.NON_OFFENDER);
                }
            });
        }
        ReportFormItemCreators.m6442d(context, viewGroup, 0, 0, 6);
        ReportFormItemCreators.m6430p(C1517R.string.report_please_select_all, context, viewGroup);
        String string = context.getString(C1517R.string.report_question_robocall);
        String string2 = context.getString(C1517R.string.report_question_told_stop_calling);
        String string3 = context.getString(C1517R.string.report_question_have_done_business);
        final ArrayList arrayList = new ArrayList();
        final CheckBox m = ReportFormItemCreators.m6433m(context, viewGroup, colorStateList, arrayList);
        for (int i = 0; i < 3; i++) {
            CheckBox b = ReportFormItemCreators.m6444b(new String[]{string, string2, string3}[i], context, viewGroup, colorStateList);
            b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.report.r
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    ReportTelemarketerBuilder.m6392c(m, compoundButton, z3);
                }
            });
            arrayList.add(b);
        }
        if (z) {
            ReportFormItemCreators.m6421y("report_tm_start_pref", arrayList);
        }
        ReportFormItemCreators.m6430p(C1517R.string.report_tell_us_more, context, viewGroup);
        ReportFormItemCreators.m6441e(context, C1517R.string.report_tell_us_more_subtext, viewGroup);
        ReportFormItemCreators.m6432n(context, C1517R.string.report_final_disclaimer, 12, C1517R.C1518color.grey_3, viewGroup);
        ((CheckBox) arrayList.get(0)).requestFocus();
        if (hashMap.isEmpty() || z2) {
            ReportFormItemCreators.m6437i(viewGroup, context, true, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportTelemarketerBuilder.m6394a(arrayList, hashMap, map, reportNavigationListener);
                }
            });
        } else {
            ReportFormItemCreators.m6438h(viewGroup, context, true, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ReportTelemarketerBuilder.m6394a(arrayList, hashMap, map, reportNavigationListener);
                }
            }, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.BACK);
                }
            });
        }
    }
}
