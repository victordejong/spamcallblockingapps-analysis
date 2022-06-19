package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bhi.class */
public final class bhi {

    /* renamed from: a */
    private final bho f11242a;

    /* renamed from: b */
    private final Executor f11243b;

    /* renamed from: c */
    private final Map<String, String> f11244c;

    public bhi(bho bhoVar, Executor executor) {
        this.f11242a = bhoVar;
        this.f11244c = bhoVar.m11925a();
        this.f11243b = executor;
    }

    /* renamed from: a */
    public final bhh m11935a() {
        bhh m11936c;
        m11936c = new bhh(this).m11936c();
        return m11936c;
    }
}
