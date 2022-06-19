package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.appsflyer.AFLogger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appsflyer.internal.v */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/v.class */
public final class C0831v {
    public final boolean AFInAppEventParameterName;
    @Nullable
    public final byte[] AFInAppEventType;
    @NonNull
    public final String AFKeystoreWrapper;
    @NonNull
    public final String valueOf;
    @NonNull
    public final Map<String, String> values;

    public C0831v() {
    }

    public C0831v(String str, byte[] bArr, String str2, Map<String, String> map) {
        this.AFKeystoreWrapper = str;
        this.AFInAppEventType = bArr;
        this.valueOf = str2;
        this.values = map;
        this.AFInAppEventParameterName = false;
    }

    public static Map<String, String> values(@NonNull Context context) {
        HashMap hashMap = new HashMap();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = context.getResources().getConfiguration().screenLayout;
            hashMap.put("x_px", String.valueOf(displayMetrics.widthPixels));
            hashMap.put("y_px", String.valueOf(displayMetrics.heightPixels));
            hashMap.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            hashMap.put("size", String.valueOf(i & 15));
            hashMap.put("xdp", String.valueOf(displayMetrics.xdpi));
            hashMap.put("ydp", String.valueOf(displayMetrics.ydpi));
        } catch (Throwable th) {
            AFLogger.valueOf("Couldn't aggregate screen stats: ", th);
        }
        return hashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0831v.class != obj.getClass()) {
            return false;
        }
        C0831v c0831v = (C0831v) obj;
        if (!this.AFKeystoreWrapper.equals(c0831v.AFKeystoreWrapper) || !Arrays.equals(this.AFInAppEventType, c0831v.AFInAppEventType) || !this.valueOf.equals(c0831v.valueOf)) {
            return false;
        }
        return this.values.equals(c0831v.values);
    }

    public final int hashCode() {
        int hashCode = this.AFKeystoreWrapper.hashCode();
        int hashCode2 = Arrays.hashCode(this.AFInAppEventType);
        return (this.values.hashCode() + ((this.valueOf.hashCode() + ((hashCode2 + (hashCode * 31)) * 31)) * 31)) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{url='");
        C22128a.m8678P0(sb, this.AFKeystoreWrapper, '\'', ", body=");
        sb.append(Arrays.toString(this.AFInAppEventType));
        sb.append(", method='");
        C22128a.m8678P0(sb, this.valueOf, '\'', ", headers=");
        sb.append(this.values);
        sb.append(", isEncrypted=false");
        sb.append('}');
        return sb.toString();
    }
}
