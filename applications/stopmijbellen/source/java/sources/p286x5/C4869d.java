package p286x5;

import android.net.TrafficStats;
import android.text.TextUtils;
import androidx.emoji2.text.RunnableC0375k;
import ba.C0758g;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallationsException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.AbstractC0029e;
import p007a6.AbstractC0031g;
import p007a6.C0022a;
import p007a6.C0024b;
import p007a6.C0027c;
import p201p6.AbstractC4023g;
import p237t.C4350g;
import p241t4.C4392c;
import p264v5.AbstractC4648f;
import p275w5.AbstractC4739b;
import p296y5.AbstractC5010a;
import p306z5.AbstractC5107d;
import p306z5.C5102a;
import p306z5.C5105b;
import p306z5.C5106c;
/* renamed from: x5.d */
/* loaded from: classes-dex2jar.jar:x5/d.class */
public class C4869d implements AbstractC4871e {

    /* renamed from: m */
    public static final Object f14916m = new Object();

    /* renamed from: n */
    public static final ThreadFactory f14917n = new ThreadFactoryC4870a();

    /* renamed from: a */
    public final C4392c f14918a;

    /* renamed from: b */
    public final C0027c f14919b;

    /* renamed from: c */
    public final C5106c f14920c;

    /* renamed from: d */
    public final C4878l f14921d;

    /* renamed from: e */
    public final C5105b f14922e;

    /* renamed from: f */
    public final C4876j f14923f;

    /* renamed from: h */
    public final ExecutorService f14925h;

    /* renamed from: i */
    public final ExecutorService f14926i;

    /* renamed from: j */
    public String f14927j;

    /* renamed from: g */
    public final Object f14924g = new Object();

    /* renamed from: k */
    public Set<AbstractC5010a> f14928k = new HashSet();

    /* renamed from: l */
    public final List<AbstractC4877k> f14929l = new ArrayList();

