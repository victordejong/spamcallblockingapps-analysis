package com.google.android.gms.internal.measurement;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzev.class */
final class zzev extends zzei<K, V> {
    @NullableDecl

    /* renamed from: f */
    private final K f8401f;

    /* renamed from: g */
    private int f8402g;

    /* renamed from: h */
    private final /* synthetic */ zzem f8403h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public zzev(zzem zzemVar, int i) {
        this.f8403h = zzemVar;
        this.f8401f = zzemVar.f8384h[i];
        this.f8402g = i;
    }

    /* renamed from: a */
    private final void m12705a() {
        int f;
        int i = this.f8402g;
        if (i == -1 || i >= this.f8403h.size() || !zzdz.m12745a(this.f8401f, this.f8403h.f8384h[this.f8402g])) {
            f = this.f8403h.m12727f(this.f8401f);
            this.f8402g = f;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzei, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return this.f8401f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.measurement.zzei, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        Map n = this.f8403h.m12719n();
        if (n != null) {
            return n.get(this.f8401f);
        }
        m12705a();
        int i = this.f8402g;
        if (i == -1) {
            return null;
        }
        return this.f8403h.f8385i[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [V, java.lang.Object] */
    @Override // com.google.android.gms.internal.measurement.zzei, java.util.Map.Entry
    public final V setValue(V v) {
        Map n = this.f8403h.m12719n();
        if (n != null) {
            return n.put(this.f8401f, v);
        }
        m12705a();
        int i = this.f8402g;
        if (i == -1) {
            this.f8403h.put(this.f8401f, v);
            return null;
        }
        Object[] objArr = this.f8403h.f8385i;
        V v2 = objArr[i];
        objArr[i] = v;
        return v2;
    }
}
