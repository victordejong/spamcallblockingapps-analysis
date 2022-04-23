package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.api.l;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acu.class */
public abstract class acu implements l {

    /* renamed from: a  reason: collision with root package name */
    protected Context f23118a;

    /* renamed from: b  reason: collision with root package name */
    protected String f23119b;

    /* renamed from: c  reason: collision with root package name */
    protected WeakReference<abb> f23120c;

    public acu(abb abbVar) {
        this.f23118a = abbVar.getContext();
        this.f23119b = zzr.zzkv().zzq(this.f23118a, abbVar.k().zzbrz);
        this.f23120c = new WeakReference<>(abbVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Map<String, String> map) {
        abb abbVar = this.f23120c.get();
        if (abbVar != null) {
            abbVar.a(str, map);
        }
    }

    @Override // com.google.android.gms.common.api.l
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str, String str2, int i) {
        yq.f28555a.post(new acy(this, str, str2, i));
    }

    public final void a(String str, String str2, long j) {
        yq.f28555a.post(new acx(this, str, str2, j));
    }

    public final void a(String str, String str2, String str3, String str4) {
        yq.f28555a.post(new ada(this, str, str2, str3, str4));
    }

    public abstract boolean a(String str);

    public boolean a(String str, String[] strArr) {
        return a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(String str) {
        return yq.a(str);
    }

    public abstract void b();

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(int i) {
    }
}
