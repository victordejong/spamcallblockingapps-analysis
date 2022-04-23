package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.g;
import com.google.android.gms.tasks.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/c.class */
public final /* synthetic */ class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final a f32605a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32606b;

    /* renamed from: c  reason: collision with root package name */
    private final f f32607c;

    private c(a aVar, boolean z, f fVar) {
        this.f32605a = aVar;
        this.f32606b = z;
        this.f32607c = fVar;
    }

    public static g a(a aVar, boolean z, f fVar) {
        return new c(aVar, true, fVar);
    }

    @Override // com.google.android.gms.tasks.g
    public final h then(Object obj) {
        return a.a(this.f32605a, this.f32606b, this.f32607c);
    }
}
