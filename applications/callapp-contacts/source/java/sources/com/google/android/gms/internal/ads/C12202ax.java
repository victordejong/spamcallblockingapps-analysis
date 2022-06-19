package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
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
import net.pubnative.lite.sdk.analytics.Reporting;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.ax */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ax.class */
public final class C12202ax {

    /* renamed from: c */
    String f43280c;

    /* renamed from: f */
    private String f43283f;

    /* renamed from: g */
    private Context f43284g;

    /* renamed from: h */
    private AtomicBoolean f43285h;

    /* renamed from: i */
    private File f43286i;

    /* renamed from: a */
    BlockingQueue<C12241bi> f43278a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    LinkedHashMap<String, String> f43279b = new LinkedHashMap<>();

    /* renamed from: e */
    private Map<String, AbstractC12214bc> f43282e = new HashMap();

    /* renamed from: d */
    final HashSet<String> f43281d = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* renamed from: a */
    public final AbstractC12214bc m18347a(String str) {
        AbstractC12214bc abstractC12214bc = this.f43282e.get(str);
        return abstractC12214bc != null ? abstractC12214bc : AbstractC12214bc.f43507a;
    }

    /* renamed from: a */
    public final Map<String, String> m18345a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, m18347a(key).mo18119a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public final void m18349a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f43284g = context;
        this.f43280c = str;
        this.f43283f = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f43285h = atomicBoolean;
        atomicBoolean.set(C12276cl.f46000c.mo17481a().booleanValue());
        if (this.f43285h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f43286i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f43279b.put(entry.getKey(), entry.getValue());
        }
        C13091zd.f50118a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aw

            /* renamed from: a */
            private final C12202ax f43226a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43226a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12202ax c12202ax = this.f43226a;
                while (true) {
                    try {
                        C12241bi take = c12202ax.f43278a.take();
                        C12240bh m17834a = take.m17834a();
                        if (!TextUtils.isEmpty(m17834a.f43923a)) {
                            c12202ax.m18346a(c12202ax.m18345a(c12202ax.f43279b, take.m17830b()), m17834a);
                        }
                    } catch (InterruptedException e) {
                        zzd.zzd("CsiReporter:reporter interrupted", e);
                        return;
                    }
                }
            }
        });
        this.f43282e.put("action", AbstractC12214bc.f43508b);
        this.f43282e.put(Reporting.Key.AD_FORMAT, AbstractC12214bc.f43508b);
        this.f43282e.put("e", AbstractC12214bc.f43509c);
    }

    /* renamed from: a */
    public final void m18346a(Map<String, String> map, C12240bh c12240bh) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        Uri.Builder buildUpon = Uri.parse(this.f43283f).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (c12240bh != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(c12240bh.f43923a)) {
                sb.append("&it=");
                sb.append(c12240bh.f43923a);
            }
            if (!TextUtils.isEmpty(c12240bh.f43924b)) {
                sb.append("&blat=");
                sb.append(c12240bh.f43924b);
            }
            uri = sb.toString();
        }
        if (!this.f43285h.get()) {
            zzr.zzkv();
            zzj.zzb(this.f43284g, this.f43280c, uri);
            return;
        }
        File file = this.f43286i;
        if (file == null) {
            zzd.zzez("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
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
            fileOutputStream.write(uri.getBytes());
            fileOutputStream.write(10);
            try {
                fileOutputStream.close();
            } catch (IOException e3) {
                zzd.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e3);
            }
        } catch (IOException e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            zzd.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
            if (fileOutputStream == null) {
                return;
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                zzd.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
            }
        } catch (Throwable th3) {
            fileOutputStream2 = fileOutputStream;
            th = th3;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    zzd.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                }
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final boolean m18348a(C12241bi c12241bi) {
        return this.f43278a.offer(c12241bi);
    }
}
