package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwf.class */
public final class cwf {

    /* renamed from: a */
    private final Context f46663a;

    /* renamed from: b */
    private final cuy f46664b;

    public cwf(Context context, cuy cuyVar) {
        this.f46663a = context;
        this.f46664b = cuyVar;
    }

    /* renamed from: a */
    private final void m17134a(byte[] bArr, String str) {
        if (this.f46664b == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("os.arch:");
        sb.append(cyl.OS_ARCH.value());
        sb.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException e) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";");
        sb.append("CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(";");
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(";");
        }
        if (str != null) {
            sb.append("dbg:");
            sb.append(str);
            sb.append(";");
        }
        this.f46664b.m17189a(4007, sb.toString());
    }

    /* renamed from: a */
    public static boolean m17135a(duu duuVar) {
        int i = cwe.f46662a[duuVar.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    /* renamed from: b */
    private final String m17133b() {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String value = cyl.OS_ARCH.value();
        if (TextUtils.isEmpty(value) || !hashSet.contains(value)) {
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    if (strArr.length > 0) {
                        return strArr[0];
                    }
                }
            } catch (IllegalAccessException e) {
                cuy cuyVar = this.f46664b;
                if (cuyVar != null) {
                    cuyVar.m17192a(2024, 0L, e);
                }
            } catch (NoSuchFieldException e2) {
                cuy cuyVar2 = this.f46664b;
                if (cuyVar2 != null) {
                    cuyVar2.m17192a(2024, 0L, e2);
                }
            }
            return Build.CPU_ABI != null ? Build.CPU_ABI : Build.CPU_ABI2;
        }
        return value;
    }

    /* renamed from: c */
    private final duu m17132c() {
        FileInputStream fileInputStream;
        byte[] bArr;
        File file = new File(new File(this.f46663a.getApplicationInfo().dataDir), "lib");
        if (!file.exists()) {
            cuy cuyVar = this.f46664b;
            if (cuyVar != null) {
                cuyVar.m17189a(5017, "No lib/");
            }
            return duu.UNKNOWN;
        }
        File[] listFiles = file.listFiles(new daa(Pattern.compile(".*\\.so$", 2)));
        if (listFiles == null || listFiles.length == 0) {
            cuy cuyVar2 = this.f46664b;
            if (cuyVar2 != null) {
                cuyVar2.m17189a(5017, "No .so");
            }
            return duu.UNKNOWN;
        }
        try {
            fileInputStream = new FileInputStream(listFiles[0]);
            bArr = new byte[20];
        } catch (IOException e) {
            m17134a(null, e.toString());
        }
        if (fileInputStream.read(bArr) != 20) {
            fileInputStream.close();
            return duu.UNSUPPORTED;
        }
        byte[] bArr2 = new byte[2];
        bArr2[0] = (byte) 0;
        bArr2[1] = (byte) 0;
        if (bArr[5] == 2) {
            m17134a(bArr, null);
            duu duuVar = duu.UNSUPPORTED;
            fileInputStream.close();
            return duuVar;
        }
        bArr2[0] = bArr[19];
        bArr2[1] = bArr[18];
        short s = ByteBuffer.wrap(bArr2).getShort();
        if (s == 3) {
            duu duuVar2 = duu.X86;
            fileInputStream.close();
            return duuVar2;
        } else if (s == 40) {
            duu duuVar3 = duu.ARM7;
            fileInputStream.close();
            return duuVar3;
        } else if (s == 62) {
            duu duuVar4 = duu.X86_64;
            fileInputStream.close();
            return duuVar4;
        } else if (s == 183) {
            duu duuVar5 = duu.ARM64;
            fileInputStream.close();
            return duuVar5;
        } else {
            m17134a(bArr, null);
            duu duuVar6 = duu.UNSUPPORTED;
            fileInputStream.close();
            return duuVar6;
        }
    }

    /* renamed from: a */
    public final duu m17136a() {
        duu m17132c = m17132c();
        duu duuVar = m17132c;
        if (m17132c == duu.UNKNOWN) {
            String m17133b = m17133b();
            if (TextUtils.isEmpty(m17133b)) {
                m17134a(null, "Empty dev arch");
                duuVar = duu.UNSUPPORTED;
            } else if (m17133b.equalsIgnoreCase("i686") || m17133b.equalsIgnoreCase("x86")) {
                duuVar = duu.X86;
            } else if (m17133b.equalsIgnoreCase("x86_64")) {
                duuVar = duu.X86_64;
            } else if (m17133b.equalsIgnoreCase("arm64-v8a")) {
                duuVar = duu.ARM64;
            } else if (m17133b.equalsIgnoreCase("armeabi-v7a") || m17133b.equalsIgnoreCase("armv71")) {
                duuVar = duu.ARM7;
            } else {
                m17134a(null, m17133b);
                duuVar = duu.UNSUPPORTED;
            }
        }
        cuy cuyVar = this.f46664b;
        if (cuyVar != null) {
            cuyVar.m17189a(5018, duuVar.name());
        }
        return duuVar;
    }
}
