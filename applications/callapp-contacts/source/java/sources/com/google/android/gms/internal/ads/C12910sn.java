package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.gms.internal.ads.sn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sn.class */
public class C12910sn implements ehl {
    @Deprecated
    private final acj zzce;
    private final AbstractC12832pq zzcf;
    private final C12886rq zzcg;

    public C12910sn(AbstractC12832pq abstractC12832pq) {
        this(abstractC12832pq, new C12886rq(4096));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C12910sn(AbstractC12832pq abstractC12832pq, C12886rq c12886rq) {
        this.zzcf = abstractC12832pq;
        this.zzce = abstractC12832pq;
        this.zzcg = c12886rq;
    }

    @Override // com.google.android.gms.internal.ads.ehl
    public emg zza(AbstractC13087z<?> abstractC13087z) throws zzap {
        IOException e;
        byte[] bArr;
        C13098zk c13098zk;
        Map<String, String> map;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                eap zzf = abstractC13087z.zzf();
                if (zzf == null) {
                    map = Collections.emptyMap();
                } else {
                    map = new HashMap<>();
                    if (zzf.f48517b != null) {
                        map.put("If-None-Match", zzf.f48517b);
                    }
                    if (zzf.f48519d > 0) {
                        map.put("If-Modified-Since", aaj.m18952a("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(zzf.f48519d)));
                    }
                }
                C13098zk mo14253a = this.zzcf.mo14253a(abstractC13087z, map);
                try {
                    int i = mo14253a.f50129a;
                    List<eim> unmodifiableList = Collections.unmodifiableList(mo14253a.f50130b);
                    if (i != 304) {
                        InputStream inputStream = mo14253a.f50132d != null ? mo14253a.f50132d : null;
                        byte[] m18761a = inputStream != null ? agj.m18761a(inputStream, mo14253a.f50131c, this.zzcg) : new byte[0];
                        byte[] bArr2 = m18761a;
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        byte[] bArr3 = m18761a;
                        if (C12759mz.f49560a || elapsedRealtime2 > 3000) {
                            C12759mz.m14480b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", abstractC13087z, Long.valueOf(elapsedRealtime2), m18761a != null ? Integer.valueOf(m18761a.length) : JsonReaderKt.NULL, Integer.valueOf(i), Integer.valueOf(abstractC13087z.zzj().mo14592b()));
                        }
                        if (i >= 200 && i <= 299) {
                            return new emg(i, m18761a, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<eim>) unmodifiableList);
                        }
                        byte[] bArr4 = m18761a;
                        byte[] bArr5 = m18761a;
                        byte[] bArr6 = m18761a;
                        throw new IOException();
                    }
                    long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
                    eap zzf2 = abstractC13087z.zzf();
                    if (zzf2 == null) {
                        return new emg(304, (byte[]) null, true, elapsedRealtime3, (List<eim>) unmodifiableList);
                    }
                    TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                    if (!unmodifiableList.isEmpty()) {
                        for (eim eimVar : unmodifiableList) {
                            treeSet.add(eimVar.f49055a);
                        }
                    }
                    ArrayList arrayList = new ArrayList(unmodifiableList);
                    if (zzf2.f48523h != null) {
                        if (!zzf2.f48523h.isEmpty()) {
                            for (eim eimVar2 : zzf2.f48523h) {
                                if (!treeSet.contains(eimVar2.f49055a)) {
                                    arrayList.add(eimVar2);
                                }
                            }
                        }
                    } else if (!zzf2.f48522g.isEmpty()) {
                        for (Map.Entry<String, String> entry : zzf2.f48522g.entrySet()) {
                            if (!treeSet.contains(entry.getKey())) {
                                arrayList.add(new eim(entry.getKey(), entry.getValue()));
                            }
                        }
                    }
                    return new emg(304, zzf2.f48516a, true, elapsedRealtime3, (List<eim>) arrayList);
                } catch (IOException e2) {
                    bArr = null;
                    e = e2;
                    c13098zk = mo14253a;
                    if (e instanceof SocketTimeoutException) {
                        agj.m18760a("socket", abstractC13087z, new zzam());
                    } else if (e instanceof MalformedURLException) {
                        String valueOf = String.valueOf(abstractC13087z.getUrl());
                        throw new RuntimeException(valueOf.length() != 0 ? "Bad URL ".concat(valueOf) : new String("Bad URL "), e);
                    } else if (c13098zk == null) {
                        throw new zzy(e);
                    } else {
                        int i2 = c13098zk.f50129a;
                        C12759mz.m14479c("Unexpected response code %d for %s", Integer.valueOf(i2), abstractC13087z.getUrl());
                        if (bArr != null) {
                            emg emgVar = new emg(i2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<eim>) Collections.unmodifiableList(c13098zk.f50130b));
                            if (i2 != 401 && i2 != 403) {
                                if (i2 >= 400 && i2 <= 499) {
                                    throw new zzo(emgVar);
                                }
                                if (i2 >= 500 && i2 <= 599) {
                                    throw new zzan(emgVar);
                                }
                                throw new zzan(emgVar);
                            }
                            agj.m18760a("auth", abstractC13087z, new zzl(emgVar));
                        } else {
                            agj.m18760a("network", abstractC13087z, new zzw());
                        }
                    }
                }
            } catch (IOException e3) {
                e = e3;
                bArr = null;
                c13098zk = null;
            }
        }
    }
}
