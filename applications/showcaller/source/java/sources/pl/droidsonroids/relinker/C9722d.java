package pl.droidsonroids.relinker;

import android.os.Build;
import pl.droidsonroids.relinker.C9714b;
/* renamed from: pl.droidsonroids.relinker.d */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/d.class */
public final class C9722d implements C9714b.AbstractC9716b {
    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9716b
    /* renamed from: a */
    public void mo17a(String str) {
        System.loadLibrary(str);
    }

    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9716b
    /* renamed from: b */
    public String mo16b(String str) {
        return (!str.startsWith("lib") || !str.endsWith(".so")) ? System.mapLibraryName(str) : str;
    }

    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9716b
    /* renamed from: c */
    public String mo15c(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9716b
    /* renamed from: d */
    public String[] mo14d() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        String str = Build.CPU_ABI2;
        return !C9723e.m12a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // pl.droidsonroids.relinker.C9714b.AbstractC9716b
    /* renamed from: e */
    public void mo13e(String str) {
        System.load(str);
    }
}
