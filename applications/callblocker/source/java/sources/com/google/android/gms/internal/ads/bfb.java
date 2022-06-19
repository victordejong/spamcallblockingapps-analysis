package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bfb.class */
public final class bfb {
    @GuardedBy("this")

    /* renamed from: a */
    private final Map<String, bfc> f11129a = new HashMap();

    @Nullable
    /* renamed from: a */
    public final bfc m12014a(String str) {
        bfc bfcVar;
        synchronized (this) {
            bfcVar = this.f11129a.get(str);
        }
        return bfcVar;
    }

    /* renamed from: a */
    public final void m12013a(String str, chs chsVar) {
        synchronized (this) {
            if (!this.f11129a.containsKey(str)) {
                try {
                    this.f11129a.put(str, new bfc(str, chsVar.m11267m(), chsVar.m11266n()));
                } catch (zzdhk e) {
                }
            }
        }
    }

    /* renamed from: a */
    public final void m12012a(String str, AbstractC3333mn abstractC3333mn) {
        synchronized (this) {
            if (!this.f11129a.containsKey(str)) {
                try {
                    this.f11129a.put(str, new bfc(str, abstractC3333mn.mo7457a(), abstractC3333mn.mo7445b()));
                } catch (Throwable th) {
                }
            }
        }
    }
}
