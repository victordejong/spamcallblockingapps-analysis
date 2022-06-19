package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanx.class */
public interface zzanx extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    float getMediaContentAspectRatio();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    String getPrice();

    double getStarRating();

    String getStore();

    zzzc getVideoController();

    float getVideoCurrentTime();

    float getVideoDuration();

    void recordImpression();

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaer zztn();

    zzaej zzto();

    IObjectWrapper zztp();

    void zzu(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzvg();

    IObjectWrapper zzvh();

    void zzw(IObjectWrapper iObjectWrapper);
}
