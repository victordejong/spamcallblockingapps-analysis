package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.common.util.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/m.class */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f32639a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32640b;

    /* renamed from: c  reason: collision with root package name */
    private final f f32641c;

    private m(d dVar, String str, f fVar) {
        this.f32639a = dVar;
        this.f32640b = str;
        this.f32641c = fVar;
    }

    public static Runnable a(d dVar, String str, f fVar) {
        return new m(dVar, str, fVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32639a.a(this.f32640b, this.f32641c);
    }
}
