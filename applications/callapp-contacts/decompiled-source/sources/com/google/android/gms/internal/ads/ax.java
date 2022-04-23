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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ax.class */
public final class ax {

    /* renamed from: c  reason: collision with root package name */
    String f23971c;
    private String f;
    private Context g;
    private AtomicBoolean h;
    private File i;

    /* renamed from: a  reason: collision with root package name */
    BlockingQueue<bi> f23969a = new ArrayBlockingQueue(100);

    /* renamed from: b  reason: collision with root package name */
    LinkedHashMap<String, String> f23970b = new LinkedHashMap<>();
    private Map<String, bc> e = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final HashSet<String> f23972d = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    public final bc a(String str) {
        bc bcVar = this.e.get(str);
        return bcVar != null ? bcVar : bc.f24146a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, a(key).a((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public final void a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.g = context;
        this.f23971c = str;
        this.f = str2;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.h = atomicBoolean;
        atomicBoolean.set(cl.f26006c.a().booleanValue());
        if (this.h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f23970b.put(entry.getKey(), entry.getValue());
        }
        zd.f28573a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.aw

            /* renamed from: a  reason: collision with root package name */
            private final ax f23937a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23937a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ax axVar = this.f23937a;
                while (true) {
                    try {
                        bi take = axVar.f23969a.take();
                        bh a2 = take.a();
                        if (!TextUtils.isEmpty(a2.f24433a)) {
                            axVar.a(axVar.a(axVar.f23970b, take.b()), a2);
                        }
                    } catch (InterruptedException e) {
                        zzd.zzd("CsiReporter:reporter interrupted", e);
                        return;
                    }
                }
            }
        });
        this.e.put("action", bc.f24147b);
        this.e.put(Reporting.Key.AD_FORMAT, bc.f24147b);
        this.e.put("e", bc.f24148c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Map<String, String> map, bh bhVar) {
        Throwable th;
        IOException e;
        Uri.Builder buildUpon = Uri.parse(this.f).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (bhVar != null) {
            StringBuilder sb = new StringBuilder(uri);
            if (!TextUtils.isEmpty(bhVar.f24433a)) {
                sb.append("&it=");
                sb.append(bhVar.f24433a);
            }
            if (!TextUtils.isEmpty(bhVar.f24434b)) {
                sb.append("&blat=");
                sb.append(bhVar.f24434b);
            }
            uri = sb.toString();
        }
        if (this.h.get()) {
            File file = this.i;
            if (file != null) {
                FileOutputStream fileOutputStream = null;
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        fileOutputStream = new FileOutputStream(file, true);
                    } catch (IOException e2) {
                        e = e2;
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
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            zzd.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e5);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e6) {
                            zzd.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e6);
                        }
                    }
                    throw th;
                }
            } else {
                zzd.zzez("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            }
        } else {
            zzr.zzkv();
            zzj.zzb(this.g, this.f23971c, uri);
        }
    }

    public final boolean a(bi biVar) {
        return this.f23969a.offer(biVar);
    }
}
