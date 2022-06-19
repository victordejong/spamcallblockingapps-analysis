package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzans.class */
public interface zzans extends IInterface {
    String getAdvertiser();

    String getBody();

    String getCallToAction();

    Bundle getExtras();

    String getHeadline();

    List getImages();

    boolean getOverrideClickHandling();

    boolean getOverrideImpressionRecording();

    zzzc getVideoController();

    void recordImpression();

    void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    zzaej zzto();

    IObjectWrapper zztp();

    zzaer zztq();

    void zzu(IObjectWrapper iObjectWrapper);

    void zzv(IObjectWrapper iObjectWrapper);

    IObjectWrapper zzvg();

    IObjectWrapper zzvh();

    void zzw(IObjectWrapper iObjectWrapper);
}
