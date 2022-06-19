package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C7415j0;
import com.google.android.gms.measurement.internal.AbstractC7904w6;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.firebase.analytics.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/b.class */
final class C8841b implements AbstractC7904w6 {

    /* renamed from: a */
    final /* synthetic */ C7415j0 f38760a;

    public C8841b(C7415j0 c7415j0) {
        this.f38760a = c7415j0;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: G0 */
    public final int mo2561G0(String str) {
        return this.f38760a.m7275e(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: L */
    public final void mo2560L(Bundle bundle) {
        this.f38760a.m7290A(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: N */
    public final void mo2559N(String str) {
        this.f38760a.m7284G(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: a */
    public final void mo2558a(String str) {
        this.f38760a.m7285F(str);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: b */
    public final void mo2557b(String str, String str2, Bundle bundle) {
        this.f38760a.m7255y(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: c */
    public final List<Bundle> mo2556c(String str, String str2) {
        return this.f38760a.m7288C(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: d */
    public final void mo2555d(String str, String str2, Bundle bundle) {
        this.f38760a.m7289B(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: e */
    public final Map<String, Object> mo2554e(String str, String str2, boolean z) {
        return this.f38760a.m7278b(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: f */
    public final String mo2553f() {
        return this.f38760a.m7279a();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: g */
    public final String mo2552g() {
        return this.f38760a.m7283H();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    /* renamed from: h */
    public final long mo2551h() {
        return this.f38760a.m7281J();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    public final String zzg() {
        return this.f38760a.m7280K();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7904w6
    public final String zzi() {
        return this.f38760a.m7282I();
    }
}
