package com.callerid.block.util;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.p040h.p041a.p045e.p046i.C1006b;
import com.callerid.block.p040h.p041a.p051g.C1057b;
import com.callerid.block.search.EZSearchResult;
import com.callerid.block.start.MissedCallActivity;
import com.callerid.block.util.p058v0.C1223b;
/* renamed from: com.callerid.block.util.m0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/m0.class */
public class C1195m0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.m0$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/m0$b.class */
    public static final class AsyncTaskC1196b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private EZSearchResult f5028a;

        /* renamed from: b */
        private EZSearchContacts f5029b;

        /* renamed from: c */
        final /* synthetic */ String f5030c;

        /* renamed from: d */
        final /* synthetic */ Context f5031d;

        /* renamed from: e */
        final /* synthetic */ int f5032e;

        /* renamed from: f */
        final /* synthetic */ int f5033f;

        /* renamed from: g */
        final /* synthetic */ long f5034g;

        /* renamed from: h */
        final /* synthetic */ int f5035h;

        AsyncTaskC1196b(String str, Context context, int i, int i2, long j, int i3) {
            this.f5030c = str;
            this.f5031d = context;
            this.f5032e = i;
            this.f5033f = i2;
            this.f5034g = j;
            this.f5035h = i3;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            int i;
            try {
                this.f5029b = C0947d.m10470b().m10468d(this.f5030c);
                EZSearchResult eZSearchResult = new EZSearchResult();
                this.f5028a = eZSearchResult;
                eZSearchResult.setNumber(this.f5030c);
                String m9567j = C1216t0.m9567j(this.f5031d, this.f5030c);
                if (m9567j == null || "".equals(m9567j)) {
                    this.f5028a.setName("");
                } else {
                    this.f5028a.setName(m9567j);
                    this.f5028a.setContact(true);
                    String m9833b = C1183i0.m9833b(this.f5030c);
                    if (m9833b != null && !m9833b.equals("")) {
                        this.f5028a.setFormat_tel_number(m9833b);
                    }
                    this.f5028a.setRaw_contact_id(C1216t0.m9603I(this.f5031d, this.f5028a.getNumber()));
                }
                EZSearchContacts eZSearchContacts = this.f5029b;
                if (eZSearchContacts == null) {
                    return null;
                }
                this.f5028a.setType_label(eZSearchContacts.getType_label());
                if (m9567j == null && this.f5029b.getName() != null && !this.f5029b.getName().equals("")) {
                    this.f5028a.setName(this.f5029b.getName());
                }
                this.f5028a.setFaild_error_log(this.f5029b.getFaild_error_log());
                String old_tel_number = this.f5029b.getOld_tel_number();
                if (old_tel_number != null && !"".equals(old_tel_number)) {
                    this.f5028a.setOld_tel_number(old_tel_number);
                }
                String m9833b2 = C1183i0.m9833b(this.f5030c);
                String format_tel_number = this.f5029b.getFormat_tel_number();
                if (m9833b2 != null && !m9833b2.equals("")) {
                    this.f5028a.setFormat_tel_number(m9833b2);
                } else if (format_tel_number != null && !format_tel_number.equals("")) {
                    this.f5028a.setFormat_tel_number(format_tel_number);
                }
                String report_count = this.f5029b.getReport_count();
                if ("".equals(report_count)) {
                    this.f5028a.setReport_count(0);
                    i = 0;
                } else {
                    i = Integer.parseInt(report_count);
                    this.f5028a.setReport_count(i);
                }
                if (this.f5029b.getType_label() == null || (i <= 0 && "".equals(this.f5029b.getType_label()))) {
                    this.f5028a.setIsSpam(false);
                } else {
                    this.f5028a.setIsSpam(true);
                }
                if (this.f5032e == 0) {
                    this.f5028a.setDate(0L);
                } else {
                    this.f5028a.setDate(1L);
                }
                this.f5028a.setOperator(this.f5029b.getOperator());
                this.f5028a.setType(this.f5029b.getType());
                this.f5028a.setLocation(this.f5029b.getBelong_area());
                this.f5028a.setAddress(this.f5029b.getAddress());
                this.f5028a.setIcon(this.f5029b.getAvatar());
                this.f5028a.setWebsite(this.f5029b.getWebsite());
                this.f5028a.setTag_main(this.f5029b.getTag_main());
                this.f5028a.setTag_sub(this.f5029b.getTag_sub());
                this.f5028a.setSoft_comments(this.f5029b.getSoft_comments());
                this.f5028a.setT_p(this.f5029b.getT_p());
                this.f5028a.setTel_number(this.f5029b.getTel_number());
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r8) {
            super.onPostExecute(r8);
            EZSearchResult eZSearchResult = this.f5028a;
            if (eZSearchResult != null) {
                C1195m0.m9788c(this.f5031d, eZSearchResult, this.f5033f, this.f5034g, this.f5035h);
            }
        }
    }

    /* renamed from: b */
    public static void m9789b(Context context, int i, int i2, String str, long j, int i3) {
        try {
            new AsyncTaskC1196b(str, context, i, i2, j, i3).executeOnExecutor(C1208q0.m9629a(), new Void[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m9788c(Context context, EZSearchResult eZSearchResult, int i, long j, int i2) {
        C1227w.m9527a("testrecommend", "未接来电弹窗将要显示");
        C1223b.m9536c().m9535d();
        if (C1216t0.m9590V(context) && i == 0 && i2 == 5 && (eZSearchResult.isSpam() || eZSearchResult.getFaild_error_log() == 0)) {
            C1057b.m10283a(eZSearchResult.getNumber(), new c(context, eZSearchResult, j, i2, i));
            return;
        }
        Intent intent = new Intent(context, MissedCallActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("contact_missed", eZSearchResult);
        bundle.putLong("internalDate", j);
        bundle.putInt("calltypekey", i2);
        bundle.putInt("isContact", i);
        intent.putExtras(bundle);
        intent.setFlags(268435456);
        context.startActivity(intent);
        if (i != 0) {
            return;
        }
        C1186k.m9816c().m9812g("show_missed_dialog_notcontact");
        if (eZSearchResult.getType_label() == null || "".equals(eZSearchResult.getType_label()) || eZSearchResult.getReport_count() <= 0) {
            return;
        }
        C1186k.m9816c().m9812g("show_missed_dialog_notcontact_isspam");
    }

    /* renamed from: d */
    public static void m9787d(Context context) {
        try {
            if (!C1216t0.m9585a(context)) {
                return;
            }
            C1006b.m10369a(context, new a(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
