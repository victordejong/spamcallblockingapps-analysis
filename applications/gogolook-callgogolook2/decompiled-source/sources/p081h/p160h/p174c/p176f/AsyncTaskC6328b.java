package p081h.p160h.p174c.p176f;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.core.app.Person;
import com.gogolook.developmode.jira.JiraReportActivity;
import com.google.firebase.perf.network.FirebasePerfHttpClient;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p178d.C6333a;
/* renamed from: h.h.c.f.b */
/* loaded from: classes2-dex2jar.jar:h/h/c/f/b.class */
public class AsyncTaskC6328b extends AsyncTask<Void, Void, Void> {

    /* renamed from: l */
    public static HttpClient f15685l;

    /* renamed from: a */
    public Context f15686a;

    /* renamed from: b */
    public AbstractC6331d f15687b;

    /* renamed from: c */
    public int f15688c;

    /* renamed from: d */
    public String f15689d;

    /* renamed from: e */
    public Dialog f15690e;

    /* renamed from: f */
    public String f15691f;

    /* renamed from: g */
    public String f15692g;

    /* renamed from: h */
    public String f15693h;

    /* renamed from: i */
    public String f15694i;

    /* renamed from: j */
    public String f15695j;

    /* renamed from: k */
    public String f15696k;

    /* renamed from: h.h.c.f.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/c/f/b$a.class */
    public class C6329a implements AbstractC6331d {
        public C6329a() {
        }

        @Override // p081h.p160h.p174c.p176f.AbstractC6331d
        /* renamed from: a */
        public void mo23280a(int i, String str) {
            AsyncTaskC6328b.this.f15688c = i;
            AsyncTaskC6328b.this.f15689d = str;
        }
    }

    public AsyncTaskC6328b(Context context, String str, String str2, String str3, String str4, String str5, String str6, AbstractC6331d dVar) {
        this.f15686a = context;
        this.f15687b = dVar;
        this.f15691f = str;
        this.f15692g = str2;
        this.f15693h = str3;
        this.f15694i = str4;
        this.f15695j = str6;
        this.f15696k = str5;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put(Person.KEY_KEY, "WHOSCALL");
            jSONObject2.put("project", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("id", this.f15691f);
            jSONObject2.put(IapProductRealmObject.PRIORITY, jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("id", this.f15692g);
            jSONObject2.put("issuetype", jSONObject5);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put("build#" + C6333a.m23271b(this.f15686a));
            jSONObject2.put("customfield_10105", jSONArray);
            jSONObject2.put("customfield_10101", "Android Version: " + Build.VERSION.SDK_INT);
            jSONObject2.put("customfield_10100", "Device Model: " + Build.MODEL);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put("created_through_api");
            if (!TextUtils.isEmpty(this.f15696k)) {
                for (String str : this.f15696k.split(" ")) {
                    jSONArray2.put(str);
                }
            }
            jSONObject2.put("labels", jSONArray2);
            jSONObject2.put(MraidParser.MRAID_JSON_CREATE_CALENDAR_EVENT_SUMMARY, this.f15693h);
            jSONObject2.put("description", this.f15694i);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("name", this.f15695j);
            jSONObject2.put("assignee", jSONObject6);
            jSONObject.put("fields", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        arrayList.add(new Pair<>("X-Atlassian-Token", "nocheck"));
        StringBuilder sb = new StringBuilder();
        sb.append("Basic ");
        sb.append(Base64.encodeToString((JiraReportActivity.f6126o + ":" + JiraReportActivity.f6127p).getBytes(), 0));
        arrayList.add(new Pair<>("Authorization", sb.toString()));
        try {
            m23283a("https://gogolook.atlassian.net/rest/api/latest/issue", arrayList, jSONObject, new C6329a());
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(Void r5) {
        this.f15690e.dismiss();
        try {
            this.f15687b.mo23280a(this.f15688c, this.f15689d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final boolean m23283a(String str, ArrayList<Pair<String, String>> arrayList, JSONObject jSONObject, AbstractC6331d dVar) {
        HttpPost httpPost = new HttpPost(str);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                httpPost.addHeader((String) arrayList.get(i).first, (String) arrayList.get(i).second);
            }
        }
        try {
            getClass().getSimpleName();
            jSONObject.toString();
            StringEntity stringEntity = new StringEntity(jSONObject.toString(), "UTF-8");
            stringEntity.setContentType("application/json; charset=utf-8");
            httpPost.setEntity(stringEntity);
            HttpResponse execute = FirebasePerfHttpClient.execute(f15685l, httpPost);
            if (dVar == null) {
                return true;
            }
            dVar.mo23280a(execute.getStatusLine().getStatusCode(), EntityUtils.toString(execute.getEntity()));
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            if (dVar == null) {
                return false;
            }
            dVar.mo23280a(-1, e.toString());
            return false;
        } catch (ClientProtocolException e2) {
            e2.printStackTrace();
            if (dVar == null) {
                return false;
            }
            dVar.mo23280a(-1, e2.toString());
            return false;
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        this.f15690e = new ProgressDialog(this.f15686a);
        this.f15690e.setTitle("Creating Issue...");
        this.f15690e.show();
    }
}
