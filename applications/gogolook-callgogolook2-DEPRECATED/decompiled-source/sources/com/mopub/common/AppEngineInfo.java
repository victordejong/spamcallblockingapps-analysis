package com.mopub.common;

import androidx.annotation.NonNull;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AppEngineInfo.class */
public final class AppEngineInfo {
    @NonNull

    /* renamed from: a */
    public final String f7991a;
    @NonNull

    /* renamed from: b */
    public final String f7992b;

    public AppEngineInfo(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f7991a = str;
        this.f7992b = str2;
    }
}
