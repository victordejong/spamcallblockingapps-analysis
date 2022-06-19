package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/UiSettings.class */
public final class UiSettings {

    /* renamed from: a */
    public final IUiSettingsDelegate f6244a;

    public UiSettings(IUiSettingsDelegate iUiSettingsDelegate) {
        this.f6244a = iUiSettingsDelegate;
    }

    /* renamed from: a */
    public final void m38700a(boolean z) {
        try {
            this.f6244a.m38674E0(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final void m38699b(boolean z) {
        try {
            this.f6244a.m38669v0(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
