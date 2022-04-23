package com.google.android.datatransport.runtime.scheduling.a;

import android.content.Context;
import com.google.android.datatransport.runtime.a.a.b;
import javax.a.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/ah.class */
public final class ah implements b<ac> {

    /* renamed from: a  reason: collision with root package name */
    private final a<Context> f20491a;

    /* renamed from: b  reason: collision with root package name */
    private final a<String> f20492b;

    /* renamed from: c  reason: collision with root package name */
    private final a<Integer> f20493c;

    public ah(a<Context> aVar, a<String> aVar2, a<Integer> aVar3) {
        this.f20491a = aVar;
        this.f20492b = aVar2;
        this.f20493c = aVar3;
    }

    @Override // javax.a.a
    public final /* synthetic */ Object a() {
        return new ac(this.f20491a.a(), this.f20492b.a(), this.f20493c.a().intValue());
    }
}
