package com.google.android.gms.tagmanager;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfv.class */
final class zzfv implements zzfx {
    @Override // com.google.android.gms.tagmanager.zzfx
    public final HttpURLConnection zzc(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }
}
