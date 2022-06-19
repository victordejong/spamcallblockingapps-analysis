package com.allinone.callerid.p144d.p150e;

import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p144d.p154f.C2568a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3848s;
import com.allinone.callerid.util.C3866v;
import com.yanzhenjie.nohttp.ByteArrayBinary;
import com.yanzhenjie.nohttp.RequestMethod;
import com.yanzhenjie.nohttp.rest.Response;
import com.yanzhenjie.nohttp.rest.StringRequest;
import com.yanzhenjie.nohttp.rest.SyncRequestExecutor;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: com.allinone.callerid.d.e.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/d.class */
public class C2549d {

    /* renamed from: com.allinone.callerid.d.e.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/d$a.class */
    public interface AbstractC2550a {
        /* renamed from: a */
        void mo27132a(boolean z, boolean z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.allinone.callerid.d.e.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/e/d$b.class */
    public static class AsyncTaskC2551b extends AsyncTask<String, String, Boolean> {

        /* renamed from: a */
        private AbstractC2550a f8958a;

        /* renamed from: b */
        private String f8959b;

        /* renamed from: c */
        private String f8960c;

        /* renamed from: d */
        private Uri f8961d;

        /* renamed from: e */
        private String f8962e;

        /* renamed from: f */
        private String f8963f;

        /* renamed from: g */
        private boolean f8964g;

        AsyncTaskC2551b(String str, String str2, Uri uri, AbstractC2550a abstractC2550a) {
            this.f8958a = abstractC2550a;
            this.f8959b = str;
            this.f8960c = str2;
            this.f8961d = uri;
        }

        /* renamed from: a */
        public Boolean doInBackground(String... strArr) {
            byte[] m27098g;
            if (this.f8961d != null) {
                try {
                    EZCallApplication m26146c = EZCallApplication.m26146c();
                    Cursor query = m26146c.getContentResolver().query(this.f8961d, null, null, null, null);
                    if (query != null && query.moveToFirst()) {
                        this.f8962e = query.getString(query.getColumnIndex("_data"));
                        String[] split = query.getString(query.getColumnIndex("mime_type")).split("/");
                        if (split.length > 0) {
                            this.f8963f = split[1];
                        }
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("callscreen", "video_path:" + this.f8962e + "\ndata_format:" + this.f8963f);
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    String str = this.f8962e;
                    if (str != null && !"".equals(str) && (m27098g = C2568a.m27098g(this.f8962e)) != null && m27098g.length > 0) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("callscreen", "videoByte:" + (m27098g.length / 1048576) + "M");
                        }
                        if (m27098g.length / 1048576 < 20) {
                            if (C3718c0.f11914a) {
                                HashMap hashMap = new HashMap();
                                hashMap.put("default_cc", C3806p.m24083d(m26146c).getCountry_code());
                                hashMap.put("language", C3767h1.m24286G());
                                hashMap.put("uid", C3767h1.m24268T(m26146c));
                                hashMap.put("version", C3767h1.m24265W(m26146c));
                                hashMap.put("stamp", C3767h1.m24271Q(m26146c, C3767h1.m24268T(m26146c)));
                                hashMap.put("data_format", this.f8963f);
                                hashMap.put("data_title", this.f8959b);
                                hashMap.put("data_author", this.f8960c);
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("callscreen", "params: " + hashMap.toString());
                                }
                            }
                            Response execute = SyncRequestExecutor.INSTANCE.execute((StringRequest) new StringRequest("https://app.show-caller.com/caller_screen_v2/v1/useuplscr.php", RequestMethod.POST).add("default_cc", C3806p.m24083d(m26146c).getCountry_code()).add("language", C3767h1.m24286G()).add("uid", C3767h1.m24268T(m26146c)).add("version", C3767h1.m24265W(m26146c)).add("stamp", C3767h1.m24271Q(m26146c, C3767h1.m24268T(m26146c))).add("data_format", this.f8963f).add("data_title", this.f8959b).add("data_author", this.f8960c).add("data_file", new ByteArrayBinary(m27098g, this.f8962e)));
                            if (execute.isSucceed()) {
                                String str2 = (String) execute.get();
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("callscreen", "str: " + str2);
                                }
                                String m23913b = C3866v.m23913b(str2);
                                if (C3718c0.f11914a) {
                                    C3718c0.m24436a("callscreen", "result: " + m23913b);
                                }
                                if (m23913b != null && !"".equals(m23913b)) {
                                    int i = new JSONObject(m23913b).getInt("status");
                                    if (i == 1) {
                                        return Boolean.TRUE;
                                    }
                                    if (i == -20) {
                                        C3848s.m23967a();
                                    }
                                }
                            }
                        } else {
                            this.f8964g = true;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return Boolean.FALSE;
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            AbstractC2550a abstractC2550a = this.f8958a;
            if (abstractC2550a != null) {
                abstractC2550a.mo27132a(bool.booleanValue(), this.f8964g);
            }
        }

        /* renamed from: c */
        public void onProgressUpdate(String... strArr) {
            super.onProgressUpdate(strArr);
        }
    }

    /* renamed from: a */
    public static void m27133a(String str, String str2, Uri uri, AbstractC2550a abstractC2550a) {
        new AsyncTaskC2551b(str, str2, uri, abstractC2550a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }
}
