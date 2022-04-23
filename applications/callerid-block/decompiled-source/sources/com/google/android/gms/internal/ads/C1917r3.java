package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.r3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r3.class */
public final class C1917r3 {

    /* renamed from: d */
    String f8315d;

    /* renamed from: e */
    Context f8316e;

    /* renamed from: f */
    String f8317f;

    /* renamed from: h */
    private AtomicBoolean f8319h;

    /* renamed from: i */
    private File f8320i;

    /* renamed from: a */
    final BlockingQueue<C1678c4> f8312a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    final LinkedHashMap<String, String> f8313b = new LinkedHashMap<>();

    /* renamed from: c */
    final Map<String, AbstractC2047y3> f8314c = new HashMap();

    /* renamed from: g */
    private final HashSet<String> f8318g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: g */
    private final void m5992g(Map<String, String> map, C1660b4 b4Var) {
        Throwable th;
        IOException e;
        Uri.Builder buildUpon = Uri.parse(this.f8315d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        String str = uri;
        if (b4Var != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(b4Var.m8051a())) {
                sb.append("&it=");
                sb.append(b4Var.m8051a());
            }
            if (!TextUtils.isEmpty(b4Var.m8050b())) {
                sb.append("&blat=");
                sb.append(b4Var.m8050b());
            }
            str = sb.toString();
        }
        if (this.f8319h.get()) {
            File file = this.f8320i;
            if (file != null) {
                FileOutputStream fileOutputStream = null;
                fileOutputStream = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
                try {
                    fileOutputStream.write(str.getBytes());
                    fileOutputStream.write(10);
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                        C1894po.m6179g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
                    }
                } catch (IOException e4) {
                    e = e4;
                    C1894po.m6179g("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            C1894po.m6179g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                            C1894po.m6179g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                        }
                    }
                    throw th;
                }
            } else {
                C1894po.m6180f("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            }
        } else {
            C1407r.m8920d();
            C1433l1.m8755l(this.f8316e, this.f8317f, str);
        }
    }

    /* renamed from: a */
    public final void m5998a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f8316e = context;
        this.f8317f = str;
        this.f8315d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f8319h = atomicBoolean;
        atomicBoolean.set(C2011w4.f8982c.m6222e().booleanValue());
        if (this.f8319h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f8320i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f8313b.put(entry.getKey(), entry.getValue());
        }
        C2073zo.f9410a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.q3

            /* renamed from: b */
            private final C1917r3 f8195b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8195b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f8195b.m5993f();
            }
        });
        Map<String, AbstractC2047y3> map2 = this.f8314c;
        AbstractC2047y3 y3Var = AbstractC2047y3.f9196b;
        map2.put("action", y3Var);
        this.f8314c.put("ad_format", y3Var);
        this.f8314c.put("e", AbstractC2047y3.f9197c);
    }

    /* renamed from: b */
    public final boolean m5997b(C1678c4 c4Var) {
        return this.f8312a.offer(c4Var);
    }

    /* renamed from: c */
    final Map<String, String> m5996c(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, m5995d(key).m4809a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    /* renamed from: d */
    public final AbstractC2047y3 m5995d(String str) {
        AbstractC2047y3 y3Var = this.f8314c.get(str);
        return y3Var != null ? y3Var : AbstractC2047y3.f9195a;
    }

    /* renamed from: e */
    public final void m5994e(String str) {
        if (!this.f8318g.contains(str)) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("sdkVersion", this.f8317f);
            linkedHashMap.put("ue", str);
            m5992g(m5996c(this.f8313b, linkedHashMap), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void m5993f() {
        while (true) {
            try {
                C1678c4 take = this.f8312a.take();
                C1660b4 c = take.m7876c();
                if (!TextUtils.isEmpty(c.m8051a())) {
                    m5992g(m5996c(this.f8313b, take.m7874e()), c);
                }
            } catch (InterruptedException e) {
                C1894po.m6179g("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }
}
