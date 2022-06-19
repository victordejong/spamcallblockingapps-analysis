package p229s2;

import android.content.Context;
import ba.C0748b;
import com.github.clans.fab.FloatingActionMenu;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.encoders.EncodingException;
import com.mglab.scm.api.AlarmJobIntentService;
import com.mglab.scm.visual.FragmentSocial;
import com.mglab.scm.visual.FragmentWhiteList;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p074d9.C2497h;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p080e5.C2564l0;
import p095f8.C2779g;
import p134j4.C3260w0;
import p149k8.C3389e;
import p149k8.C3401q;
import p170m7.AbstractC3656d;
import p171m8.C3670d;
import p229s2.C4282d;
import p233s6.C4316k;
import p239t2.AbstractC4383n;
import p239t2.C4374h;
import p242t5.C4403d;
/* renamed from: s2.b */
/* loaded from: classes2-dex2jar.jar:s2/b.class */
public final /* synthetic */ class C4280b implements Continuation, C2497h.AbstractC2500c, AbstractC3656d, FloatingActionMenu.AbstractC1635c, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ Object f13425a;

    public /* synthetic */ C4280b(Object obj) {
        this.f13425a = obj;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        C3670d c3670d = (C3670d) this.f13425a;
        C4316k c4316k = (C4316k) obj;
        Objects.requireNonNull(c3670d);
        if (c4316k == null) {
            c3670d.m1901i(2, false, false);
            return;
        }
        try {
            c4316k.toString();
            FragmentSocial.f7596b.m1893g();
            FragmentSocial.f7596b.m1894f();
        } catch (Exception e) {
            e.printStackTrace();
            e.toString();
            c3670d.m1901i(2, false, false);
        }
    }

    /* renamed from: b */
    public Object m1117b(Object obj) {
        C4282d.C4284b c4284b;
        OutputStream outputStream;
        C4282d c4282d = (C4282d) this.f13425a;
        C4282d.C4283a c4283a = (C4282d.C4283a) obj;
        Objects.requireNonNull(c4282d);
        C3260w0.m2480e("CctTransportBackend", "Making request to: %s", c4283a.f13442a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c4283a.f13442a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(c4282d.f13441g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.0.0"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = c4283a.f13444c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            try {
                outputStream = httpURLConnection.getOutputStream();
            } catch (EncodingException | IOException e) {
                C3260w0.m2478g("CctTransportBackend");
                c4284b = new C4282d.C4284b(400, null, 0L);
            }
        } catch (ConnectException | UnknownHostException e2) {
            C3260w0.m2478g("CctTransportBackend");
            c4284b = new C4282d.C4284b(500, null, 0L);
        }
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            ((C4403d) c4282d.f13435a).m966a(c4283a.f13443b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
            gZIPOutputStream.close();
            if (outputStream != null) {
                outputStream.close();
            }
            int responseCode = httpURLConnection.getResponseCode();
            C3260w0.m2477h("CctTransportBackend", "Status Code: " + responseCode);
            C3260w0.m2477h("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
            C3260w0.m2477h("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
            if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                c4284b = new C4282d.C4284b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
            } else if (responseCode != 200) {
                c4284b = new C4282d.C4284b(responseCode, null, 0L);
            } else {
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                    C4282d.C4284b c4284b2 = new C4282d.C4284b(responseCode, null, ((C4374h) AbstractC4383n.m979a(new BufferedReader(new InputStreamReader(gZIPInputStream)))).f13664a);
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    c4284b = c4284b2;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            return c4284b;
        } catch (Throwable th3) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    @Override // p074d9.C2497h.AbstractC2500c
    /* renamed from: c */
    public void mo105c(C2497h c2497h) {
        AlarmJobIntentService alarmJobIntentService = (AlarmJobIntentService) this.f13425a;
        int i = AlarmJobIntentService.f7284l;
        Objects.requireNonNull(alarmJobIntentService);
        C0748b.m7409b().m7404g(new C3389e());
        C0748b.m7409b().m7404g(new C3401q(50));
        alarmJobIntentService.m3973f();
    }

    @Override // com.github.clans.fab.FloatingActionMenu.AbstractC1635c
    /* renamed from: d */
    public void mo150d(boolean z) {
        FragmentWhiteList fragmentWhiteList = (FragmentWhiteList) this.f13425a;
        int i = FragmentWhiteList.f7627g;
        Objects.requireNonNull(fragmentWhiteList);
        if (z) {
            fragmentWhiteList.f7631d.setEnabled(!fragmentWhiteList.f7630c.isEmpty());
        }
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        Context context = (Context) this.f13425a;
        C2779g.m3127F(context, C2779g.m3105j(context) + " " + context.getString(2131821066), "");
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        CountDownLatch countDownLatch = (CountDownLatch) this.f13425a;
        ExecutorService executorService = C2564l0.f8944a;
        countDownLatch.countDown();
        return null;
    }
}
