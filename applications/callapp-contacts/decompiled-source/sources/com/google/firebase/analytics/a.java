package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.ak;
import com.google.android.gms.measurement.internal.gw;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/a.class */
final class a implements gw {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ak f32184a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ak akVar) {
        this.f32184a = akVar;
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final String a() {
        return this.f32184a.d();
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final List<Bundle> a(String str, String str2) {
        return this.f32184a.a(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final Map<String, Object> a(String str, String str2, boolean z) {
        return this.f32184a.a(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final void a(Bundle bundle) {
        this.f32184a.a(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final void a(String str) {
        this.f32184a.b(str);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final void a(String str, String str2, Bundle bundle) {
        this.f32184a.a(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final String b() {
        return this.f32184a.e();
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final void b(String str) {
        this.f32184a.c(str);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final void b(String str, String str2, Bundle bundle) {
        this.f32184a.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final int c(String str) {
        return this.f32184a.d(str);
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final String c() {
        return this.f32184a.b();
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final String d() {
        return this.f32184a.a();
    }

    @Override // com.google.android.gms.measurement.internal.gw
    public final long e() {
        return this.f32184a.c();
    }
}
