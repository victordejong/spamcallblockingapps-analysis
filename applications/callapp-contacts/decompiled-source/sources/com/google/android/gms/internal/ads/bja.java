package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bja.class */
public final class bja {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, bjb> f24535a = new HashMap();

    private final bjb a(String str) {
        bjb bjbVar;
        synchronized (this) {
            bjbVar = this.f24535a.get(str);
        }
        return bjbVar;
    }

    public final bjb a(List<String> list) {
        for (String str : list) {
            bjb a2 = a(str);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, cqe cqeVar) {
        synchronized (this) {
            if (!this.f24535a.containsKey(str)) {
                try {
                    this.f24535a.put(str, new bjb(str, cqeVar.i(), cqeVar.j()));
                } catch (zzdpq e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, os osVar) {
        synchronized (this) {
            if (!this.f24535a.containsKey(str)) {
                try {
                    this.f24535a.put(str, new bjb(str, osVar.a(), osVar.b()));
                } catch (Throwable th) {
                }
            }
        }
    }
}
