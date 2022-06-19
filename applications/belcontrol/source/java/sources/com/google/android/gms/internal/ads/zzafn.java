package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafn.class */
public interface zzafn extends IInterface {
    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    zzzc getVideoController();

    void performClick(String str);

    void recordImpression();

    String zzct(String str);

    zzaer zzcu(String str);

    boolean zzp(IObjectWrapper iObjectWrapper);

    void zzq(IObjectWrapper iObjectWrapper);

    IObjectWrapper zztm();

    IObjectWrapper zztr();

    boolean zzts();

    boolean zztt();

    void zztu();
}
