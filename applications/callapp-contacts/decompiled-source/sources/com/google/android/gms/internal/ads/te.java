package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/te.class */
public final class te implements Callable<sz> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Context f28397a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ tb f28398b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public te(tb tbVar, Context context) {
        this.f28398b = tbVar;
        this.f28397a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ sz call() throws Exception {
        sz szVar;
        td tdVar = this.f28398b.f28390a.get(this.f28397a);
        if (tdVar != null) {
            if (!(tdVar.f28395a + ch.f25818a.a().longValue() < zzr.zzlc().a())) {
                szVar = new tc(this.f28397a, tdVar.f28396b).a();
                this.f28398b.f28390a.put(this.f28397a, new td(this.f28398b, szVar));
                return szVar;
            }
        }
        szVar = new tc(this.f28397a).a();
        this.f28398b.f28390a.put(this.f28397a, new td(this.f28398b, szVar));
        return szVar;
    }
}
