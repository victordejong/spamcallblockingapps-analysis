package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbi.class */
final class cbi implements dbi<ArrayList<Uri>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ro f25532a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbi(caw cawVar, ro roVar) {
        this.f25532a = roVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(ArrayList<Uri> arrayList) {
        try {
            this.f25532a.a(arrayList);
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        try {
            ro roVar = this.f25532a;
            String valueOf = String.valueOf(th.getMessage());
            roVar.a(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            za.zzc("", e);
        }
    }
}
