package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaff.class */
public interface zzaff extends IInterface {
    void destroy();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    String getMediationAdapterClassName();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    void performClick(Bundle bundle);

    boolean recordImpression(Bundle bundle);

    void reportTouchEvent(Bundle bundle);

    IObjectWrapper zztm();

    zzaer zztn();

    zzaej zzto();

    IObjectWrapper zztp();
}
