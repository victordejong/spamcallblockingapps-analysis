package p080e5;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Log;
import androidx.appcompat.widget.C0302z;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import p020b5.AbstractC0730a;
import p030c5.AbstractC0842a;
import p080e5.C2546e;
import p092f5.C2753b;
import p103g5.AbstractC2878v;
import p103g5.C2833b;
import p103g5.C2842f;
import p103g5.C2845g;
import p103g5.C2848i;
import p103g5.C2874t;
import p135j5.C3276f;
import p168m5.C3641a;
import p283x2.C4854f;
/* renamed from: e5.p */
/* loaded from: classes-dex2jar.jar:e5/p.class */
public class C2568p {

    /* renamed from: a */
    public final Context f8954a;

    /* renamed from: b */
    public final C2538a0 f8955b;

    /* renamed from: c */
    public final C0302z f8956c;

    /* renamed from: d */
    public final C2549f f8957d;

    /* renamed from: e */
    public final C2548e0 f8958e;

    /* renamed from: f */
    public final C4854f f8959f;

    /* renamed from: g */
    public final C2537a f8960g;

    /* renamed from: h */
    public final C2753b f8961h;

    /* renamed from: i */
    public final AbstractC0730a f8962i;

    /* renamed from: j */
    public final String f8963j;

    /* renamed from: k */
    public final AbstractC0842a f8964k;

    /* renamed from: l */
    public final C2555h0 f8965l;

    /* renamed from: m */
    public C2581z f8966m;

    /* renamed from: n */
    public final TaskCompletionSource<Boolean> f8967n = new TaskCompletionSource<>();

    /* renamed from: o */
    public final TaskCompletionSource<Boolean> f8968o = new TaskCompletionSource<>();

    /* renamed from: p */
    public final TaskCompletionSource<Void> f8969p = new TaskCompletionSource<>();

    /* renamed from: e5.p$a */
    /* loaded from: classes-dex2jar.jar:e5/p$a.class */
    public class C2569a implements SuccessContinuation<Boolean, Void> {

        /* renamed from: a */
        public final /* synthetic */ Task f8970a;

        public C2569a(Task task) {
            C2568p.this = r4;
            this.f8970a = task;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        public Task<Void> then(Boolean bool) throws Exception {
            return C2568p.this.f8957d.m3438c(new CallableC2567o(this, bool));
        }
    }

    public C2568p(Context context, C2549f c2549f, C2548e0 c2548e0, C2538a0 c2538a0, C4854f c4854f, C0302z c0302z, C2537a c2537a, C2557i0 c2557i0, C2753b c2753b, C2753b.AbstractC2755b abstractC2755b, C2555h0 c2555h0, AbstractC0730a abstractC0730a, AbstractC0842a abstractC0842a) {
        new AtomicBoolean(false);
        this.f8954a = context;
        this.f8957d = c2549f;
        this.f8958e = c2548e0;
        this.f8955b = c2538a0;
        this.f8959f = c4854f;
        this.f8956c = c0302z;
        this.f8960g = c2537a;
        this.f8961h = c2753b;
        this.f8962i = abstractC0730a;
        this.f8963j = c2537a.f8887g.m1729a();
        this.f8964k = abstractC0842a;
        this.f8965l = c2555h0;
    }

