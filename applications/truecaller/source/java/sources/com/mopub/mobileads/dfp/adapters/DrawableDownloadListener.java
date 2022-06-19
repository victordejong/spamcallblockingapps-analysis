package com.mopub.mobileads.dfp.adapters;

import android.graphics.drawable.Drawable;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/dfp/adapters/DrawableDownloadListener.class */
public interface DrawableDownloadListener {
    void onDownloadFailure();

    void onDownloadSuccess(HashMap<String, Drawable> hashMap);
}
