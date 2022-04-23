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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sn.class */
public class sn implements ehl {
    @Deprecated
    private final acj zzce;
    private final pq zzcf;
    private final rq zzcg;

    public sn(pq pqVar) {
        this(pqVar, new rq(4096));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private sn(pq pqVar, rq rqVar) {
        this.zzcf = pqVar;
        this.zzce = pqVar;
        this.zzcg = rqVar;
    }

    @Override // com.google.android.gms.internal.ads.ehl
    public emg zza(z<?> zVar) throws zzap {
        IOException e;
        Map<String, String> map;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            zk zkVar = null;
            byte[] bArr = null;
            try {
                eap zzf = zVar.zzf();
                if (zzf == null) {
                    map = Collections.emptyMap();
                } else {
                    map = new HashMap<>();
                    if (zzf.f27535b != null) {
                        map.put("If-None-Match", zzf.f27535b);
                    }
                    if (zzf.f27537d > 0) {
                        map.put("If-Modified-Since", aaj.a("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(zzf.f27537d)));
                    }
                }
                zk a2 = this.zzcf.a(zVar, map);
                try {
                    int i = a2.f28582a;
                    List<eim> unmodifiableList = Collections.unmodifiableList(a2.f28583b);
                    if (i == 304) {
                        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        eap zzf2 = zVar.zzf();
                        if (zzf2 == null) {
                            return new emg(304, (byte[]) null, true, elapsedRealtime2, (List<eim>) unmodifiableList);
                        }
                        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                        if (!unmodifiableList.isEmpty()) {
                            for (eim eimVar : unmodifiableList) {
                                treeSet.add(eimVar.f27864a);
                            }
                        }
                        ArrayList arrayList = new ArrayList(unmodifiableList);
                        if (zzf2.h != null) {
                            if (!zzf2.h.isEmpty()) {
                                for (eim eimVar2 : zzf2.h) {
                                    if (!treeSet.contains(eimVar2.f27864a)) {
                                        arrayList.add(eimVar2);
                                    }
                                }
                            }
                        } else if (!zzf2.g.isEmpty()) {
                            for (Map.Entry<String, String> entry : zzf2.g.entrySet()) {
                                if (!treeSet.contains(entry.getKey())) {
                                    arrayList.add(new eim(entry.getKey(), entry.getValue()));
                                }
                            }
                        }
                        return new emg(304, zzf2.f27534a, true, elapsedRealtime2, (List<eim>) arrayList);
                    }
                    InputStream inputStream = a2.f28585d != null ? a2.f28585d : null;
                    byte[] a3 = inputStream != null ? agj.a(inputStream, a2.f28584c, this.zzcg) : new byte[0];
                    long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
                    if (mz.f28207a || elapsedRealtime3 > 3000) {
                        mz.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", zVar, Long.valueOf(elapsedRealtime3), a3 != null ? Integer.valueOf(a3.length) : JsonReaderKt.NULL, Integer.valueOf(i), Integer.valueOf(zVar.zzj().b()));
                    }
                    if (i >= 200 && i <= 299) {
                        return new emg(i, a3, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<eim>) unmodifiableList);
                    }
                    throw new IOException();
                } catch (IOException e2) {
                    e = e2;
                    zkVar = a2;
                    if (e instanceof SocketTimeoutException) {
                        agj.a("socket", zVar, new zzam());
                    } else if (e instanceof MalformedURLException) {
                        String valueOf = String.valueOf(zVar.getUrl());
                        throw new RuntimeException(valueOf.length() != 0 ? "Bad URL ".concat(valueOf) : new String("Bad URL "), e);
                    } else if (zkVar != null) {
                        int i2 = zkVar.f28582a;
                        mz.c("Unexpected response code %d for %s", Integer.valueOf(i2), zVar.getUrl());
                        if (bArr != null) {
                            emg emgVar = new emg(i2, bArr, false, SystemClock.elapsedRealtime() - elapsedRealtime, (List<eim>) Collections.unmodifiableList(zkVar.f28583b));
                            if (i2 == 401 || i2 == 403) {
                                agj.a("auth", zVar, new zzl(emgVar));
                            } else if (i2 >= 400 && i2 <= 499) {
                                throw new zzo(emgVar);
                            } else if (i2 < 500 || i2 > 599) {
                                throw new zzan(emgVar);
                            } else {
                                throw new zzan(emgVar);
                            }
                        } else {
                            agj.a("network", zVar, new zzw());
                        }
                    } else {
                        throw new zzy(e);
                    }
                }
            } catch (IOException e3) {
                e = e3;
                bArr = null;
            }
        }
    }
}
