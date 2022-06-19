package com.callerid.block.p040h.p041a.p042b;

import android.os.AsyncTask;
import com.callerid.block.p036d.C0944a;
import com.callerid.block.util.C1208q0;
/* renamed from: com.callerid.block.h.a.b.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/b/a.class */
public class C0962a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.h.a.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/b/a$a.class */
    public static class AsyncTaskC0963a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a */
        private AbstractC0966b f4387a;

        AsyncTaskC0963a(AbstractC0966b abstractC0966b) {
            this.f4387a = abstractC0966b;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(C0944a.m10482c().m10484a());
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            this.f4387a.m10438a(bool.booleanValue());
        }
    }

    /* renamed from: com.callerid.block.h.a.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/b/a$b.class */
    private static class AsyncTaskC0964b extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        private AbstractC0967c f4388a;

        AsyncTaskC0964b(AbstractC0967c abstractC0967c) {
            this.f4388a = abstractC0967c;
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            C0944a.m10482c().m10483b();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f4388a.close();
        }
    }

    /* renamed from: com.callerid.block.h.a.b.a$c */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/h/a/b/a$c.class */
    private static class AsyncTaskC0965c extends AsyncTask<String, Void, Void> {
        AsyncTaskC0965c() {
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            C0944a.m10482c().m10481d();
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r4) {
            super.onPostExecute(r4);
        }
    }

    /* renamed from: a */
    public static void m10447a(AbstractC0966b abstractC0966b) {
        try {
            new AsyncTaskC0963a(abstractC0966b).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m10446b(AbstractC0967c abstractC0967c) {
        try {
            new AsyncTaskC0964b(abstractC0967c).executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m10445c() {
        try {
            new AsyncTaskC0965c().executeOnExecutor(C1208q0.m9629a(), new String[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
