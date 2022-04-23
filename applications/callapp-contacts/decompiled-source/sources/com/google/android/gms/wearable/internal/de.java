package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.f;
import com.google.android.gms.wearable.k;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/de.class */
public final class de<T> extends bk {

    /* renamed from: a  reason: collision with root package name */
    final IntentFilter[] f30120a;

    /* renamed from: b  reason: collision with root package name */
    final String f30121b;

    /* renamed from: c  reason: collision with root package name */
    private i<Object> f30122c;

    /* renamed from: d  reason: collision with root package name */
    private i<Object> f30123d;
    private i<Object> e;
    private i<k.a> f;
    private i<Object> g;
    private i<Object> h;
    private i<f.a> i;
    private i<a.AbstractC0483a> j;

    private de(IntentFilter[] intentFilterArr, String str) {
        this.f30120a = (IntentFilter[]) o.a(intentFilterArr);
        this.f30121b = str;
    }

    public static de<f.a> a(i<f.a> iVar, String str, IntentFilter[] intentFilterArr) {
        de<f.a> deVar = new de<>(intentFilterArr, (String) o.a(str));
        ((de) deVar).i = (i) o.a(iVar);
        return deVar;
    }

    public static de<k.a> a(i<k.a> iVar, IntentFilter[] intentFilterArr) {
        de<k.a> deVar = new de<>(intentFilterArr, null);
        ((de) deVar).f = (i) o.a(iVar);
        return deVar;
    }

    private static void a(i<?> iVar) {
        if (iVar != null) {
            iVar.a();
        }
    }

    public static de<f.a> b(i<f.a> iVar, IntentFilter[] intentFilterArr) {
        de<f.a> deVar = new de<>(intentFilterArr, null);
        ((de) deVar).i = (i) o.a(iVar);
        return deVar;
    }

    public static de<a.AbstractC0483a> c(i<a.AbstractC0483a> iVar, IntentFilter[] intentFilterArr) {
        de<a.AbstractC0483a> deVar = new de<>(intentFilterArr, null);
        ((de) deVar).j = (i) o.a(iVar);
        return deVar;
    }

    public final void a() {
        this.f30122c = null;
        this.f30123d = null;
        a(this.e);
        this.e = null;
        a(this.f);
        this.f = null;
        this.g = null;
        this.h = null;
        a(this.i);
        this.i = null;
        a(this.j);
        this.j = null;
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(DataHolder dataHolder) {
        i<Object> iVar = this.e;
        if (iVar != null) {
            iVar.a(new df(dataHolder));
        } else {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzah zzahVar) {
        i<a.AbstractC0483a> iVar = this.j;
        if (iVar != null) {
            iVar.a(new di(zzahVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzaw zzawVar) {
        i<f.a> iVar = this.i;
        if (iVar != null) {
            iVar.a(new dh(zzawVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzfe zzfeVar) {
        i<k.a> iVar = this.f;
        if (iVar != null) {
            iVar.a(new dg(zzfeVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzfo zzfoVar) {
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzi zziVar) {
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzl zzlVar) {
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(List<zzfo> list) {
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void b(zzfo zzfoVar) {
    }
}
