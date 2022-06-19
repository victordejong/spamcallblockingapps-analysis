package com.callerid.block.p040h.p041a.p044d;

import android.os.AsyncTask;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.h.a.d.h */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/h.class */
public class C0987h {

    /* renamed from: com.callerid.block.h.a.d.h$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/h$a.class */
    private static class AsyncTaskC0988a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0980e f4418a;

        /* renamed from: b */
        private List<CallLogBean> f4419b;

        /* renamed from: c */
        private ArrayList<String> f4420c = new ArrayList<>();

        /* renamed from: d */
        private int f4421d;

        /* renamed from: e */
        private int f4422e;

        AsyncTaskC0988a(int i, int i2, List<CallLogBean> list, AbstractC0980e abstractC0980e) {
            this.f4418a = abstractC0980e;
            this.f4419b = list;
            this.f4421d = i;
            this.f4422e = i2;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            try {
                List<CallLogBean> list = this.f4419b;
                if (list == null || list.size() == 0) {
                    return "";
                }
                int min = Math.min(this.f4421d + this.f4422e, this.f4419b.size());
                if (C1227w.f5084a) {
                    C1227w.m9527a("searchList", "length:" + min);
                }
                for (int i = this.f4421d; i < min; i++) {
                    CallLogBean callLogBean = this.f4419b.get(i);
                    if (callLogBean != null && !callLogBean.m10084N() && !callLogBean.m10083O() && callLogBean.m10086L() && System.currentTimeMillis() - callLogBean.m10029x() > 259200000 && callLogBean.m10045o() != null && !"".equals(callLogBean.m10045o())) {
                        this.f4420c.add(callLogBean.m10045o());
                        callLogBean.m10072Z(true);
                    }
                }
                ArrayList<String> arrayList = this.f4420c;
                if (arrayList == null || arrayList.size() <= 0) {
                    return "";
                }
                for (int i2 = 0; i2 < this.f4420c.size(); i2++) {
                    for (int size = this.f4420c.size() - 1; size > i2; size--) {
                        if (this.f4420c.get(i2).equals(this.f4420c.get(size))) {
                            this.f4420c.remove(size);
                        }
                    }
                }
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4418a.m10412a(this.f4420c);
        }
    }

    /* renamed from: com.callerid.block.h.a.d.h$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/d/h$b.class */
    private static class AsyncTaskC0989b extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private AbstractC0990i f4423a;

        /* renamed from: b */
        private List<CallLogBean> f4424b;

        /* renamed from: c */
        private List<CallLogBean> f4425c = new ArrayList();

        /* renamed from: d */
        private List<String> f4426d = new ArrayList();

        /* renamed from: e */
        private long f4427e;

        AsyncTaskC0989b(List<CallLogBean> list, AbstractC0990i abstractC0990i) {
            this.f4423a = abstractC0990i;
            this.f4424b = list;
            this.f4425c.addAll(list);
        }

