package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bja.class */
public final class bja {

    /* renamed from: a */
    private final Map<String, bjb> f44085a = new HashMap();

    /* renamed from: a */
    private final bjb m17817a(String str) {
        bjb bjbVar;
        synchronized (this) {
            bjbVar = this.f44085a.get(str);
        }
        return bjbVar;
    }

    /* renamed from: a */
    public final bjb m17814a(List<String> list) {
        for (String str : list) {
            bjb m17817a = m17817a(str);
            if (m17817a != null) {
                return m17817a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m17816a(String str, cqe cqeVar) {
        synchronized (this) {
            if (this.f44085a.containsKey(str)) {
                return;
            }
            try {
                this.f44085a.put(str, new bjb(str, cqeVar.m17326i(), cqeVar.m17325j()));
            } catch (zzdpq e) {
            }
        }
    }

    /* renamed from: a */
    public final void m17815a(String str, AbstractC12807os abstractC12807os) {
        synchronized (this) {
            if (this.f44085a.containsKey(str)) {
                return;
            }
            try {
                this.f44085a.put(str, new bjb(str, abstractC12807os.mo14284a(), abstractC12807os.mo14269b()));
            } catch (Throwable th) {
            }
        }
    }
}
