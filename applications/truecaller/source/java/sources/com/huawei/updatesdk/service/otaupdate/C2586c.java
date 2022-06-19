package com.huawei.updatesdk.service.otaupdate;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p111b.p118e.C2561f;
import com.huawei.updatesdk.p111b.p120g.C2567c;
import com.huawei.updatesdk.p111b.p121h.C2574d;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: com.huawei.updatesdk.service.otaupdate.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/c.class */
public class C2586c {

    /* renamed from: com.huawei.updatesdk.service.otaupdate.c$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/c$a.class */
    public interface AbstractC2587a {
        /* renamed from: a */
        void m36538a(Boolean bool);
    }

    /* renamed from: com.huawei.updatesdk.service.otaupdate.c$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/c$b.class */
    public static class AsyncTaskC2588b extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a */
        public AbstractC2587a f8315a;

        /* renamed from: b */
        public String f8316b;

        public AsyncTaskC2588b(AbstractC2587a abstractC2587a) {
            this.f8315a = abstractC2587a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x0121, code lost:
            if (0 == 0) goto L50;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r8) {
            /*
                Method dump skipped, instructions count: 339
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.huawei.updatesdk.service.otaupdate.C2586c.AsyncTaskC2588b.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            AbstractC2587a abstractC2587a = this.f8315a;
            if (abstractC2587a != null) {
                abstractC2587a.m36538a(bool);
            }
        }

        /* renamed from: a */
        public void m36536a(String str) {
            this.f8316b = str;
        }
    }

    /* renamed from: a */
    public void m36539a(Context context, String str, AbstractC2587a abstractC2587a, boolean z) {
        Boolean bool = Boolean.FALSE;
        if (!C2561f.m36617a(z).m36622c(context) || !C2591f.m36509e().m36510d()) {
            abstractC2587a.m36538a(bool);
            return;
        }
        String format = String.format(Locale.ROOT, "content://%s.commondata/item/4", str);
        if (!C2574d.m36569a(context, Uri.parse(format), str)) {
            abstractC2587a.m36538a(bool);
            return;
        }
        AsyncTaskC2588b asyncTaskC2588b = new AsyncTaskC2588b(abstractC2587a);
        try {
            asyncTaskC2588b.m36536a(format);
            asyncTaskC2588b.executeOnExecutor(C2567c.f8275a, new Void[0]);
            asyncTaskC2588b.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            asyncTaskC2588b.cancel(true);
            C2511a.m36863a("AutoUpdateUtil", "init AutoUpdateInfo error: " + e.toString());
            abstractC2587a.m36538a(bool);
        }
    }
}
