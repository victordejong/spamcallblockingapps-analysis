package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagr.class */
public interface zzagr extends IInterface {
    void cancelUnconfirmedClick();

    void destroy();

    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    List getMuteThisAdReasons();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    boolean isCustomClickGestureEnabled();

    boolean isCustomMuteThisAdEnabled();

    void performClick(Bundle bundle);

    void recordCustomClickGesture();

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    void zza(zzagm zzagmVar);

    void zza(zzyj zzyjVar);

    void zza(zzyn zzynVar);

    void zza(zzyw zzywVar);

    zzyx zzki();

    IObjectWrapper zztm();

    zzaer zztn();

    zzaej zzto();

    IObjectWrapper zztp();

    void zztx();

    zzaem zzty();
}
