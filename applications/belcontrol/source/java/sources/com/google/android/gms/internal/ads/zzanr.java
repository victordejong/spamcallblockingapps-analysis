package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanr.class */
public interface zzanr extends IInterface {
    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    void recordImpression();

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaer zztn();

    zzaej zzto();

    IObjectWrapper zztp();

    void zzu(IObjectWrapper iObjectWrapper);

    void zzv(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzvg();

    IObjectWrapper zzvh();

    void zzw(IObjectWrapper iObjectWrapper);
}