        /* JADX WARN: Removed duplicated region for block: B:108:0x0341 A[Catch: Exception -> 0x03d1, TRY_ENTER, TryCatch #0 {Exception -> 0x03d1, blocks: (B:2:0x0000, B:4:0x0007, B:7:0x0023, B:9:0x002c, B:11:0x0035, B:13:0x0040, B:15:0x004e, B:17:0x0063, B:19:0x006b, B:21:0x0073, B:23:0x007b, B:25:0x008b, B:27:0x0093, B:29:0x00ab, B:31:0x00b3, B:33:0x00c0, B:35:0x00d7, B:36:0x00dd, B:37:0x00e3, B:39:0x00ed, B:41:0x0141, B:44:0x014f, B:46:0x0155, B:48:0x015d, B:50:0x016a, B:52:0x0175, B:54:0x017d, B:56:0x018d, B:58:0x0195, B:60:0x019d, B:62:0x01a5, B:64:0x01b5, B:66:0x01bd, B:68:0x01ca, B:69:0x01e2, B:71:0x01e8, B:73:0x020c, B:74:0x0213, B:76:0x0220, B:78:0x0228, B:80:0x0237, B:82:0x023e, B:84:0x0245, B:86:0x024c, B:88:0x025b, B:90:0x0262, B:92:0x026e, B:94:0x027c, B:95:0x0292, B:97:0x0298, B:100:0x02c4, B:102:0x02d5, B:103:0x02fa, B:105:0x0313, B:106:0x0338, B:108:0x0341, B:112:0x034d, B:114:0x035b, B:118:0x036d, B:120:0x038b, B:121:0x0396, B:123:0x03a2, B:125:0x03a8), top: B:129:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:114:0x035b A[Catch: Exception -> 0x03d1, TryCatch #0 {Exception -> 0x03d1, blocks: (B:2:0x0000, B:4:0x0007, B:7:0x0023, B:9:0x002c, B:11:0x0035, B:13:0x0040, B:15:0x004e, B:17:0x0063, B:19:0x006b, B:21:0x0073, B:23:0x007b, B:25:0x008b, B:27:0x0093, B:29:0x00ab, B:31:0x00b3, B:33:0x00c0, B:35:0x00d7, B:36:0x00dd, B:37:0x00e3, B:39:0x00ed, B:41:0x0141, B:44:0x014f, B:46:0x0155, B:48:0x015d, B:50:0x016a, B:52:0x0175, B:54:0x017d, B:56:0x018d, B:58:0x0195, B:60:0x019d, B:62:0x01a5, B:64:0x01b5, B:66:0x01bd, B:68:0x01ca, B:69:0x01e2, B:71:0x01e8, B:73:0x020c, B:74:0x0213, B:76:0x0220, B:78:0x0228, B:80:0x0237, B:82:0x023e, B:84:0x0245, B:86:0x024c, B:88:0x025b, B:90:0x0262, B:92:0x026e, B:94:0x027c, B:95:0x0292, B:97:0x0298, B:100:0x02c4, B:102:0x02d5, B:103:0x02fa, B:105:0x0313, B:106:0x0338, B:108:0x0341, B:112:0x034d, B:114:0x035b, B:118:0x036d, B:120:0x038b, B:121:0x0396, B:123:0x03a2, B:125:0x03a8), top: B:129:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:125:0x03a8 A[Catch: Exception -> 0x03d1, TRY_LEAVE, TryCatch #0 {Exception -> 0x03d1, blocks: (B:2:0x0000, B:4:0x0007, B:7:0x0023, B:9:0x002c, B:11:0x0035, B:13:0x0040, B:15:0x004e, B:17:0x0063, B:19:0x006b, B:21:0x0073, B:23:0x007b, B:25:0x008b, B:27:0x0093, B:29:0x00ab, B:31:0x00b3, B:33:0x00c0, B:35:0x00d7, B:36:0x00dd, B:37:0x00e3, B:39:0x00ed, B:41:0x0141, B:44:0x014f, B:46:0x0155, B:48:0x015d, B:50:0x016a, B:52:0x0175, B:54:0x017d, B:56:0x018d, B:58:0x0195, B:60:0x019d, B:62:0x01a5, B:64:0x01b5, B:66:0x01bd, B:68:0x01ca, B:69:0x01e2, B:71:0x01e8, B:73:0x020c, B:74:0x0213, B:76:0x0220, B:78:0x0228, B:80:0x0237, B:82:0x023e, B:84:0x0245, B:86:0x024c, B:88:0x025b, B:90:0x0262, B:92:0x026e, B:94:0x027c, B:95:0x0292, B:97:0x0298, B:100:0x02c4, B:102:0x02d5, B:103:0x02fa, B:105:0x0313, B:106:0x0338, B:108:0x0341, B:112:0x034d, B:114:0x035b, B:118:0x036d, B:120:0x038b, B:121:0x0396, B:123:0x03a2, B:125:0x03a8), top: B:129:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:185:? A[RETURN, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.String... r6) {
            /*
                Method dump skipped, instructions count: 985
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.p040h.p041a.p044d.C0987h.AsyncTaskC0989b.doInBackground(java.lang.String[]):java.lang.String");
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            this.f4423a.m10392a(this.f4424b, this.f4426d);
        }
    }

    /* renamed from: a */
    public static void m10398a(int i, int i2, List<CallLogBean> list, AbstractC0980e abstractC0980e) {
        try {
            AsyncTaskC0988a asyncTaskC0988a = new AsyncTaskC0988a(i, i2, list, abstractC0980e);
            if (asyncTaskC0988a.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC0988a.cancel(true);
            new AsyncTaskC0988a(i, i2, list, abstractC0980e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10397b(List<CallLogBean> list, AbstractC0990i abstractC0990i) {
        try {
            AsyncTaskC0989b asyncTaskC0989b = new AsyncTaskC0989b(list, abstractC0990i);
            if (asyncTaskC0989b.getStatus() == AsyncTask.Status.RUNNING) {
                return;
            }
            asyncTaskC0989b.cancel(true);
            new AsyncTaskC0989b(list, abstractC0990i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
