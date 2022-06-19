package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.play.core.internal.ah */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ah.class */
public final class C15017ah {
    /* renamed from: a */
    public static <T> C15016ag<T> m9597a(Object obj, String str, Class<T> cls) {
        return new C15016ag<>(obj, m9598a(obj, str), cls);
    }

    /* renamed from: a */
    public static <R> R m9604a(Class<R> cls) {
        try {
            Constructor<R> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor.newInstance(new Object[0]);
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to invoke default constructor on class %s", cls.getName()), e);
        }
    }

    /* renamed from: a */
    public static <R, P0> R m9603a(Class cls, Class<R> cls2, Class<P0> cls3, P0 p0) {
        try {
            return cls2.cast(m9601a((Class<?>) cls, "isDexOptNeeded", (Class<?>[]) new Class[]{cls3}).invoke(null, p0));
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to invoke static method %s on type %s", "isDexOptNeeded", cls), e);
        }
    }

    /* renamed from: a */
    public static <R, P0, P1> R m9602a(Class cls, Class<R> cls2, Class<P0> cls3, P0 p0, Class<P1> cls4, P1 p1) {
        try {
            return cls2.cast(m9601a((Class<?>) cls, "optimizedPathFor", (Class<?>[]) new Class[]{cls3, cls4}).invoke(null, p0, p1));
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to invoke static method %s on type %s", "optimizedPathFor", cls), e);
        }
    }

