package com.allinone.callerid.p162i.p163a.p186p;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.BlockCall;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.model.EZSearchContacts;
import com.allinone.callerid.p157f.C2621b;
import com.allinone.callerid.p157f.C2631f;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
/* renamed from: com.allinone.callerid.i.a.p.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/p/c.class */
public class C2927c {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.p.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/p/c$a.class */
    public static class AsyncTaskC2928a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        ArrayList<CallLogBean> f9698a;

        /* renamed from: b */
        AbstractC2925a f9699b;

        /* renamed from: com.allinone.callerid.i.a.p.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/p/c$a$a.class */
        public class C2929a implements Comparator<BlockCall> {
            C2929a() {
                AsyncTaskC2928a.this = r4;
            }

            /* renamed from: a */
            public int compare(BlockCall blockCall, BlockCall blockCall2) {
                return ((int) blockCall2.getTime()) - ((int) blockCall.getTime());
            }
        }

        AsyncTaskC2928a(AbstractC2925a abstractC2925a) {
            this.f9699b = abstractC2925a;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                List<BlockCall> m27022b = C2621b.m27023a().m27022b();
                if (m27022b == null || m27022b.size() <= 0) {
                    return "6888";
                }
                this.f9698a = new ArrayList<>();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("blockcall", "blockedlist:" + m27022b.toString());
                }
                Collections.sort(m27022b, new C2929a());
                for (int i = 0; i < m27022b.size(); i++) {
                    BlockCall blockCall = m27022b.get(i);
                    CallLogBean callLogBean = new CallLogBean();
                    callLogBean.m24951E0(blockCall.getNumber());
                    callLogBean.m24899f0(new Date(blockCall.getTime()));
                    EZSearchContacts m26999d = C2631f.m27001b().m26999d(callLogBean.m24880o());
                    if (m26999d != null) {
                        callLogBean.m24931P0(m26999d.isSearched());
                        if (m26999d.getType() != null && ("Mobile".equals(m26999d.getType()) || "Fixed line".equals(m26999d.getType()))) {
                            callLogBean.m24933O0(C3767h1.m24280J(EZCallApplication.m26146c(), m26999d.getType()));
                        }
                        callLogBean.m24901e1(C3767h1.m24292D(EZCallApplication.m26146c(), m26999d.getType_label()));
                        callLogBean.m24898f1(m26999d.getType_label());
                        callLogBean.m24863x0(m26999d.getFormat_tel_number());
                        callLogBean.m24945H0(m26999d.getOperator());
                        callLogBean.m24896g0(m26999d.getBelong_area());
                        callLogBean.m24939L0(m26999d.getReport_count());
                        callLogBean.m24937M0(m26999d.getName());
                        callLogBean.m24913a1(m26999d.getTel_number());
                        callLogBean.m24915Z0(m26999d.getT_p());
                        callLogBean.m24947G0(m26999d.getOld_tel_number());
                        callLogBean.m24905d0(m26999d.getAddress());
                        callLogBean.m24902e0(m26999d.getAvatar());
                        callLogBean.m24865w0(m26999d.getFb_avatar());
                        callLogBean.m24895g1(m26999d.getType_tags());
                        callLogBean.m24953D0(m26999d.getName_tags());
                        callLogBean.m24879o0(m26999d.getComment_tags());
                        callLogBean.m24875r0(m26999d.getCountry());
                        callLogBean.m24935N0(m26999d.getSearch_time());
                        callLogBean.m24867v0(m26999d.getFaild_error_log());
                    }
                    this.f9698a.add(callLogBean);
                }
                return "6888";
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("6888".equals(str)) {
                this.f9699b.mo25644a(this.f9698a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.p.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/p/c$b.class */
    public static class AsyncTaskC2930b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        AbstractC2926b f9701a;

        /* renamed from: b */
        private int f9702b;

        AsyncTaskC2930b(AbstractC2926b abstractC2926b) {
            this.f9701a = abstractC2926b;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String str;
            try {
                List<BlockCall> m27022b = C2621b.m27023a().m27022b();
                str = "0";
                if (m27022b != null) {
                    str = String.valueOf(m27022b.size());
                }
            } catch (Exception e) {
                e.printStackTrace();
                str = "0";
            }
            this.f9702b = C3711a1.m24479v0();
            return str;
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f9701a.mo25756a(str, this.f9702b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.i.a.p.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/p/c$c.class */
    public static class AsyncTaskC2931c extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        ArrayList<CallLogBean> f9703a;

        /* renamed from: b */
        AbstractC2925a f9704b;

        AsyncTaskC2931c(AbstractC2925a abstractC2925a, ArrayList<CallLogBean> arrayList) {
            this.f9704b = abstractC2925a;
            this.f9703a = arrayList;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            String string;
            try {
                ArrayList<CallLogBean> arrayList = this.f9703a;
                if (arrayList == null || arrayList.size() == 0) {
                    return null;
                }
                ContentResolver contentResolver = EZCallApplication.m26146c().getContentResolver();
                for (int i = 0; i < this.f9703a.size(); i++) {
                    try {
                        CallLogBean callLogBean = this.f9703a.get(i);
                        String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), callLogBean.m24880o());
                        if (m24217w == null || "".equals(m24217w)) {
                            callLogBean.m24878p0(false);
                        } else {
                            callLogBean.m24878p0(true);
                            callLogBean.m24955C0(m24217w);
                            int m24262Z = C3767h1.m24262Z(EZCallApplication.m26146c(), callLogBean.m24880o());
                            callLogBean.m24942J0(m24262Z);
                            Cursor query = contentResolver.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data2"}, "contact_id=?", new String[]{m24262Z + ""}, null);
                            if (query != null && query.moveToNext() && (string = query.getString(query.getColumnIndex("data2"))) != null && !"".equals(string)) {
                                int parseInt = Integer.parseInt(string);
                                if (parseInt == 1) {
                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.home));
                                } else if (parseInt == 2) {
                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.mobile));
                                } else if (parseInt == 3) {
                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.work));
                                } else if (parseInt == 4) {
                                    callLogBean.m24949F0(EZCallApplication.m26146c().getResources().getString(R$string.workfax));
                                }
                            }
                            if (query != null) {
                                query.close();
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                return "8888";
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            if ("8888".equals(str)) {
                this.f9704b.mo25644a(this.f9703a);
            }
        }
    }

    /* renamed from: a */
    public static void m26405a(AbstractC2925a abstractC2925a) {
        try {
            AsyncTaskC2928a asyncTaskC2928a = new AsyncTaskC2928a(abstractC2925a);
            if (asyncTaskC2928a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2928a.cancel(true);
            new AsyncTaskC2928a(abstractC2925a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m26404b(AbstractC2926b abstractC2926b) {
        try {
            new AsyncTaskC2930b(abstractC2926b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m26403c(AbstractC2925a abstractC2925a, ArrayList<CallLogBean> arrayList) {
        try {
            AsyncTaskC2931c asyncTaskC2931c = new AsyncTaskC2931c(abstractC2925a, arrayList);
            if (asyncTaskC2931c.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC2931c.cancel(true);
            new AsyncTaskC2931c(abstractC2925a, arrayList).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
