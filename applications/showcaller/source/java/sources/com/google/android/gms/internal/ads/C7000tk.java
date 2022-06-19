package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.tk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tk.class */
public final class C7000tk implements Comparator<C7222zk> {
    public C7000tk(C7074vk c7074vk) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C7222zk c7222zk, C7222zk c7222zk2) {
        C7222zk c7222zk3 = c7222zk;
        C7222zk c7222zk4 = c7222zk2;
        int i = c7222zk3.f32969c - c7222zk4.f32969c;
        return i != 0 ? i : (int) (c7222zk3.f32967a - c7222zk4.f32967a);
    }
}
