package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpl.class */
public final class dpl extends dlx {

    /* renamed from: a  reason: collision with root package name */
    private final dpn f27066a;

    /* renamed from: b  reason: collision with root package name */
    private dmb f27067b = b();

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dpm f27068c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dpl(dpm dpmVar) {
        this.f27068c = dpmVar;
        this.f27066a = new dpn(dpmVar, null);
    }

    private final dmb b() {
        if (this.f27066a.hasNext()) {
            return (dmb) ((dmd) this.f27066a.next()).iterator();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dmb
    public final byte a() {
        dmb dmbVar = this.f27067b;
        if (dmbVar != null) {
            byte a2 = dmbVar.a();
            if (!this.f27067b.hasNext()) {
                this.f27067b = b();
            }
            return a2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27067b != null;
    }
}
