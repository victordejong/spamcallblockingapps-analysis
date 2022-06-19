package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdq.class */
public final class zzbdq {
    private final ArrayList<zzou> zzeqk = new ArrayList<>();
    private long zzeql;

    public final void zza(zzou zzouVar) {
        this.zzeqk.add(zzouVar);
    }

    public final long zzacn() {
        Iterator<zzou> it = this.zzeqk.iterator();
        while (it.hasNext()) {
            Map responseHeaders = it.next().getResponseHeaders();
            if (responseHeaders != null) {
                for (Map.Entry entry : responseHeaders.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                            this.zzeql = Math.max(this.zzeql, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                        }
                    } catch (RuntimeException e) {
                    }
                }
                it.remove();
            }
        }
        return this.zzeql;
    }
}
