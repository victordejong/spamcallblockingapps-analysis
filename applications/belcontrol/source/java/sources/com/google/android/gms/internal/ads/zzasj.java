package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IInterface;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasj.class */
public interface zzasj extends IInterface {
    void onError(String str);

    void onSuccess(List<Uri> list);
}