    /* renamed from: a */
    public static void m3432a(C2568p c2568p) {
        String str;
        Objects.requireNonNull(c2568p);
        long time = new Date().getTime() / 1000;
        new C2544d(c2568p.f8958e);
        String str2 = C2544d.f8905b;
        Integer num = 3;
        Log.isLoggable("FirebaseCrashlytics", 3);
        c2568p.f8962i.mo7422g(str2);
        Locale locale = Locale.US;
        int i = 1;
        c2568p.f8962i.mo7424e(str2, String.format(locale, "Crashlytics Android SDK/%s", "18.1.0"), time);
        C2548e0 c2548e0 = c2568p.f8958e;
        String str3 = c2548e0.f8915c;
        C2537a c2537a = c2568p.f8960g;
        String str4 = c2537a.f8885e;
        String str5 = c2537a.f8886f;
        String m3443c = c2548e0.m3443c();
        if (c2568p.f8960g.f8883c != null) {
            i = 4;
        }
        c2568p.f8962i.mo7425d(str2, str3, str4, str5, m3443c, C0608b.m7630e(i), c2568p.f8963j);
        String str6 = Build.VERSION.RELEASE;
        String str7 = Build.VERSION.CODENAME;
        c2568p.f8962i.mo7423f(str2, str6, str7, C2546e.m3447k(c2568p.f8954a));
        Context context = c2568p.f8954a;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        C2546e.EnumC2547a enumC2547a = C2546e.EnumC2547a.UNKNOWN;
        String str8 = Build.CPU_ABI;
        if (TextUtils.isEmpty(str8)) {
            Log.isLoggable("FirebaseCrashlytics", 2);
        } else {
            C2546e.EnumC2547a enumC2547a2 = (C2546e.EnumC2547a) ((HashMap) C2546e.EnumC2547a.f8909b).get(str8.toLowerCase(locale));
            if (enumC2547a2 != null) {
                enumC2547a = enumC2547a2;
            }
        }
        int ordinal = enumC2547a.ordinal();
        String str9 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m3450h = C2546e.m3450h();
        long blockCount = statFs.getBlockCount();
        long blockSize = statFs.getBlockSize();
        boolean m3448j = C2546e.m3448j(context);
        int m3454d = C2546e.m3454d(context);
        String str10 = Build.MANUFACTURER;
        String str11 = Build.PRODUCT;
        c2568p.f8962i.mo7426c(str2, ordinal, str9, availableProcessors, m3450h, blockSize * blockCount, m3448j, m3454d, str10, str11);
        c2568p.f8961h.m3167a(str2);
        C2555h0 c2555h0 = c2568p.f8965l;
        C2579x c2579x = c2555h0.f8926a;
        Objects.requireNonNull(c2579x);
        Charset charset = AbstractC2878v.f9789a;
        C2833b.C2835b c2835b = new C2833b.C2835b();
        c2835b.f9668a = "18.1.0";
        String str12 = c2579x.f9000c.f8881a;
        Objects.requireNonNull(str12, "Null gmpAppId");
        c2835b.f9669b = str12;
        String m3443c2 = c2579x.f8999b.m3443c();
        Objects.requireNonNull(m3443c2, "Null installationUuid");
        c2835b.f9671d = m3443c2;
        String str13 = c2579x.f9000c.f8885e;
        Objects.requireNonNull(str13, "Null buildVersion");
        c2835b.f9672e = str13;
        String str14 = c2579x.f9000c.f8886f;
        Objects.requireNonNull(str14, "Null displayVersion");
        c2835b.f9673f = str14;
        c2835b.f9670c = 4;
        C2842f.C2844b c2844b = new C2842f.C2844b();
        c2844b.m2968b(false);
        c2844b.f9695c = Long.valueOf(time);
        Objects.requireNonNull(str2, "Null identifier");
        c2844b.f9694b = str2;
        String str15 = C2579x.f8997f;
        Objects.requireNonNull(str15, "Null generator");
        c2844b.f9693a = str15;
        String str16 = c2579x.f8999b.f8915c;
        Objects.requireNonNull(str16, "Null identifier");
        String str17 = c2579x.f9000c.f8885e;
        Objects.requireNonNull(str17, "Null version");
        String str18 = c2579x.f9000c.f8886f;
        String m3443c3 = c2579x.f8999b.m3443c();
        String m1729a = c2579x.f9000c.f8887g.m1729a();
        if (m1729a != null) {
            str = "Unity";
        } else {
            str = null;
            m1729a = null;
        }
        c2844b.f9698f = new C2845g(str16, str17, str18, null, m3443c3, str, m1729a, null);
        Objects.requireNonNull(str6, "Null version");
        Objects.requireNonNull(str7, "Null buildVersion");
        Boolean valueOf = Boolean.valueOf(C2546e.m3447k(c2579x.f8998a));
        String str19 = num == null ? " platform" : "";
        String str20 = str19;
        if (valueOf == null) {
            str20 = C1676a.m4789h(str19, " jailbroken");
        }
        if (str20.isEmpty()) {
            c2844b.f9700h = new C2874t(num.intValue(), str6, str7, valueOf.booleanValue(), null);
            StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
            int i2 = 7;
            if (!TextUtils.isEmpty(str8)) {
                Integer num2 = (Integer) ((HashMap) C2579x.f8996e).get(str8.toLowerCase(locale));
                if (num2 != null) {
                    i2 = num2.intValue();
                }
            }
            int availableProcessors2 = Runtime.getRuntime().availableProcessors();
            long m3450h2 = C2546e.m3450h();
            long blockCount2 = statFs2.getBlockCount();
            long blockSize2 = statFs2.getBlockSize();
            boolean m3448j2 = C2546e.m3448j(c2579x.f8998a);
            int m3454d2 = C2546e.m3454d(c2579x.f8998a);
            C2848i.C2850b c2850b = new C2848i.C2850b();
            c2850b.f9720a = Integer.valueOf(i2);
            Objects.requireNonNull(str9, "Null model");
            c2850b.f9721b = str9;
            c2850b.f9722c = Integer.valueOf(availableProcessors2);
            c2850b.f9723d = Long.valueOf(m3450h2);
            c2850b.f9724e = Long.valueOf(blockCount2 * blockSize2);
            c2850b.f9725f = Boolean.valueOf(m3448j2);
            c2850b.f9726g = Integer.valueOf(m3454d2);
            Objects.requireNonNull(str10, "Null manufacturer");
            c2850b.f9727h = str10;
            Objects.requireNonNull(str11, "Null modelClass");
            c2850b.f9728i = str11;
            c2844b.f9701i = c2850b.m2967a();
            c2844b.f9703k = num;
            c2835b.f9674g = c2844b.mo2925a();
            AbstractC2878v mo2952a = c2835b.mo2952a();
            C3276f c3276f = c2555h0.f8927b;
            Objects.requireNonNull(c3276f);
            AbstractC2878v.AbstractC2883d abstractC2883d = ((C2833b) mo2952a).f9666h;
            if (abstractC2883d == null) {
                Log.isLoggable("FirebaseCrashlytics", 3);
                return;
            }
            try {
                File m2448f = c3276f.m2448f(abstractC2883d.mo2939g());
                C3276f.m2447g(m2448f);
                C3276f.m2444j(new File(m2448f, "report"), C3276f.f11089i.m2749g(mo2952a));
                return;
            } catch (IOException e) {
                Log.isLoggable("FirebaseCrashlytics", 3);
                return;
            }
        }
        throw new IllegalStateException(C1676a.m4789h("Missing required properties:", str20));
    }

