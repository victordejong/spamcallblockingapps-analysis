package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamw.class */
public final class zzamw extends zzbfw {
    private final AppMeasurementSdk zzdll;

    public zzamw(AppMeasurementSdk appMeasurementSdk) {
        this.zzdll = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void beginAdUnitExposure(String str) throws RemoteException {
        this.zzdll.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        this.zzdll.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void endAdUnitExposure(String str) throws RemoteException {
        this.zzdll.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final long generateEventId() throws RemoteException {
        return this.zzdll.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getAppIdOrigin() throws RemoteException {
        return this.zzdll.getAppIdOrigin();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getAppInstanceId() throws RemoteException {
        return this.zzdll.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final List getConditionalUserProperties(String str, String str2) throws RemoteException {
        return this.zzdll.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getCurrentScreenClass() throws RemoteException {
        return this.zzdll.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getCurrentScreenName() throws RemoteException {
        return this.zzdll.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final String getGmpAppId() throws RemoteException {
        return this.zzdll.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final int getMaxUserProperties(String str) throws RemoteException {
        return this.zzdll.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final Map getUserProperties(String str, String str2, boolean z) throws RemoteException {
        return this.zzdll.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void logEvent(String str, String str2, Bundle bundle) throws RemoteException {
        this.zzdll.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void performAction(Bundle bundle) throws RemoteException {
        this.zzdll.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final Bundle performActionWithResponse(Bundle bundle) throws RemoteException {
        return this.zzdll.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void setConditionalUserProperty(Bundle bundle) throws RemoteException {
        this.zzdll.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void setConsent(Bundle bundle) throws RemoteException {
        this.zzdll.setConsent(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zza(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zzdll.setUserProperty(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfu
    public final void zzb(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.zzdll.setCurrentScreen(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }
}
