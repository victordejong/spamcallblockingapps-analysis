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

    /* renamed from: a  reason: collision with root package name */
    private final Context f26494a;

    /* renamed from: b  reason: collision with root package name */
    private final cuy f26495b;

    public cwf(Context context, cuy cuyVar) {
        this.f26494a = context;
        this.f26495b = cuyVar;
    }

    private final void a(byte[] bArr, String str) {
        if (this.f26495b != null) {
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
            this.f26495b.a(4007, sb.toString());
        }
    }

    public static boolean a(duu duuVar) {
        int i = cwe.f26493a[duuVar.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    private final String b() {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String value = cyl.OS_ARCH.value();
        if (!TextUtils.isEmpty(value) && hashSet.contains(value)) {
            return value;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                if (strArr.length > 0) {
                    return strArr[0];
                }
            }
        } catch (IllegalAccessException e) {
            cuy cuyVar = this.f26495b;
            if (cuyVar != null) {
                cuyVar.a(2024, 0L, e);
            }
        } catch (NoSuchFieldException e2) {
            cuy cuyVar2 = this.f26495b;
            if (cuyVar2 != null) {
                cuyVar2.a(2024, 0L, e2);
            }
        }
        return Build.CPU_ABI != null ? Build.CPU_ABI : Build.CPU_ABI2;
    }

    private final duu c() {
        FileInputStream fileInputStream;
        byte[] bArr;
        File file = new File(new File(this.f26494a.getApplicationInfo().dataDir), "lib");
        if (!file.exists()) {
            cuy cuyVar = this.f26495b;
            if (cuyVar != null) {
                cuyVar.a(5017, "No lib/");
            }
            return duu.UNKNOWN;
        }
        File[] listFiles = file.listFiles(new daa(Pattern.compile(".*\\.so$", 2)));
        if (listFiles == null || listFiles.length == 0) {
            cuy cuyVar2 = this.f26495b;
            if (cuyVar2 != null) {
                cuyVar2.a(5017, "No .so");
            }
            return duu.UNKNOWN;
        }
        try {
            fileInputStream = new FileInputStream(listFiles[0]);
            bArr = new byte[20];
        } catch (IOException e) {
            a(null, e.toString());
        }
        if (fileInputStream.read(bArr) == 20) {
            byte[] bArr2 = new byte[2];
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            if (bArr[5] == 2) {
                a(bArr, null);
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
            } else if (s != 183) {
                a(bArr, null);
                duu duuVar5 = duu.UNSUPPORTED;
                fileInputStream.close();
                return duuVar5;
            } else {
                duu duuVar6 = duu.ARM64;
                fileInputStream.close();
                return duuVar6;
            }
        } else {
            fileInputStream.close();
            return duu.UNSUPPORTED;
        }
    }

    public final duu a() {
        duu c2 = c();
        duu duuVar = c2;
        if (c2 == duu.UNKNOWN) {
            String b2 = b();
            if (TextUtils.isEmpty(b2)) {
                a(null, "Empty dev arch");
                duuVar = duu.UNSUPPORTED;
            } else if (b2.equalsIgnoreCase("i686") || b2.equalsIgnoreCase("x86")) {
                duuVar = duu.X86;
            } else if (b2.equalsIgnoreCase("x86_64")) {
                duuVar = duu.X86_64;
            } else if (b2.equalsIgnoreCase("arm64-v8a")) {
                duuVar = duu.ARM64;
            } else if (b2.equalsIgnoreCase("armeabi-v7a") || b2.equalsIgnoreCase("armv71")) {
                duuVar = duu.ARM7;
            } else {
                a(null, b2);
                duuVar = duu.UNSUPPORTED;
            }
        }
        cuy cuyVar = this.f26495b;
        if (cuyVar != null) {
            cuyVar.a(5018, duuVar.name());
        }
        return duuVar;
    }
}
