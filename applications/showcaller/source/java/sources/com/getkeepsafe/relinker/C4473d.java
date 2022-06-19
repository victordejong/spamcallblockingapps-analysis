package com.getkeepsafe.relinker;

import android.os.Build;
import com.getkeepsafe.relinker.C4465b;
/* renamed from: com.getkeepsafe.relinker.d */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/d.class */
public final class C4473d implements C4465b.AbstractC4467b {
    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4467b
    /* renamed from: a */
    public void mo22398a(String str) {
        System.loadLibrary(str);
    }

    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4467b
    /* renamed from: b */
    public String mo22397b(String str) {
        return (!str.startsWith("lib") || !str.endsWith(".so")) ? System.mapLibraryName(str) : str;
    }

    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4467b
    /* renamed from: c */
    public String mo22396c(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4467b
    /* renamed from: d */
    public String[] mo22395d() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        String str = Build.CPU_ABI2;
        return !C4474e.m22393a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // com.getkeepsafe.relinker.C4465b.AbstractC4467b
    /* renamed from: e */
    public void mo22394e(String str) {
        System.load(str);
    }
}
