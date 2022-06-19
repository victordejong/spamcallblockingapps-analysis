package com.huawei.secure.android.common.ssl.util;

import android.content.Context;
import android.os.AsyncTask;
import java.io.InputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.util.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/e.class */
public class AsyncTaskC2491e extends AsyncTask<Context, Integer, Boolean> {

    /* renamed from: a */
    private static final String f8101a = AsyncTaskC2491e.class.getSimpleName();

    /* renamed from: a */
    public Boolean doInBackground(Context... contextArr) {
        InputStream inputStream;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            inputStream = BksUtil.getBksFromTss(contextArr[0]);
        } catch (Exception e) {
            String str = f8101a;
            StringBuilder m8728C = C22128a.m8728C("doInBackground: exception : ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str, m8728C.toString());
            inputStream = null;
        }
        String str2 = f8101a;
        StringBuilder m8728C2 = C22128a.m8728C("doInBackground: get bks from hms tss cost : ");
        m8728C2.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C2.append(" ms");
        C2493g.m36958a(str2, m8728C2.toString());
        if (inputStream != null) {
            AbstractC2492f.m36968a(inputStream);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* renamed from: a */
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            C2493g.m36955c(f8101a, "onPostExecute: upate done");
        } else {
            C2493g.m36956b(f8101a, "onPostExecute: upate failed");
        }
    }

    /* renamed from: a */
    public void onProgressUpdate(Integer... numArr) {
        C2493g.m36955c(f8101a, "onProgressUpdate");
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        C2493g.m36958a(f8101a, "onPreExecute");
    }
}
