package com.allinone.callerid.p144d.p150e;

import android.os.AsyncTask;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.util.C3735e1;
import java.util.ArrayList;
/* renamed from: com.allinone.callerid.d.e.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/c.class */
public class C2545c {

    /* renamed from: com.allinone.callerid.d.e.c$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/c$a.class */
    public interface AbstractC2546a {
        /* renamed from: a */
        void mo27139a(ArrayList<HomeInfo> arrayList, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.c$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/c$b.class */
    public static class AsyncTaskC2547b extends AsyncTask<String, String, ArrayList<HomeInfo>> {

        /* renamed from: a */
        private AbstractC2546a f8949a;

        /* renamed from: b */
        private int f8950b;

        /* renamed from: c */
        private String f8951c;

        /* renamed from: e */
        private boolean f8953e;

        /* renamed from: g */
        private ArrayList<HomeInfo> f8955g;

        /* renamed from: d */
        private boolean f8952d = false;

        /* renamed from: f */
        private boolean f8954f = false;

        AsyncTaskC2547b(int i, String str, boolean z, AbstractC2546a abstractC2546a) {
            this.f8953e = false;
            this.f8949a = abstractC2546a;
            this.f8950b = i;
            this.f8951c = str;
            this.f8953e = z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
            if ("en_CA".equals(r0) != false) goto L6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:203:0x0462  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x047e  */
        /* JADX WARN: Removed duplicated region for block: B:235:0x050a  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x057b A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v295, types: [long] */
        /* JADX WARN: Type inference failed for: r0v299, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r1v97 */
        /* JADX WARN: Type inference failed for: r1v99 */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r24v1 */
        /* JADX WARN: Type inference failed for: r24v2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList<com.allinone.callerid.callscreen.bean.HomeInfo> doInBackground(java.lang.String... r7) {
            /*
                Method dump skipped, instructions count: 1527
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p144d.p150e.C2545c.AsyncTaskC2547b.doInBackground(java.lang.String[]):java.util.ArrayList");
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<HomeInfo> arrayList) {
            super.onPostExecute(arrayList);
            AbstractC2546a abstractC2546a = this.f8949a;
            if (abstractC2546a != null) {
                abstractC2546a.mo27139a(arrayList, this.f8952d);
            }
        }

        /* renamed from: c */
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.c$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/c$c.class */
    public static class AsyncTaskC2548c extends AsyncTask<String, String, ArrayList<HomeInfo>> {

        /* renamed from: a */
        private AbstractC2546a f8956a;

        /* renamed from: b */
        private ArrayList<HomeInfo> f8957b;

        AsyncTaskC2548c(ArrayList<HomeInfo> arrayList, AbstractC2546a abstractC2546a) {
            this.f8956a = abstractC2546a;
            this.f8957b = arrayList;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0097 A[Catch: Exception -> 0x0153, TryCatch #0 {Exception -> 0x0153, blocks: (B:2:0x0000, B:6:0x0009, B:8:0x0014, B:11:0x0025, B:13:0x003d, B:15:0x004a, B:17:0x0054, B:18:0x0059, B:18:0x0059, B:19:0x005c, B:21:0x0063, B:24:0x0073, B:25:0x0080, B:26:0x008a, B:26:0x008a, B:27:0x008d, B:29:0x0097, B:30:0x009c, B:30:0x009c, B:31:0x009f, B:33:0x00ad, B:35:0x00b3, B:37:0x00db, B:38:0x00f1, B:38:0x00f1, B:39:0x00f4, B:41:0x0102, B:43:0x0113, B:45:0x011d, B:47:0x012b, B:48:0x014d), top: B:53:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00ad A[Catch: Exception -> 0x0153, TRY_ENTER, TryCatch #0 {Exception -> 0x0153, blocks: (B:2:0x0000, B:6:0x0009, B:8:0x0014, B:11:0x0025, B:13:0x003d, B:15:0x004a, B:17:0x0054, B:18:0x0059, B:18:0x0059, B:19:0x005c, B:21:0x0063, B:24:0x0073, B:25:0x0080, B:26:0x008a, B:26:0x008a, B:27:0x008d, B:29:0x0097, B:30:0x009c, B:30:0x009c, B:31:0x009f, B:33:0x00ad, B:35:0x00b3, B:37:0x00db, B:38:0x00f1, B:38:0x00f1, B:39:0x00f4, B:41:0x0102, B:43:0x0113, B:45:0x011d, B:47:0x012b, B:48:0x014d), top: B:53:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0102 A[Catch: Exception -> 0x0153, TRY_ENTER, TryCatch #0 {Exception -> 0x0153, blocks: (B:2:0x0000, B:6:0x0009, B:8:0x0014, B:11:0x0025, B:13:0x003d, B:15:0x004a, B:17:0x0054, B:18:0x0059, B:18:0x0059, B:19:0x005c, B:21:0x0063, B:24:0x0073, B:25:0x0080, B:26:0x008a, B:26:0x008a, B:27:0x008d, B:29:0x0097, B:30:0x009c, B:30:0x009c, B:31:0x009f, B:33:0x00ad, B:35:0x00b3, B:37:0x00db, B:38:0x00f1, B:38:0x00f1, B:39:0x00f4, B:41:0x0102, B:43:0x0113, B:45:0x011d, B:47:0x012b, B:48:0x014d), top: B:53:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x014d A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.ArrayList<com.allinone.callerid.callscreen.bean.HomeInfo> doInBackground(java.lang.String... r4) {
            /*
                Method dump skipped, instructions count: 349
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p144d.p150e.C2545c.AsyncTaskC2548c.doInBackground(java.lang.String[]):java.util.ArrayList");
        }

        /* renamed from: b */
        public void onPostExecute(ArrayList<HomeInfo> arrayList) {
            super.onPostExecute(arrayList);
            AbstractC2546a abstractC2546a = this.f8956a;
            if (abstractC2546a != null) {
                abstractC2546a.mo27139a(arrayList, false);
            }
        }
    }

    /* renamed from: a */
    public static void m27141a(int i, String str, boolean z, AbstractC2546a abstractC2546a) {
        new AsyncTaskC2547b(i, str, z, abstractC2546a).executeOnExecutor(C3735e1.m24405a(), new String[0]);
    }

    /* renamed from: b */
    public static void m27140b(ArrayList<HomeInfo> arrayList, AbstractC2546a abstractC2546a) {
        new AsyncTaskC2548c(arrayList, abstractC2546a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
