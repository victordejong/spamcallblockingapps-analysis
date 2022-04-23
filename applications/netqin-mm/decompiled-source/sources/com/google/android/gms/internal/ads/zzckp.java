package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckp.class */
public final class zzckp {

    /* renamed from: a */
    public final Map<String, zzckq> f26187a = new HashMap();

    /* renamed from: a */
    public final zzckq m14110a(String str) {
        zzckq zzckqVar;
        synchronized (this) {
            zzckqVar = this.f26187a.get(str);
        }
        return zzckqVar;
    }

    /* renamed from: a */
    public final void m14109a(String str, zzaph zzaphVar) {
        synchronized (this) {
            if (!this.f26187a.containsKey(str)) {
                try {
                    this.f26187a.put(str, new zzckq(str, zzaphVar.mo16468d0(), zzaphVar.mo16482V()));
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14108a(String str, zzdpa zzdpaVar) {
        synchronized (this) {
            if (!this.f26187a.containsKey(str)) {
                try {
                    this.f26187a.put(str, new zzckq(str, zzdpaVar.m13343m(), zzdpaVar.m13342n()));
                } catch (zzdos e) {
                }
            }
        }
    }
}
