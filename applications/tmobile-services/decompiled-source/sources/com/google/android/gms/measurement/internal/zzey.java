package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzey.class */
public final class zzey implements Runnable {

    /* renamed from: f */
    private final URL f9130f;

    /* renamed from: g */
    private final byte[] f9131g;

    /* renamed from: h */
    private final zzew f9132h;

    /* renamed from: i */
    private final String f9133i;

    /* renamed from: j */
    private final Map<String, String> f9134j;

    /* renamed from: k */
    private final /* synthetic */ zzeu f9135k;

    public zzey(zzeu zzeuVar, String str, URL url, byte[] bArr, Map<String, String> map, zzew zzewVar) {
        this.f9135k = zzeuVar;
        Preconditions.m14527g(str);
        Preconditions.m14523k(url);
        Preconditions.m14523k(zzewVar);
        this.f9130f = url;
        this.f9131g = bArr;
        this.f9132h = zzewVar;
        this.f9133i = str;
        this.f9134j = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzey.run():void");
    }
}
