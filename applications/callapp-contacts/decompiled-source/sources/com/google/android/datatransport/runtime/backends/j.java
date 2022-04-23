package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.a.a.b;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/j.class */
public final class j implements b<i> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Context> f20420a;

    /* renamed from: b  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20421b;

    /* renamed from: c  reason: collision with root package name */
    private final a<com.google.android.datatransport.runtime.d.a> f20422c;

    public j(a<Context> aVar, a<com.google.android.datatransport.runtime.d.a> aVar2, a<com.google.android.datatransport.runtime.d.a> aVar3) {
        this.f20420a = aVar;
        this.f20421b = aVar2;
        this.f20422c = aVar3;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new i(this.f20420a.a(), this.f20421b.a(), this.f20422c.a());
    }
}