    /* renamed from: b */
    public static Task m3431b(C2568p c2568p) {
        boolean z;
        Task task;
        Objects.requireNonNull(c2568p);
        ArrayList arrayList = new ArrayList();
        File[] listFiles = c2568p.m3426g().listFiles(C2556i.f8931b);
        File[] fileArr = listFiles;
        if (listFiles == null) {
            fileArr = new File[0];
        }
        for (File file : fileArr) {
            try {
                long parseLong = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    z = true;
                } catch (ClassNotFoundException e) {
                    z = false;
                }
                if (z) {
                    Log.w("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists", null);
                    task = Tasks.forResult(null);
                } else {
                    Log.isLoggable("FirebaseCrashlytics", 3);
                    task = Tasks.call(new ScheduledThreadPoolExecutor(1), new CallableC2558j(c2568p, parseLong));
                }
                arrayList.add(task);
            } catch (NumberFormatException e2) {
                StringBuilder m8752j = C0082b.m8752j("Could not parse app exception timestamp from file ");
                m8752j.append(file.getName());
                Log.w("FirebaseCrashlytics", m8752j.toString(), null);
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x031c A[Catch: IOException -> 0x0393, TRY_LEAVE, TryCatch #2 {IOException -> 0x0393, blocks: (B:76:0x02ee, B:78:0x031c, B:80:0x0363, B:81:0x0386, B:82:0x0392), top: B:97:0x02ee }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0386 A[Catch: IOException -> 0x0393, TRY_ENTER, TryCatch #2 {IOException -> 0x0393, blocks: (B:76:0x02ee, B:78:0x031c, B:80:0x0363, B:81:0x0386, B:82:0x0392), top: B:97:0x02ee }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3430c(boolean r7) {
        /*
            Method dump skipped, instructions count: 1038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p080e5.C2568p.m3430c(boolean):void");
    }

    /* renamed from: d */
    public final void m3429d(long j) {
        try {
            File m3426g = m3426g();
            new File(m3426g, ".ae" + j).createNewFile();
        } catch (IOException e) {
            Log.w("FirebaseCrashlytics", "Could not create app exception marker file.", e);
        }
    }

    /* renamed from: e */
    public boolean m3428e() {
        this.f8957d.m3440a();
        C2581z c2581z = this.f8966m;
        if (c2581z != null && c2581z.f9005d.get()) {
            Log.w("FirebaseCrashlytics", "Skipping session finalization because a crash has already occurred.", null);
            return false;
        }
        Log.isLoggable("FirebaseCrashlytics", 2);
        try {
            m3430c(true);
            Log.isLoggable("FirebaseCrashlytics", 2);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: f */
    public final String m3427f() {
        ArrayList arrayList = (ArrayList) this.f8965l.m3436b();
        return !arrayList.isEmpty() ? (String) arrayList.get(0) : null;
    }

    /* renamed from: g */
    public File m3426g() {
        return this.f8959f.m355h();
    }

    /* renamed from: h */
    public Task<Void> m3425h(Task<C3641a> task) {
        Task task2;
        Task<Void> task3;
        if (!(!((ArrayList) this.f8965l.f8927b.m2451c()).isEmpty())) {
            Log.isLoggable("FirebaseCrashlytics", 2);
            this.f8967n.trySetResult(Boolean.FALSE);
            return Tasks.forResult(null);
        }
        Log.isLoggable("FirebaseCrashlytics", 2);
        if (this.f8955b.m3461a()) {
            Log.isLoggable("FirebaseCrashlytics", 3);
            this.f8967n.trySetResult(Boolean.FALSE);
            task2 = Tasks.forResult(Boolean.TRUE);
        } else {
            Log.isLoggable("FirebaseCrashlytics", 3);
            Log.isLoggable("FirebaseCrashlytics", 2);
            this.f8967n.trySetResult(Boolean.TRUE);
            C2538a0 c2538a0 = this.f8955b;
            synchronized (c2538a0.f8890c) {
                task3 = c2538a0.f8891d.getTask();
            }
            Task<TContinuationResult> onSuccessTask = task3.onSuccessTask(new C2554h(this));
            Log.isLoggable("FirebaseCrashlytics", 3);
            Task<Boolean> task4 = this.f8968o.getTask();
            ExecutorService executorService = C2564l0.f8944a;
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            C2559j0 c2559j0 = new C2559j0(taskCompletionSource);
            onSuccessTask.continueWith(c2559j0);
            task4.continueWith(c2559j0);
            task2 = taskCompletionSource.getTask();
        }
        return task2.onSuccessTask(new C2569a(task));
    }
}
