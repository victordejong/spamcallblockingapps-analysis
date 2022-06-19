package com.tenor.android.core.service;

import com.tenor.android.core.service.AaidInfo;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/IAaidListener.class */
public interface IAaidListener extends Serializable {
    void failure(@AaidInfo.State int i);

    void success(String str);
}
