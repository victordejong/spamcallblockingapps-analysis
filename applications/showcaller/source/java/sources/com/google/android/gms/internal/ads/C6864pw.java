package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
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
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.pw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pw.class */
public final class C6864pw {

    /* renamed from: d */
    String f28181d;

    /* renamed from: e */
    Context f28182e;

    /* renamed from: f */
    String f28183f;

    /* renamed from: h */
    private AtomicBoolean f28185h;

    /* renamed from: i */
    private File f28186i;

    /* renamed from: a */
    final BlockingQueue<C6308ax> f28178a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    final LinkedHashMap<String, String> f28179b = new LinkedHashMap<>();

    /* renamed from: c */
    final Map<String, AbstractC7086vw> f28180c = new HashMap();

    /* renamed from: g */
    private final HashSet<String> f28184g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: g */
    private final void m12114g(Map<String, String> map, C7197yw c7197yw) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.f28181d).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        String str = uri;
        if (c7197yw != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(c7197yw.m8677a())) {
                sb.append("&it=");
                sb.append(c7197yw.m8677a());
            }
            if (!TextUtils.isEmpty(c7197yw.m8676b())) {
                sb.append("&blat=");
                sb.append(c7197yw.m8676b());
            }
            str = sb.toString();
        }
        if (!this.f28185h.get()) {
            C5667s.m18160d();
            C5679c2.m18061n(this.f28182e, this.f28183f, str);
            return;
        }
        File file = this.f28186i;
        if (file == null) {
            ei0.m15464f("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, true);
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(str.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                ei0.m15463g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
            }
        } catch (IOException e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            ei0.m15463g("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream == null) {
                return;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                ei0.m15463g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
            }
        } catch (Throwable th3) {
            fileOutputStream2 = fileOutputStream;
            th = th3;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    ei0.m15463g("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final void m12120a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f28182e = context;
        this.f28183f = str;
        this.f28181d = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f28185h = atomicBoolean;
        atomicBoolean.set(C7050ux.f31009c.m12799e().booleanValue());
        if (this.f28185h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f28186i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f28179b.put(entry.getKey(), entry.getValue());
        }
        qi0.f28495a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ow

            /* renamed from: d */
            private final C6864pw f27755d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f27755d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27755d.m12115f();
            }
        });
        Map<String, AbstractC7086vw> map2 = this.f28180c;
        AbstractC7086vw abstractC7086vw = AbstractC7086vw.f31379b;
        map2.put("action", abstractC7086vw);
        this.f28180c.put("ad_format", abstractC7086vw);
        this.f28180c.put("e", AbstractC7086vw.f31380c);
    }

    /* renamed from: b */
    public final boolean m12119b(C6308ax c6308ax) {
        return this.f28178a.offer(c6308ax);
    }

    /* renamed from: c */
    final Map<String, String> m12118c(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, m12117d(key).mo9861a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    /* renamed from: d */
    public final AbstractC7086vw m12117d(String str) {
        AbstractC7086vw abstractC7086vw = this.f28180c.get(str);
        return abstractC7086vw != null ? abstractC7086vw : AbstractC7086vw.f31378a;
    }

    /* renamed from: e */
    public final void m12116e(String str) {
        if (this.f28184g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f28183f);
        linkedHashMap.put("ue", str);
        m12114g(m12118c(this.f28179b, linkedHashMap), null);
    }

    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void m12115f() {
        while (true) {
            try {
                C6308ax take = this.f28178a.take();
                C7197yw m16473c = take.m16473c();
                if (!TextUtils.isEmpty(m16473c.m8677a())) {
                    m12114g(m12118c(this.f28179b, take.m16471e()), m16473c);
                }
            } catch (InterruptedException e) {
                ei0.m15463g("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }
}
