package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmp.class */
public class dmp {

    /* renamed from: a */
    private int f14839a;

    /* renamed from: a */
    public void mo9080a() {
        this.f14839a = 0;
    }

    /* renamed from: a */
    public final void m9110a(int i) {
        this.f14839a = i;
    }

    /* renamed from: b */
    public final void m9108b(int i) {
        this.f14839a |= RecyclerView.UNDEFINED_DURATION;
    }

    /* renamed from: b */
    public final boolean m9109b() {
        return m9106c(RecyclerView.UNDEFINED_DURATION);
    }

    /* renamed from: c */
    public final boolean m9107c() {
        return m9106c(4);
    }

    /* renamed from: c */
    public final boolean m9106c(int i) {
        return (this.f14839a & i) == i;
    }

    /* renamed from: d */
    public final boolean m9105d() {
        return m9106c(1);
    }
}
