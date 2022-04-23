package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ds.class */
final class ds implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final dr f29512a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29513b;

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f29514c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f29515d;
    private final String e;
    private final Map<String, List<String>> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ds(String str, dr drVar, int i, Throwable th, byte[] bArr, Map map, dq dqVar) {
        o.a(drVar);
        this.f29512a = drVar;
        this.f29513b = i;
        this.f29514c = th;
        this.f29515d = bArr;
        this.e = str;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29512a.a(this.e, this.f29513b, this.f29514c, this.f29515d, this.f);
    }
}
