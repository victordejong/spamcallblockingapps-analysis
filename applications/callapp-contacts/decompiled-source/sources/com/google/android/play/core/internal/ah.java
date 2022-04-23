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
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ah.class */
public final class ah {
    public static <T> ag<T> a(Object obj, String str, Class<T> cls) {
        return new ag<>(obj, a(obj, str), cls);
    }

    public static <R> R a(Class<R> cls) {
        try {
            Constructor<R> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor.newInstance(new Object[0]);
        } catch (Exception e) {
            throw new bi(String.format("Failed to invoke default constructor on class %s", cls.getName()), e);
        }
    }

    public static <R, P0> R a(Class cls, Class<R> cls2, Class<P0> cls3, P0 p0) {
        try {
            return cls2.cast(a((Class<?>) cls, "isDexOptNeeded", (Class<?>[]) new Class[]{cls3}).invoke(null, p0));
        } catch (Exception e) {
            throw new bi(String.format("Failed to invoke static method %s on type %s", "isDexOptNeeded", cls), e);
        }
    }

    public static <R, P0, P1> R a(Class cls, Class<R> cls2, Class<P0> cls3, P0 p0, Class<P1> cls4, P1 p1) {
        try {
            return cls2.cast(a((Class<?>) cls, "optimizedPathFor", (Class<?>[]) new Class[]{cls3, cls4}).invoke(null, p0, p1));
        } catch (Exception e) {
            throw new bi(String.format("Failed to invoke static method %s on type %s", "optimizedPathFor", cls), e);
        }
    }

    public static <R, P0> R a(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0) {
        try {
            return cls.cast(a(obj, str, cls2).invoke(obj, p0));
        } catch (Exception e) {
            throw new bi(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    public static <R, P0, P1, P2> R a(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0, Class<P1> cls3, P1 p1, Class<P2> cls4, P2 p2) {
        try {
            return cls.cast(a(obj, str, cls2, cls3, cls4).invoke(obj, p0, p1, p2));
        } catch (Exception e) {
            throw new bi(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    private static Field a(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
            }
        }
        throw new bi(String.format("Failed to find a field named %s on an object of instance %s", str, obj.getClass().getName()));
    }

    private static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Method declaredMethod = cls2.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
            }
        }
        throw new bi(String.format("Could not find a method named %s with parameters %s in type %s", str, Arrays.asList(clsArr), cls));
    }

    private static Method a(Object obj, String str, Class<?>... clsArr) {
        return a(obj.getClass(), str, clsArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(PackageManager packageManager, ComponentName componentName, int i) {
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
                        Object[] objArr = new ComponentInfo[]{activityInfoArr, serviceInfoArr, providerInfoArr}[i2];
                        if (objArr != 0) {
                            for (ServiceInfo serviceInfo : objArr) {
                                if (((ComponentInfo) serviceInfo).name.equals(className)) {
                                    componentInfo = serviceInfo;
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

    public static void a(ap apVar, InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new bq(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read == 4) {
            long j2 = 0;
            while (true) {
                long j3 = j - j2;
                try {
                    int read2 = dataInputStream.read();
                    if (read2 == -1) {
                        throw new IOException("Patch file overrun");
                    } else if (read2 != 0) {
                        switch (read2) {
                            case 247:
                                read2 = dataInputStream.readUnsignedShort();
                                a(bArr, dataInputStream, outputStream, read2, j3);
                                break;
                            case 248:
                                read2 = dataInputStream.readInt();
                                a(bArr, dataInputStream, outputStream, read2, j3);
                                break;
                            case 249:
                                long readUnsignedShort = dataInputStream.readUnsignedShort();
                                read2 = dataInputStream.read();
                                if (read2 != -1) {
                                    a(bArr, apVar, outputStream, readUnsignedShort, read2, j3);
                                    break;
                                } else {
                                    throw new IOException("Unexpected end of patch");
                                }
                            case 250:
                                read2 = dataInputStream.readUnsignedShort();
                                a(bArr, apVar, outputStream, dataInputStream.readUnsignedShort(), read2, j3);
                                break;
                            case 251:
                                read2 = dataInputStream.readInt();
                                a(bArr, apVar, outputStream, dataInputStream.readUnsignedShort(), read2, j3);
                                break;
                            case 252:
                                long readInt2 = dataInputStream.readInt();
                                read2 = dataInputStream.read();
                                if (read2 != -1) {
                                    a(bArr, apVar, outputStream, readInt2, read2, j3);
                                    break;
                                } else {
                                    throw new IOException("Unexpected end of patch");
                                }
                            case 253:
                                read2 = dataInputStream.readUnsignedShort();
                                a(bArr, apVar, outputStream, dataInputStream.readInt(), read2, j3);
                                break;
                            case 254:
                                read2 = dataInputStream.readInt();
                                a(bArr, apVar, outputStream, dataInputStream.readInt(), read2, j3);
                                break;
                            case 255:
                                long readLong = dataInputStream.readLong();
                                read2 = dataInputStream.readInt();
                                a(bArr, apVar, outputStream, readLong, read2, j3);
                                break;
                            default:
                                a(bArr, dataInputStream, outputStream, read2, j3);
                                break;
                        }
                        j2 += read2;
                    } else {
                        return;
                    }
                } finally {
                    outputStream.flush();
                }
            }
        } else {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Unexpected version=");
            sb.append(read);
            throw new bq(sb.toString());
        }
    }

    public static <T> void a(T t) {
        Objects.requireNonNull(t, "Cannot return null from a non-@Nullable @Provides method");
    }

    public static <T> void a(T t, Class<T> cls) {
        if (t == null) {
            throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
        }
    }

    private static void a(byte[] bArr, ap apVar, OutputStream outputStream, long j, int i, long j2) throws IOException {
        if (i < 0) {
            throw new IOException("copyLength negative");
        } else if (j >= 0) {
            long j3 = i;
            if (j3 <= j2) {
                try {
                    InputStream b2 = new aq(apVar, j, j3).b();
                    while (i > 0) {
                        int min = Math.min(i, 16384);
                        int i2 = 0;
                        while (i2 < min) {
                            int read = b2.read(bArr, i2, min - i2);
                            if (read != -1) {
                                i2 += read;
                            } else {
                                throw new IOException("truncated input stream");
                            }
                        }
                        outputStream.write(bArr, 0, min);
                        i -= min;
                    }
                    b2.close();
                } catch (EOFException e) {
                    throw new IOException("patch underrun", e);
                }
            } else {
                throw new IOException("Output length overrun");
            }
        } else {
            throw new IOException("inputOffset negative");
        }
    }

    private static void a(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i, long j) throws IOException {
        if (i < 0) {
            throw new IOException("copyLength negative");
        } else if (i <= j) {
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
        } else {
            throw new IOException("Output length overrun");
        }
    }

    public static <T> ag b(Object obj, String str, Class<T> cls) {
        return new ag(obj, a(obj, str), cls, null);
    }
}
