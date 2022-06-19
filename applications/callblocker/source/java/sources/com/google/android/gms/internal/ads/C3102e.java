package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
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
/* renamed from: com.google.android.gms.internal.ads.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/e.class */
public final class C3102e {

    /* renamed from: d */
    private String f16173d;

    /* renamed from: e */
    private Context f16174e;

    /* renamed from: f */
    private String f16175f;

    /* renamed from: h */
    private AtomicBoolean f16177h;

    /* renamed from: i */
    private File f16178i;

    /* renamed from: a */
    private BlockingQueue<C3373o> f16170a = new ArrayBlockingQueue(100);

    /* renamed from: b */
    private LinkedHashMap<String, String> f16171b = new LinkedHashMap<>();

    /* renamed from: c */
    private Map<String, AbstractC3211i> f16172c = new HashMap();

    /* renamed from: g */
    private final HashSet<String> f16176g = new HashSet<>(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m8107a(java.util.Map<java.lang.String, java.lang.String> r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3102e.m8107a(java.util.Map, java.lang.String):void");
    }

    /* renamed from: a */
    public final AbstractC3211i m8108a(String str) {
        AbstractC3211i abstractC3211i = this.f16172c.get(str);
        if (abstractC3211i == null) {
            abstractC3211i = AbstractC3211i.f16738a;
        }
        return abstractC3211i;
    }

    /* renamed from: a */
    public final Map<String, String> m8106a(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 != null) {
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                linkedHashMap.put(key, m8108a(key).mo7435a((String) linkedHashMap.get(key), value));
            }
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public final /* synthetic */ void m8111a() {
        while (true) {
            try {
                C3373o take = this.f16170a.take();
                String m7383a = take.m7383a();
                if (!TextUtils.isEmpty(m7383a)) {
                    m8107a(m8106a(this.f16171b, take.m7378b()), m7383a);
                }
            } catch (InterruptedException e) {
                C3556uu.m6746d("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m8110a(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.f16174e = context;
        this.f16175f = str;
        this.f16173d = str2;
        this.f16177h = new AtomicBoolean(false);
        this.f16177h.set(C2780am.f9978c.mo13599a().booleanValue());
        if (this.f16177h.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.f16178i = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f16171b.put(entry.getKey(), entry.getValue());
        }
        C3650yg.f17642a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.h

            /* renamed from: a */
            private final C3102e f16702a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16702a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16702a.m8111a();
            }
        });
        this.f16172c.put("action", AbstractC3211i.f16739b);
        this.f16172c.put("ad_format", AbstractC3211i.f16739b);
        this.f16172c.put("e", AbstractC3211i.f16740c);
    }

    /* renamed from: a */
    public final boolean m8109a(C3373o c3373o) {
        return this.f16170a.offer(c3373o);
    }

    /* renamed from: b */
    public final void m8105b(String str) {
        if (this.f16176g.contains(str)) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("sdkVersion", this.f16175f);
        linkedHashMap.put("ue", str);
        m8107a(m8106a(this.f16171b, linkedHashMap), "");
    }
}
