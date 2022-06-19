package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.util.Patterns;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdkWithMembers
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyRequest$Builder.class */
public class ProxyRequest$Builder {
    private String zzbz;
    private int zzca = ProxyRequest.HTTP_METHOD_GET;
    private long zzcb = 3000;
    private byte[] zzcc = null;
    private Bundle zzcd = new Bundle();

    public ProxyRequest$Builder(String str) {
        Preconditions.checkNotEmpty(str);
        if (Patterns.WEB_URL.matcher(str).matches()) {
            this.zzbz = str;
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("The supplied url [ ");
        sb.append(str);
        sb.append("] is not match Patterns.WEB_URL!");
        throw new IllegalArgumentException(sb.toString());
    }

    public ProxyRequest build() {
        if (this.zzcc == null) {
            this.zzcc = new byte[0];
        }
        return new ProxyRequest(2, this.zzbz, this.zzca, this.zzcb, this.zzcc, this.zzcd);
    }

    public ProxyRequest$Builder putHeader(String str, String str2) {
        Preconditions.checkNotEmpty(str, "Header name cannot be null or empty!");
        Bundle bundle = this.zzcd;
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        bundle.putString(str, str3);
        return this;
    }

    public ProxyRequest$Builder setBody(byte[] bArr) {
        this.zzcc = bArr;
        return this;
    }

    public ProxyRequest$Builder setHttpMethod(int i) {
        Preconditions.checkArgument(i >= 0 && i <= ProxyRequest.LAST_CODE, "Unrecognized http method code.");
        this.zzca = i;
        return this;
    }

    public ProxyRequest$Builder setTimeoutMillis(long j) {
        Preconditions.checkArgument(j >= 0, "The specified timeout must be non-negative.");
        this.zzcb = j;
        return this;
    }
}
