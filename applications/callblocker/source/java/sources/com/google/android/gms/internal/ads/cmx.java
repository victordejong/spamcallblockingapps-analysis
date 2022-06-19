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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmx.class */
public final class cmx {

    /* renamed from: a */
    private final Context f13379a;

    /* renamed from: b */
    private final clq f13380b;

    public cmx(Context context, clq clqVar) {
        this.f13379a = context;
        this.f13380b = clqVar;
    }

    /* renamed from: a */
    private final void m11005a(byte[] bArr) {
        if (this.f13380b == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("os.arch:").append(cot.OS_ARCH.m10926a()).append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:").append(Arrays.toString(strArr)).append(";");
            }
        } catch (IllegalAccessException e) {
        } catch (NoSuchFieldException e2) {
        }
        sb.append("CPU_ABI:").append(Build.CPU_ABI).append(";");
        sb.append("CPU_ABI2:").append(Build.CPU_ABI2).append(";");
        if (bArr != null) {
            sb.append("ELF:").append(Arrays.toString(bArr)).append(";");
        }
        this.f13380b.m11082a(4007, sb.toString());
    }

    /* renamed from: b */
    private final String m11004b() {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String m10926a = cot.OS_ARCH.m10926a();
        if (TextUtils.isEmpty(m10926a) || !hashSet.contains(m10926a)) {
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    if (strArr.length > 0) {
                        m10926a = strArr[0];
                    }
                }
            } catch (IllegalAccessException e) {
                if (this.f13380b != null) {
                    this.f13380b.m11085a(2024, 0L, e);
                }
            } catch (NoSuchFieldException e2) {
                if (this.f13380b != null) {
                    this.f13380b.m11085a(2024, 0L, e2);
                }
            }
            m10926a = Build.CPU_ABI != null ? Build.CPU_ABI : Build.CPU_ABI2;
        }
        return m10926a;
    }

    /* renamed from: c */
    private final dkc m11003c() {
        dkc dkcVar;
        FileInputStream fileInputStream;
        byte[] bArr;
        File file = new File(new File(this.f13379a.getApplicationInfo().dataDir), "lib");
        if (!file.exists()) {
            dkcVar = dkc.UNSUPPORTED;
        } else {
            File[] listFiles = file.listFiles(new cqc(Pattern.compile(".*\\.so$", 2)));
            if (listFiles == null || listFiles.length == 0) {
                dkcVar = dkc.UNSUPPORTED;
            } else {
                try {
                    fileInputStream = new FileInputStream(listFiles[0]);
                    bArr = new byte[20];
                } catch (IOException e) {
                }
                if (fileInputStream.read(bArr) == 20) {
                    byte[] bArr2 = {0, 0};
                    if (bArr[5] != 2) {
                        bArr2[0] = bArr[19];
                        bArr2[1] = bArr[18];
                        switch (ByteBuffer.wrap(bArr2).getShort()) {
                            case 3:
                                dkcVar = dkc.X86;
                                fileInputStream.close();
                                break;
                            case 40:
                                dkcVar = dkc.ARM7;
                                fileInputStream.close();
                                break;
                            case 62:
                                dkcVar = dkc.X86_64;
                                fileInputStream.close();
                                break;
                            case 183:
                                dkcVar = dkc.ARM64;
                                fileInputStream.close();
                                break;
                            default:
                                dkcVar = dkc.UNSUPPORTED;
                                fileInputStream.close();
                                break;
                        }
                    } else {
                        m11005a(bArr);
                        dkcVar = dkc.UNSUPPORTED;
                        fileInputStream.close();
                    }
                } else {
                    fileInputStream.close();
                    dkcVar = dkc.UNSUPPORTED;
                }
            }
        }
        return dkcVar;
    }

    /* renamed from: a */
    public final dkc m11006a() {
        dkc m11003c = m11003c();
        dkc dkcVar = m11003c;
        if (m11003c == dkc.UNSUPPORTED) {
            String m11004b = m11004b();
            if (!TextUtils.isEmpty(m11004b)) {
                if (m11004b.equalsIgnoreCase("i686") || m11004b.equalsIgnoreCase("x86")) {
                    dkcVar = dkc.X86;
                } else if (m11004b.equalsIgnoreCase("x86_64")) {
                    dkcVar = dkc.X86_64;
                } else if (m11004b.equalsIgnoreCase("arm64-v8a")) {
                    dkcVar = dkc.ARM64;
                } else if (m11004b.equalsIgnoreCase("armeabi-v7a") || m11004b.equalsIgnoreCase("armv71")) {
                    dkcVar = dkc.ARM7;
                }
            }
            m11005a(null);
            dkcVar = dkc.UNSUPPORTED;
        }
        return dkcVar;
    }
}
