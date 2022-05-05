package p081h.p160h.p174c.p176f;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.util.Base64;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.gogolook.developmode.jira.JiraReportActivity;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
/* renamed from: h.h.c.f.a */
/* loaded from: classes2-dex2jar.jar:h/h/c/f/a.class */
public class AsyncTaskC6327a extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public Context f15677a;

    /* renamed from: b */
    public AbstractC6331d f15678b;

    /* renamed from: c */
    public int f15679c = 200;

    /* renamed from: d */
    public String f15680d;

    /* renamed from: e */
    public Dialog f15681e;

    /* renamed from: f */
    public String f15682f;

    /* renamed from: g */
    public String f15683g;

    /* renamed from: h */
    public String f15684h;

    public AsyncTaskC6327a(Context context, String str, String str2, String str3, AbstractC6331d dVar) {
        this.f15677a = context;
        this.f15678b = dVar;
        this.f15682f = str;
        this.f15683g = str2;
        this.f15684h = str3;
    }

    /* renamed from: a */
    public final String m23288a(String str, String str2, boolean z) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("X-Atlassian-Token", "nocheck");
            StringBuilder sb = new StringBuilder();
            sb.append("Basic ");
            sb.append(Base64.encodeToString((JiraReportActivity.f6126o + ":" + JiraReportActivity.f6127p).getBytes(), 0));
            httpURLConnection.setRequestProperty("Authorization", sb.toString());
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=******");
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes("--******\r\n");
            if (z) {
                dataOutputStream.writeBytes("Content-Disposition: form-data; mimeType=\"image/png\"; name=\"file\"; filename=\"" + str2.substring(str2.lastIndexOf("/") + 1) + "\"\r\n");
            } else {
                dataOutputStream.writeBytes("Content-Disposition: form-data; mimeType=\"text/plain\"; name=\"file\"; filename=\"" + str2.substring(str2.lastIndexOf("/") + 1) + "\"\r\n");
            }
            dataOutputStream.writeBytes("\r\n");
            FileInputStream fileInputStream = new FileInputStream(str2);
            byte[] bArr = new byte[8192];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    dataOutputStream.write(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    dataOutputStream.writeBytes("\r\n");
                    dataOutputStream.writeBytes("--******--\r\n");
                    dataOutputStream.flush();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    String readLine = new BufferedReader(new InputStreamReader(inputStream, JsonRequest.PROTOCOL_CHARSET)).readLine();
                    dataOutputStream.close();
                    inputStream.close();
                    return readLine;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        String str = "https://gogolook.atlassian.net/rest/api/latest/issue/" + this.f15682f + "/attachments";
        String str2 = this.f15683g;
        if (str2 != null) {
            m23288a(str, str2, true);
        }
        String str3 = this.f15684h;
        if (str3 == null) {
            return null;
        }
        m23288a(str, str3, false);
        return null;
    }

    /* renamed from: a */
    public void onPostExecute(Void r5) {
        this.f15681e.dismiss();
        try {
            this.f15678b.mo23280a(this.f15679c, this.f15680d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        this.f15681e = new ProgressDialog(this.f15677a);
        this.f15681e.setTitle("Adding Attachments...");
        this.f15681e.show();
    }
}