    /* renamed from: x5.d$a */
    /* loaded from: classes-dex2jar.jar:x5/d$a.class */
    public class ThreadFactoryC4870a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f14930a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f14930a.getAndIncrement())));
        }
    }

    public C4869d(C4392c c4392c, AbstractC4739b<AbstractC4023g> abstractC4739b, AbstractC4739b<AbstractC4648f> abstractC4739b2) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        ThreadFactory threadFactory = f14917n;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, timeUnit, linkedBlockingQueue, threadFactory);
        c4392c.m974a();
        C0027c c0027c = new C0027c(c4392c.f13688a, abstractC4739b, abstractC4739b2);
        C5106c c5106c = new C5106c(c4392c);
        C4878l m320c = C4878l.m320c();
        C5105b c5105b = new C5105b(c4392c);
        C4876j c4876j = new C4876j();
        this.f14918a = c4392c;
        this.f14919b = c0027c;
        this.f14920c = c5106c;
        this.f14921d = m320c;
        this.f14922e = c5105b;
        this.f14923f = c4876j;
        this.f14925h = threadPoolExecutor;
        this.f14926i = new ThreadPoolExecutor(0, 1, 30L, timeUnit, new LinkedBlockingQueue(), threadFactory);
    }

    /* renamed from: f */
    public static C4869d m336f() {
        C4392c m973b = C4392c.m973b();
        Preconditions.checkArgument(true, "Null is not a valid value of FirebaseApp.");
        m973b.m974a();
        return (C4869d) m973b.f13691d.mo40a(AbstractC4871e.class);
    }

    @Override // p286x5.AbstractC4871e
    /* renamed from: a */
    public Task<AbstractC4875i> mo329a(final boolean z) {
        m334h();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        C4873g c4873g = new C4873g(this.f14921d, taskCompletionSource);
        synchronized (this.f14924g) {
            this.f14929l.add(c4873g);
        }
        Task<AbstractC4875i> task = taskCompletionSource.getTask();
        this.f14925h.execute(new Runnable() { // from class: x5.b
            @Override // java.lang.Runnable
            public final void run() {
                C4869d.this.m340b(z);
            }
        });
        return task;
    }

    /* renamed from: b */
    public final void m340b(final boolean z) {
        AbstractC5107d abstractC5107d;
        synchronized (f14916m) {
            C4392c c4392c = this.f14918a;
            c4392c.m974a();
            C0758g m7397a = C0758g.m7397a(c4392c.f13688a, "generatefid.lock");
            AbstractC5107d m31b = this.f14920c.m31b();
            abstractC5107d = m31b;
            if (m31b.m22i()) {
                String m333i = m333i(m31b);
                C5106c c5106c = this.f14920c;
                C5102a.C5104b c5104b = (C5102a.C5104b) m31b.mo20k();
                c5104b.f15466a = m333i;
                c5104b.mo18b(3);
                abstractC5107d = c5104b.mo19a();
                c5106c.m32a(abstractC5107d);
            }
            if (m7397a != null) {
                m7397a.m7396b();
            }
        }
        AbstractC5107d abstractC5107d2 = abstractC5107d;
        if (z) {
            C5102a.C5104b c5104b2 = (C5102a.C5104b) abstractC5107d.mo20k();
            c5104b2.f15468c = null;
            abstractC5107d2 = c5104b2.mo19a();
        }
        m330l(abstractC5107d2);
        this.f14926i.execute(new Runnable() { // from class: x5.c
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 416
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p286x5.RunnableC4868c.run():void");
            }
        });
    }

    /* renamed from: c */
    public final AbstractC5107d m339c(AbstractC5107d abstractC5107d) throws FirebaseInstallationsException {
        int responseCode;
        AbstractC0031g m8922f;
        C0027c c0027c = this.f14919b;
        String m338d = m338d();
        C5102a c5102a = (C5102a) abstractC5107d;
        String str = c5102a.f15459b;
        String m335g = m335g();
        String str2 = c5102a.f15462e;
        if (c0027c.f42d.m8904a()) {
            URL m8927a = c0027c.m8927a(String.format("projects/%s/installations/%s/authTokens:generate", m335g, str));
            for (int i = 0; i <= 1; i++) {
                TrafficStats.setThreadStatsTag(32771);
                HttpURLConnection m8925c = c0027c.m8925c(m8927a, m338d);
                try {
                    m8925c.setRequestMethod("POST");
                    m8925c.addRequestProperty("Authorization", "FIS_v2 " + str2);
                    m8925c.setDoOutput(true);
                    c0027c.m8920h(m8925c);
                    responseCode = m8925c.getResponseCode();
                    c0027c.f42d.m8903b(responseCode);
                } catch (IOException | AssertionError e) {
                } catch (Throwable th) {
                    m8925c.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
                if (responseCode >= 200 && responseCode < 300) {
                    m8922f = c0027c.m8922f(m8925c);
                } else {
                    C0027c.m8926b(m8925c, null, m338d, m335g);
                    if (responseCode == 401 || responseCode == 404) {
                        C0024b.C0026b c0026b = (C0024b.C0026b) AbstractC0031g.m8902a();
                        c0026b.f36c = 3;
                        m8922f = c0026b.mo8898a();
                    } else if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", 3);
                    } else {
                        if (responseCode < 500 || responseCode >= 600) {
                            C0024b.C0026b c0026b2 = (C0024b.C0026b) AbstractC0031g.m8902a();
                            c0026b2.f36c = 2;
                            m8922f = c0026b2.mo8898a();
                        } else {
                            m8925c.disconnect();
                            TrafficStats.clearThreadStatsTag();
                        }
                    }
                }
                m8925c.disconnect();
                TrafficStats.clearThreadStatsTag();
                C0024b c0024b = (C0024b) m8922f;
                int m1021c = C4350g.m1021c(c0024b.f33c);
                if (m1021c == 0) {
                    String str3 = c0024b.f31a;
                    long j = c0024b.f32b;
                    long m321b = this.f14921d.m321b();
                    C5102a.C5104b c5104b = (C5102a.C5104b) abstractC5107d.mo20k();
                    c5104b.f15468c = str3;
                    c5104b.f15470e = Long.valueOf(j);
                    c5104b.f15471f = Long.valueOf(m321b);
                    return c5104b.mo19a();
                } else if (m1021c == 1) {
                    C5102a.C5104b c5104b2 = (C5102a.C5104b) abstractC5107d.mo20k();
                    c5104b2.f15472g = "BAD CONFIG";
                    c5104b2.mo18b(5);
                    return c5104b2.mo19a();
                } else if (m1021c != 2) {
                    throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
                } else {
                    synchronized (this) {
                        this.f14927j = null;
                    }
                    AbstractC5107d.AbstractC5108a mo20k = abstractC5107d.mo20k();
                    mo20k.mo18b(2);
                    return mo20k.mo19a();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
    }

    /* renamed from: d */
    public String m338d() {
        C4392c c4392c = this.f14918a;
        c4392c.m974a();
        return c4392c.f13690c.f13711a;
    }

    /* renamed from: e */
    public String m337e() {
        C4392c c4392c = this.f14918a;
        c4392c.m974a();
        return c4392c.f13690c.f13712b;
    }

    /* renamed from: g */
    public String m335g() {
        C4392c c4392c = this.f14918a;
        c4392c.m974a();
        return c4392c.f13690c.f13717g;
    }

    @Override // p286x5.AbstractC4871e
    public Task<String> getId() {
        String str;
        m334h();
        synchronized (this) {
            str = this.f14927j;
        }
        if (str != null) {
            return Tasks.forResult(str);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        C4874h c4874h = new C4874h(taskCompletionSource);
        synchronized (this.f14924g) {
            this.f14929l.add(c4874h);
        }
        Task<String> task = taskCompletionSource.getTask();
        this.f14925h.execute(new RunnableC0375k(this, 1));
        return task;
    }

    /* renamed from: h */
    public final void m334h() {
        Preconditions.checkNotEmpty(m337e(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(m335g(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(m338d(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        String m337e = m337e();
        Pattern pattern = C4878l.f14940c;
        Preconditions.checkArgument(m337e.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(C4878l.f14940c.matcher(m338d()).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: i */
    public final String m333i(AbstractC5107d abstractC5107d) {
        String string;
        C4392c c4392c = this.f14918a;
        c4392c.m974a();
        if (c4392c.f13689b.equals("CHIME_ANDROID_SDK") || this.f14918a.m968g()) {
            boolean z = true;
            if (((C5102a) abstractC5107d).f15460c != 1) {
                z = false;
            }
            if (z) {
                C5105b c5105b = this.f14922e;
                synchronized (c5105b.f15474a) {
                    synchronized (c5105b.f15474a) {
                        string = c5105b.f15474a.getString("|S|id", null);
                    }
                    if (string == null) {
                        string = c5105b.m33a();
                    }
                }
                String str = string;
                if (TextUtils.isEmpty(string)) {
                    str = this.f14923f.m325a();
                }
                return str;
            }
        }
        return this.f14923f.m325a();
    }

    /* renamed from: j */
    public final AbstractC5107d m332j(AbstractC5107d abstractC5107d) throws FirebaseInstallationsException {
        int responseCode;
        C0022a c0022a;
        C5102a c5102a = (C5102a) abstractC5107d;
        String str = c5102a.f15459b;
        String str2 = null;
        if (str != null) {
            str2 = null;
            if (str.length() == 11) {
                C5105b c5105b = this.f14922e;
                synchronized (c5105b.f15474a) {
                    String[] strArr = C5105b.f15473c;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            str2 = null;
                            break;
                        }
                        String str3 = strArr[i];
                        str2 = c5105b.f15474a.getString("|T|" + c5105b.f15475b + "|" + str3, null);
                        if (str2 == null || str2.isEmpty()) {
                            i++;
                        } else if (str2.startsWith("{")) {
                            try {
                                str2 = new JSONObject(str2).getString("token");
                            } catch (JSONException e) {
                                str2 = null;
                            }
                        }
                    }
                }
            }
        }
        C0027c c0027c = this.f14919b;
        String m338d = m338d();
        String str4 = c5102a.f15459b;
        String m335g = m335g();
        String m337e = m337e();
        if (c0027c.f42d.m8904a()) {
            URL m8927a = c0027c.m8927a(String.format("projects/%s/installations", m335g));
            for (int i2 = 0; i2 <= 1; i2++) {
                TrafficStats.setThreadStatsTag(32769);
                HttpURLConnection m8925c = c0027c.m8925c(m8927a, m338d);
                try {
                    m8925c.setRequestMethod("POST");
                    m8925c.setDoOutput(true);
                    if (str2 != null) {
                        m8925c.addRequestProperty("x-goog-fis-android-iid-migration-auth", str2);
                    }
                    c0027c.m8921g(m8925c, str4, m337e);
                    responseCode = m8925c.getResponseCode();
                    c0027c.f42d.m8903b(responseCode);
                } catch (IOException | AssertionError e2) {
                } catch (Throwable th) {
                    m8925c.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    throw th;
                }
                if (responseCode >= 200 && responseCode < 300) {
                    AbstractC0029e m8923e = c0027c.m8923e(m8925c);
                    m8925c.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    c0022a = m8923e;
                } else {
                    C0027c.m8926b(m8925c, m337e, m338d, m335g);
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.", 3);
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        C0022a c0022a2 = new C0022a(null, null, null, null, 2, null);
                        m8925c.disconnect();
                        TrafficStats.clearThreadStatsTag();
                        c0022a = c0022a2;
                    } else {
                        m8925c.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                }
                C0022a c0022a3 = (C0022a) c0022a;
                int m1021c = C4350g.m1021c(c0022a3.f30e);
                if (m1021c != 0) {
                    if (m1021c != 1) {
                        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
                    }
                    C5102a.C5104b c5104b = (C5102a.C5104b) abstractC5107d.mo20k();
                    c5104b.f15472g = "BAD CONFIG";
                    c5104b.mo18b(5);
                    return c5104b.mo19a();
                }
                String str5 = c0022a3.f27b;
                String str6 = c0022a3.f28c;
                long m321b = this.f14921d.m321b();
                String mo8900c = c0022a3.f29d.mo8900c();
                long mo8899d = c0022a3.f29d.mo8899d();
                C5102a.C5104b c5104b2 = (C5102a.C5104b) abstractC5107d.mo20k();
                c5104b2.f15466a = str5;
                c5104b2.mo18b(4);
                c5104b2.f15468c = mo8900c;
                c5104b2.f15469d = str6;
                c5104b2.f15470e = Long.valueOf(mo8899d);
                c5104b2.f15471f = Long.valueOf(m321b);
                return c5104b2.mo19a();
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", 2);
    }

    /* renamed from: k */
    public final void m331k(Exception exc) {
        synchronized (this.f14924g) {
            Iterator<AbstractC4877k> it2 = this.f14929l.iterator();
            while (it2.hasNext()) {
                if (it2.next().mo323b(exc)) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: l */
    public final void m330l(AbstractC5107d abstractC5107d) {
        synchronized (this.f14924g) {
            Iterator<AbstractC4877k> it2 = this.f14929l.iterator();
            while (it2.hasNext()) {
                if (it2.next().mo324a(abstractC5107d)) {
                    it2.remove();
                }
            }
        }
    }
}
