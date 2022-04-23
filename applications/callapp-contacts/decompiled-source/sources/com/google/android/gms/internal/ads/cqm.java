package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqm.class */
public final class cqm implements arp, yj {

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<yc> f26260a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final Context f26261b;

    /* renamed from: c  reason: collision with root package name */
    private final yo f26262c;

    public cqm(Context context, yo yoVar) {
        this.f26261b = context;
        this.f26262c = yoVar;
    }

    public final Bundle a() {
        return this.f26262c.a(this.f26261b, this);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(zzvh zzvhVar) {
        synchronized (this) {
            if (zzvhVar.errorCode != 3) {
                yo yoVar = this.f26262c;
                HashSet<yc> hashSet = this.f26260a;
                synchronized (yoVar.f28551a) {
                    yoVar.f28554d.addAll(hashSet);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.yj
    public final void a(HashSet<yc> hashSet) {
        synchronized (this) {
            this.f26260a.clear();
            this.f26260a.addAll(hashSet);
        }
    }
}
