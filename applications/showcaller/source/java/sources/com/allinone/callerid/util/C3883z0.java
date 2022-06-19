package com.allinone.callerid.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.mvc.controller.comment.SubmitCommentActivity;
import com.allinone.callerid.mvc.controller.guidep.GuideAddContantActivity;
import com.allinone.callerid.mvc.controller.guidep.GuideReportActivity;
import com.allinone.callerid.mvc.controller.guidep.MissedCallActivity;
import com.allinone.callerid.mvc.controller.report.ReportSubtypeActivity;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a;
import com.allinone.callerid.p162i.p163a.p174i.C2837b;
import com.allinone.callerid.p162i.p163a.p174i.C2854h;
import com.allinone.callerid.p162i.p163a.p174i.p175i.AbstractC2856a;
import com.allinone.callerid.p162i.p163a.p174i.p175i.C2857b;
import com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a;
import com.allinone.callerid.p162i.p163a.p183m.C2907b;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.search.EZSearchResult;
import com.allinone.callerid.start.AnsweredActivity;
import com.allinone.callerid.start.BlockedHangupActivity;
import com.allinone.callerid.start.MissedCallActivityNew;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.util.z0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0.class */
public class C3883z0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.z0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0$a.class */
    public class C3884a implements AbstractC2856a {

        /* renamed from: a */
        final /* synthetic */ Context f12245a;

        /* renamed from: com.allinone.callerid.util.z0$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0$a$a.class */
        class C3885a implements AbstractC2836a {
            C3885a() {
                C3884a.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p174i.AbstractC2836a
            /* renamed from: a */
            public void mo23879a(String str) {
                if (str == null || "".equals(str)) {
                    return;
                }
                try {
                    if (new JSONObject(str).getInt("status") != 1) {
                        return;
                    }
                    C2854h.m26505a(C3884a.this.f12245a);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        C3884a(Context context) {
            this.f12245a = context;
        }

        @Override // com.allinone.callerid.p162i.p163a.p174i.p175i.AbstractC2856a
        /* renamed from: a */
        public void mo23880a(JSONArray jSONArray) {
            if (jSONArray == null || jSONArray.length() <= 0) {
                return;
            }
            C2837b.m26522a(this.f12245a, jSONArray, new C3885a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.z0$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0$b.class */
    public class AsyncTaskC3886b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private ArrayList<EZSearchResult> f12247a;

        /* renamed from: b */
        EZSearchResult f12248b;

        /* renamed from: c */
        final /* synthetic */ Context f12249c;

        /* renamed from: d */
        final /* synthetic */ String f12250d;

        /* renamed from: e */
        final /* synthetic */ int f12251e;

        /* renamed from: f */
        final /* synthetic */ int f12252f;

        /* renamed from: g */
        final /* synthetic */ int f12253g;

        /* renamed from: h */
        final /* synthetic */ boolean f12254h;

        /* renamed from: i */
        final /* synthetic */ int f12255i;

        AsyncTaskC3886b(Context context, String str, int i, int i2, int i3, boolean z, int i4) {
            this.f12249c = context;
            this.f12250d = str;
            this.f12251e = i;
            this.f12252f = i2;
            this.f12253g = i3;
            this.f12254h = z;
            this.f12255i = i4;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            int i;
            this.f12247a = new ArrayList<>();
            ContentResolver contentResolver = this.f12249c.getContentResolver();
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0) {
                Cursor query = contentResolver.query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER, "type"}, "number=?", new String[]{this.f12250d}, "date DESC");
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    query.moveToPosition(0);
                    if (query.getInt(query.getColumnIndex("type")) == 3) {
                        Cursor query2 = contentResolver.query(C3714b1.m24450h(), new String[]{"date", ShortCut.NUMBER}, "type=? and new=?", new String[]{"3", "1"}, "date DESC");
                        if (query2 != null && query2.getCount() > 0) {
                            query2.moveToFirst();
                            for (int i2 = 0; i2 < query2.getCount(); i2++) {
                                query2.moveToPosition(i2);
                                Date date = new Date(query2.getLong(query2.getColumnIndex("date")));
                                String string = query2.getString(query2.getColumnIndex(ShortCut.NUMBER));
                                EZSearchResult eZSearchResult = new EZSearchResult();
                                eZSearchResult.setNumber(string);
                                eZSearchResult.setIncomingtime(date.getTime());
                                this.f12247a.add(eZSearchResult);
                            }
                        }
                        if (query2 != null) {
                            query2.close();
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            }
            if (this.f12247a.size() == 0) {
                EZSearchResult eZSearchResult2 = new EZSearchResult();
                eZSearchResult2.setNumber(this.f12250d);
                this.f12247a.add(eZSearchResult2);
            }
            ArrayList<EZSearchResult> arrayList = this.f12247a;
            if (arrayList == null || arrayList.size() <= 0) {
                return null;
            }
            for (int i3 = 0; i3 < this.f12247a.size(); i3++) {
                EZSearchResult eZSearchResult3 = this.f12247a.get(i3);
                this.f12248b = eZSearchResult3;
                String number = eZSearchResult3.getNumber();
                EZSearchContacts m26999d = C2631f.m27001b().m26999d(number);
                String m24217w = C3767h1.m24217w(this.f12249c, this.f12250d);
                if (m24217w == null || "".equals(m24217w)) {
                    this.f12248b.setName("");
                } else {
                    this.f12248b.setName(m24217w);
                    this.f12248b.setContact(true);
                    this.f12248b.setRaw_contact_id(C3767h1.m24262Z(EZCallApplication.m26146c(), this.f12248b.getNumber()));
                }
                this.f12248b.setCount(this.f12251e);
                if (this.f12252f == 0) {
                    this.f12248b.setDate(0L);
                } else {
                    this.f12248b.setDate(1L);
                }
                if (m26999d != null) {
                    if (m26999d.getSubtype_pdt() != null && !"".equals(m26999d.getSubtype_pdt())) {
                        this.f12248b.setSubtype_pdt(m26999d.getSubtype_pdt());
                    }
                    this.f12248b.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                    this.f12248b.setType_label_id(m26999d.getType_label());
                    if (m24217w == null && m26999d.getName() != null && !m26999d.getName().equals("")) {
                        this.f12248b.setName(m26999d.getName());
                    }
                    String old_tel_number = m26999d.getOld_tel_number();
                    if (old_tel_number != null && !"".equals(old_tel_number)) {
                        this.f12248b.setOld_tel_number(old_tel_number);
                    }
                    String m24077b = C3809p0.m24077b(number);
                    if (m24077b == null || "".equals(m24077b)) {
                        String format_tel_number = m26999d.getFormat_tel_number();
                        if (format_tel_number != null && !format_tel_number.equals("")) {
                            this.f12248b.setFormat_tel_number(format_tel_number);
                        }
                    } else {
                        this.f12248b.setFormat_tel_number(m24077b);
                    }
                    this.f12248b.setSubtype(m26999d.getSubtype());
                    this.f12248b.setSubtype_cc(m26999d.getSubtype_cc());
                    this.f12248b.setKeyword(m26999d.getKeyword());
                    this.f12248b.setBlock_count(m26999d.getBlock_count());
                    this.f12248b.setDeclined_count(m26999d.getDeclined_count());
                    String report_count = m26999d.getReport_count();
                    if (report_count == null || "".equals(report_count)) {
                        this.f12248b.setReport_count(0);
                        i = 0;
                    } else {
                        i = Integer.parseInt(report_count);
                        this.f12248b.setReport_count(i);
                    }
                    if (m26999d.getType_label() == null || "".equals(m26999d.getType_label()) || i <= 0) {
                        this.f12248b.setIsSpam(false);
                    } else {
                        this.f12248b.setIsSpam(true);
                    }
                    this.f12248b.setOperator(m26999d.getOperator());
                    if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                        this.f12248b.setType(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                    }
                    this.f12248b.setLocation(m26999d.getBelong_area());
                    this.f12248b.setAddress(m26999d.getAddress());
                    this.f12248b.setIcon(m26999d.getAvatar());
                    this.f12248b.setWebsite(m26999d.getWebsite());
                    this.f12248b.setTag_main(m26999d.getTag_main());
                    this.f12248b.setTag_sub(m26999d.getTag_sub());
                    this.f12248b.setSoft_comments(m26999d.getSoft_comments());
                    this.f12248b.setT_p(m26999d.getT_p());
                    this.f12248b.setTel_number(m26999d.getTel_number());
                    this.f12248b.setComment_tags(m26999d.getComment_tags());
                    this.f12248b.setCountry(m26999d.getCountry());
                    this.f12248b.setIs_activity(m26999d.getIs_activity());
                    this.f12248b.setActivity_count(m26999d.getActivity_count());
                    this.f12248b.setOnedayincomingah(m26999d.getOnedayincomingah());
                    this.f12248b.setWeekoutingnum(m26999d.getWeekoutingnum());
                }
            }
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r8) {
            super.onPostExecute(r8);
            ArrayList<EZSearchResult> arrayList = this.f12247a;
            if (arrayList != null) {
                C3883z0.m23882g(this.f12249c, arrayList, this.f12252f, this.f12253g, this.f12254h, this.f12255i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.z0$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0$c.class */
    public class AsyncTaskC3887c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        EZSearchResult f12256a;

        /* renamed from: b */
        EZSearchContacts f12257b;

        /* renamed from: c */
        final /* synthetic */ String f12258c;

        /* renamed from: d */
        final /* synthetic */ Context f12259d;

        AsyncTaskC3887c(String str, Context context) {
            this.f12258c = str;
            this.f12259d = context;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            int i;
            try {
                C3711a1.m24538g1(false);
                this.f12257b = C2631f.m27001b().m26999d(this.f12258c);
                EZSearchResult eZSearchResult = new EZSearchResult();
                this.f12256a = eZSearchResult;
                eZSearchResult.setNumber(this.f12258c);
                String m24217w = C3767h1.m24217w(this.f12259d, this.f12258c);
                if (m24217w == null || "".equals(m24217w)) {
                    this.f12256a.setName("");
                } else {
                    this.f12256a.setName(m24217w);
                    this.f12256a.setContact(true);
                    this.f12256a.setRaw_contact_id(C3767h1.m24262Z(EZCallApplication.m26146c(), this.f12256a.getNumber()));
                }
                if (this.f12257b == null) {
                    return null;
                }
                this.f12256a.setType_label(C3767h1.m24292D(EZCallApplication.m26146c(), this.f12257b.getType_label()));
                if (m24217w == null && this.f12257b.getName() != null && !this.f12257b.getName().equals("")) {
                    this.f12256a.setName(this.f12257b.getName());
                }
                this.f12256a.setSubtype(this.f12257b.getSubtype());
                this.f12256a.setSubtype_cc(this.f12257b.getSubtype_cc());
                this.f12256a.setKeyword(this.f12257b.getKeyword());
                String old_tel_number = this.f12257b.getOld_tel_number();
                if (old_tel_number != null && !"".equals(old_tel_number)) {
                    this.f12256a.setOld_tel_number(old_tel_number);
                }
                String format_tel_number = this.f12257b.getFormat_tel_number();
                if (format_tel_number != null && !format_tel_number.equals("")) {
                    this.f12256a.setFormat_tel_number(format_tel_number);
                }
                String report_count = this.f12257b.getReport_count();
                if (report_count == null || "".equals(report_count)) {
                    this.f12256a.setReport_count(0);
                    i = 0;
                } else {
                    i = Integer.parseInt(report_count);
                    this.f12256a.setReport_count(i);
                }
                if (this.f12257b.getType_label() == null || "".equals(this.f12257b.getType_label()) || i <= 0) {
                    this.f12256a.setIsSpam(false);
                } else {
                    this.f12256a.setIsSpam(true);
                }
                this.f12256a.setOperator(this.f12257b.getOperator());
                if (this.f12257b.getType() != null && ("Mobile".equals(this.f12257b.getType()) || "Fixed line".equals(this.f12257b.getType()))) {
                    this.f12256a.setType(C3767h1.m24280J(EZCallApplication.m26146c(), this.f12257b.getType()));
                }
                this.f12256a.setLocation(this.f12257b.getBelong_area());
                this.f12256a.setAddress(this.f12257b.getAddress());
                this.f12256a.setIcon(this.f12257b.getAvatar());
                this.f12256a.setWebsite(this.f12257b.getWebsite());
                this.f12256a.setTag_main(this.f12257b.getTag_main());
                this.f12256a.setTag_sub(this.f12257b.getTag_sub());
                this.f12256a.setSoft_comments(this.f12257b.getSoft_comments());
                this.f12256a.setT_p(this.f12257b.getT_p());
                this.f12256a.setTel_number(this.f12257b.getTel_number());
                this.f12256a.setComment_tags(this.f12257b.getComment_tags());
                this.f12256a.setCountry(this.f12257b.getCountry());
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            EZSearchResult eZSearchResult = this.f12256a;
            if (eZSearchResult != null) {
                C3883z0.m23884e(this.f12259d, eZSearchResult);
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.z0$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/z0$d.class */
    public class C3888d implements AbstractC2906a {

        /* renamed from: a */
        final /* synthetic */ EZSearchResult f12260a;

        /* renamed from: b */
        final /* synthetic */ Context f12261b;

        /* renamed from: c */
        final /* synthetic */ int f12262c;

        C3888d(EZSearchResult eZSearchResult, Context context, int i) {
            this.f12260a = eZSearchResult;
            this.f12261b = context;
            this.f12262c = i;
        }

        @Override // com.allinone.callerid.p162i.p163a.p183m.AbstractC2906a
        /* renamed from: a */
        public void mo23874a(boolean z) {
            String str;
            if (!z) {
                try {
                    String iso_code = C3806p.m24083d(this.f12261b).getIso_code();
                    if (iso_code == null || !iso_code.equals("US/USA")) {
                        Intent intent = new Intent(this.f12261b, AnsweredActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putParcelable("contact_missed", this.f12260a);
                        bundle.putInt("isContact", this.f12262c);
                        intent.putExtras(bundle);
                        intent.setFlags(268435456);
                        this.f12261b.startActivity(intent);
                    } else {
                        Intent intent2 = new Intent(this.f12261b, ReportSubtypeActivity.class);
                        Bundle bundle2 = new Bundle();
                        bundle2.putParcelable("contact_subtype", this.f12260a);
                        bundle2.putBoolean("is_answer_end", true);
                        intent2.putExtras(bundle2);
                        intent2.setFlags(268435456);
                        this.f12261b.startActivity(intent2);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (!this.f12260a.isSpam() && this.f12260a.getIs_activity() != 1 && this.f12260a.getReport_count() <= 5) {
                if (this.f12260a.getOnedayincomingah() >= 3) {
                    try {
                        Intent intent3 = new Intent(this.f12261b, GuideReportActivity.class);
                        intent3.setFlags(268435456);
                        intent3.putExtra("haoma", this.f12260a.getOld_tel_number());
                        intent3.putExtra("cishu", this.f12260a.getOnedayincomingah());
                        intent3.putExtra("Report_count", this.f12260a.getIs_activity());
                        intent3.putExtra("Type_label", C3767h1.m24292D(EZCallApplication.m26146c(), this.f12260a.getType_label()));
                        intent3.putExtra("Type_label_id", this.f12260a.getType_label());
                        intent3.putExtra("T_p", this.f12260a.getT_p());
                        intent3.putExtra("icon", this.f12260a.getIcon());
                        this.f12261b.startActivity(intent3);
                        C2907b.m26431f(this.f12260a.getNumber());
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                try {
                    String iso_code2 = C3806p.m24083d(this.f12261b).getIso_code();
                    if (iso_code2 == null || !iso_code2.equals("US/USA")) {
                        Intent intent4 = new Intent(this.f12261b, AnsweredActivity.class);
                        Bundle bundle3 = new Bundle();
                        bundle3.putParcelable("contact_missed", this.f12260a);
                        bundle3.putInt("isContact", this.f12262c);
                        intent4.putExtras(bundle3);
                        intent4.setFlags(268435456);
                        this.f12261b.startActivity(intent4);
                    } else {
                        Intent intent5 = new Intent(this.f12261b, ReportSubtypeActivity.class);
                        Bundle bundle4 = new Bundle();
                        bundle4.putParcelable("contact_subtype", this.f12260a);
                        bundle4.putBoolean("is_answer_end", true);
                        intent5.putExtras(bundle4);
                        intent5.setFlags(268435456);
                        this.f12261b.startActivity(intent5);
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } else {
                boolean isSpam = this.f12260a.isSpam();
                try {
                    if (this.f12260a.isSpam()) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("tony", "is_spam");
                        }
                        C3810q.m24071b().m24070c("spam_comment_show");
                    } else if (this.f12260a.getIs_activity() == 1) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("tony", "is_activity");
                        }
                        str = this.f12260a.getActivity_count();
                        C3810q.m24071b().m24070c("activity_comment_show");
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24951E0(this.f12260a.getNumber());
                        callLogBean.m24939L0(String.valueOf(this.f12260a.getReport_count()));
                        callLogBean.m24901e1(this.f12260a.getType_label());
                        callLogBean.m24898f1(this.f12260a.getType_label_id());
                        callLogBean.m24915Z0(this.f12260a.getT_p());
                        Intent intent6 = new Intent();
                        Bundle bundle5 = new Bundle();
                        bundle5.putParcelable("number_content", callLogBean);
                        bundle5.putInt("is_activity", !isSpam);
                        bundle5.putString("activity_count", str);
                        intent6.putExtras(bundle5);
                        intent6.setClass(this.f12261b, SubmitCommentActivity.class);
                        intent6.setFlags(268435456);
                        this.f12261b.startActivity(intent6);
                        C2907b.m26431f(this.f12260a.getNumber());
                        return;
                    } else {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("tony", "is_reportcount5");
                        }
                        C3810q.m24071b().m24070c("reportcount_comment_show");
                    }
                    CallLogBean callLogBean2 = new CallLogBean();
                    callLogBean2.m24951E0(this.f12260a.getNumber());
                    callLogBean2.m24939L0(String.valueOf(this.f12260a.getReport_count()));
                    callLogBean2.m24901e1(this.f12260a.getType_label());
                    callLogBean2.m24898f1(this.f12260a.getType_label_id());
                    callLogBean2.m24915Z0(this.f12260a.getT_p());
                    Intent intent62 = new Intent();
                    Bundle bundle52 = new Bundle();
                    bundle52.putParcelable("number_content", callLogBean2);
                    bundle52.putInt("is_activity", !isSpam);
                    bundle52.putString("activity_count", str);
                    intent62.putExtras(bundle52);
                    intent62.setClass(this.f12261b, SubmitCommentActivity.class);
                    intent62.setFlags(268435456);
                    this.f12261b.startActivity(intent62);
                    C2907b.m26431f(this.f12260a.getNumber());
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
                str = "";
            }
        }
    }

    /* renamed from: c */
    public static void m23886c(Context context, String str) {
        new AsyncTaskC3887c(str, context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* renamed from: d */
    public static void m23885d(Context context, int i, int i2, String str, boolean z, int i3, int i4) {
        new AsyncTaskC3886b(context, str, i4, i, i2, z, i3).executeOnExecutor(C3735e1.m24405a(), new Void[0]);
    }

    /* renamed from: e */
    public static void m23884e(Context context, EZSearchResult eZSearchResult) {
        try {
            Intent intent = new Intent(context, BlockedHangupActivity.class);
            eZSearchResult.setIssetfav(false);
            Bundle bundle = new Bundle();
            bundle.putParcelable("contact_missed", eZSearchResult);
            intent.putExtras(bundle);
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    private static void m23883f(Context context, ArrayList<EZSearchResult> arrayList, int i, int i2) {
        try {
            Intent intent = new Intent(context, MissedCallActivity.class);
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("contact_missed", arrayList);
            bundle.putInt("unreadkey", i);
            bundle.putInt("isContact", i2);
            intent.putExtras(bundle);
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    public static void m23882g(Context context, ArrayList<EZSearchResult> arrayList, int i, int i2, boolean z, int i3) {
        EZSearchResult eZSearchResult = arrayList.get(0);
        if (i3 != 1) {
            if (i3 != 0) {
                return;
            }
            if (i2 != 1) {
                C3810q.m24071b().m24070c("unknow_answered_hungup");
                C2907b.m26435b(eZSearchResult.getNumber(), new C3888d(eZSearchResult, context, i2));
                return;
            }
            try {
                Intent intent = new Intent(context, MissedCallActivityNew.class);
                eZSearchResult.setIssetfav(true);
                Bundle bundle = new Bundle();
                bundle.putParcelable("contact_missed", eZSearchResult);
                bundle.putBoolean("isuserrejected", true);
                bundle.putBoolean("answer", true);
                bundle.putInt("isContact", i2);
                intent.putExtras(bundle);
                intent.setFlags(268435456);
                context.startActivity(intent);
                C3810q.m24071b().m24070c("answered_dialog_contact");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (i == 1 && arrayList.size() > 1) {
            m23883f(context, arrayList, arrayList.size(), i2);
        } else if (i == 1 && i2 == 0 && eZSearchResult.getWeekoutingnum() >= 3 && System.currentTimeMillis() - C3711a1.m24468y() > 86400000) {
            try {
                C3711a1.m24558b1(System.currentTimeMillis());
                Intent intent2 = new Intent(EZCallApplication.m26146c(), GuideAddContantActivity.class);
                intent2.putExtra("haoma", eZSearchResult.getOld_tel_number());
                intent2.putExtra("touxiang", eZSearchResult.getIcon());
                intent2.putExtra("cishu", eZSearchResult.getWeekoutingnum());
                intent2.setFlags(268435456);
                context.startActivity(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            try {
                Intent intent3 = new Intent(context, MissedCallActivityNew.class);
                eZSearchResult.setIssetfav(false);
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("contact_missed", eZSearchResult);
                bundle2.putBoolean("isuserrejected", z);
                bundle2.putInt("isContact", i2);
                intent3.putExtras(bundle2);
                intent3.setFlags(268435456);
                context.startActivity(intent3);
                C3810q.m24071b().m24070c("missed_call_dialog_single");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: h */
    public static void m23881h(Context context) {
        try {
            if (!C3767h1.m24261a(context)) {
                return;
            }
            C2857b.m26502a(context, new C3884a(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
