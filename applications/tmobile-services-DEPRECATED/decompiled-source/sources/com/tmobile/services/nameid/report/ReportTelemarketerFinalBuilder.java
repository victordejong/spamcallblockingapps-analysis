package com.tmobile.services.nameid.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.ViewGroup;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.report.GenericReportActivity;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportTelemarketerFinalBuilder.class */
public class ReportTelemarketerFinalBuilder {
    private ReportTelemarketerFinalBuilder() {
        throw new IllegalAccessError("This is a utilty class, it shouldn't be created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6387a(Context context, ViewGroup viewGroup, ColorStateList colorStateList, GenericReportActivity.ReportNavigationListener reportNavigationListener, boolean z, HashMap<Integer, String> hashMap, Map<String, Integer> map) {
        ReportFormItemCreators.m6430p(C1517R.string.report_final_question, context, viewGroup);
        ReportFormItemCreators.m6445a(context, new String[]{context.getString(C1517R.string.report_question_more_than_25), context.getString(C1517R.string.report_question_previously_told_stop)}, colorStateList, hashMap, viewGroup, map, reportNavigationListener);
    }
}
