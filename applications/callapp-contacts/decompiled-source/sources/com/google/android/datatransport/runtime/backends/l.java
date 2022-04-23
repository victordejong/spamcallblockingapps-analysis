package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.a.a.b;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/l.class */
public final class l implements b<k> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Context> f20428a;

    /* renamed from: b  reason: collision with root package name */
    private final a<i> f20429b;

    public l(a<Context> aVar, a<i> aVar2) {
        this.f20428a = aVar;
        this.f20429b = aVar2;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new k(this.f20428a.a(), this.f20429b.a());
    }
}
