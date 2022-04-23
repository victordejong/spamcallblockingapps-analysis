package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbh.class */
final class cbh implements dbi<Uri> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ro f25531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbh(caw cawVar, ro roVar) {
        this.f25531a = roVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Uri uri) {
        try {
            this.f25531a.a(Collections.singletonList(uri));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        try {
            ro roVar = this.f25531a;
            String valueOf = String.valueOf(th.getMessage());
            roVar.a(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