    /* renamed from: a */
    public static <R, P0> R m9596a(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0) {
        try {
            return cls.cast(m9594a(obj, str, cls2).invoke(obj, p0));
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    /* renamed from: a */
    public static <R, P0, P1, P2> R m9595a(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0, Class<P1> cls3, P1 p1, Class<P2> cls4, P2 p2) {
        try {
            return cls.cast(m9594a(obj, str, cls2, cls3, cls4).invoke(obj, p0, p1, p2));
        } catch (Exception e) {
            throw new C15045bi(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    /* renamed from: a */
    private static Field m9598a(Object obj, String str) {
        Field declaredField;
        Class<?> cls = obj.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 == null) {
                throw new C15045bi(String.format("Failed to find a field named %s on an object of instance %s", str, obj.getClass().getName()));
            }
            try {
                declaredField = cls2.getDeclaredField(str);
                if (declaredField.isAccessible()) {
                    break;
                }
                declaredField.setAccessible(true);
                break;
            } catch (NoSuchFieldException e) {
                cls = cls2.getSuperclass();
            }
        }
        return declaredField;
    }

    /* renamed from: a */
    private static Method m9601a(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod;
        Class<?> cls2 = cls;
        while (true) {
            Class<?> cls3 = cls2;
            if (cls3 == null) {
                throw new C15045bi(String.format("Could not find a method named %s with parameters %s in type %s", str, Arrays.asList(clsArr), cls));
            }
            try {
                declaredMethod = cls3.getDeclaredMethod(str, clsArr);
                if (declaredMethod.isAccessible()) {
                    break;
                }
                declaredMethod.setAccessible(true);
                break;
            } catch (NoSuchMethodException e) {
                cls2 = cls3.getSuperclass();
            }
        }
        return declaredMethod;
    }

    /* renamed from: a */
    private static Method m9594a(Object obj, String str, Class<?>... clsArr) {
        return m9601a(obj.getClass(), str, clsArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.content.pm.ComponentInfo[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* renamed from: a */
    public static void m9606a(PackageManager packageManager, ComponentName componentName, int i) {
        ComponentInfo componentInfo;
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (componentEnabledSetting != 1) {
            if (componentEnabledSetting != 2) {
                String packageName = componentName.getPackageName();
                String className = componentName.getClassName();
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(packageName, i | 512);
                    ActivityInfo[] activityInfoArr = packageInfo.activities;
                    ServiceInfo[] serviceInfoArr = packageInfo.services;
                    ProviderInfo[] providerInfoArr = packageInfo.providers;
                    int i2 = 0;
                    loop0: while (true) {
                        if (i2 >= 3) {
                            componentInfo = null;
                            break;
                        }
                        ?? r0 = new ComponentInfo[]{activityInfoArr, serviceInfoArr, providerInfoArr}[i2];
                        if (r0 != 0) {
                            int length = r0.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                componentInfo = r0[i3];
                                if (componentInfo.name.equals(className)) {
                                    break loop0;
                                }
                            }
                            continue;
                        }
                        i2++;
                    }
                    if (componentInfo != null) {
                        if (componentInfo.isEnabled()) {
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* renamed from: a */
    public static void m9605a(AbstractC15025ap abstractC15025ap, InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new C15053bq(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read != 4) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Unexpected version=");
            sb.append(read);
            throw new C15053bq(sb.toString());
        }
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long j2 = j - c;
            try {
                int read2 = dataInputStream.read();
                if (read2 == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (read2 == 0) {
                    return;
                }
                switch (read2) {
                    case 247:
                        read2 = dataInputStream.readUnsignedShort();
                        m9592a(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 248:
                        read2 = dataInputStream.readInt();
                        m9592a(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 249:
                        long readUnsignedShort = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m9593a(bArr, abstractC15025ap, outputStream, readUnsignedShort, read2, j2);
                        break;
                    case 250:
                        long readUnsignedShort2 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readUnsignedShort();
                        m9593a(bArr, abstractC15025ap, outputStream, readUnsignedShort2, read2, j2);
                        break;
                    case 251:
                        long readUnsignedShort3 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readInt();
                        m9593a(bArr, abstractC15025ap, outputStream, readUnsignedShort3, read2, j2);
                        break;
                    case 252:
                        long readInt2 = dataInputStream.readInt();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m9593a(bArr, abstractC15025ap, outputStream, readInt2, read2, j2);
                        break;
                    case 253:
                        long readInt3 = dataInputStream.readInt();
                        read2 = dataInputStream.readUnsignedShort();
                        m9593a(bArr, abstractC15025ap, outputStream, readInt3, read2, j2);
                        break;
                    case 254:
                        long readInt4 = dataInputStream.readInt();
                        read2 = dataInputStream.readInt();
                        m9593a(bArr, abstractC15025ap, outputStream, readInt4, read2, j2);
                        break;
                    case 255:
                        long readLong = dataInputStream.readLong();
                        read2 = dataInputStream.readInt();
                        m9593a(bArr, abstractC15025ap, outputStream, readLong, read2, j2);
                        break;
                    default:
                        m9592a(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                }
                r0 = c + read2;
            } finally {
                outputStream.flush();
            }
        }
    }

    /* renamed from: a */
    public static <T> void m9600a(T t) {
        Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
    }

    /* renamed from: a */
    public static <T> void m9599a(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
        r9.write(r7, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
        r12 = r12 - r0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m9593a(byte[] r7, com.google.android.play.core.internal.AbstractC15025ap r8, java.io.OutputStream r9, long r10, int r12, long r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C15017ah.m9593a(byte[], com.google.android.play.core.internal.ap, java.io.OutputStream, long, int, long):void");
    }

    /* renamed from: a */
    private static void m9592a(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i, long j) throws IOException {
        if (i >= 0) {
            if (i > j) {
                throw new IOException("Output length overrun");
            }
            while (i > 0) {
                try {
                    int min = Math.min(i, 16384);
                    dataInputStream.readFully(bArr, 0, min);
                    outputStream.write(bArr, 0, min);
                    i -= min;
                } catch (EOFException e) {
                    throw new IOException("patch underrun");
                }
            }
            return;
        }
        throw new IOException("copyLength negative");
    }

    /* renamed from: b */
    public static <T> C15016ag m9591b(Object obj, String str, Class<T> cls) {
        return new C15016ag(obj, m9598a(obj, str), cls, null);
    }
}
