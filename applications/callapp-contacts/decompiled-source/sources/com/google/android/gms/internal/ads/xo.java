package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xo.class */
public interface xo extends IInterface {
    b a(b bVar, b bVar2) throws RemoteException;

    void a(b bVar) throws RemoteException;

    void a(b bVar, zzazi zzaziVar, xn xnVar) throws RemoteException;

    void a(zzatj zzatjVar) throws RemoteException;

    void a(List<Uri> list, b bVar, ro roVar) throws RemoteException;

    b b(b bVar) throws RemoteException;

    void b(List<Uri> list, b bVar, ro roVar) throws RemoteException;
}
