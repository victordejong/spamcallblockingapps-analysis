package com.bytedance.sdk.openadsdk.j.a;

import android.text.TextUtils;
import android.util.LruCache;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.b.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.i;
import com.bytedance.sdk.openadsdk.utils.q;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f9615a;
    private static volatile a e;

    /* renamed from: b  reason: collision with root package name */
    private WeakHashMap<String, String> f9616b = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final LruCache<String, C0174a> f9618d = new LruCache<String, C0174a>(5242880) { // from class: com.bytedance.sdk.openadsdk.j.a.a.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public int sizeOf(String str, C0174a aVar) {
            int i = 0;
            if (aVar.f9620a != null) {
                i = 0 + aVar.f9620a.length;
            }
            return i == 0 ? super.sizeOf(str, aVar) : i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public void entryRemoved(boolean z, String str, C0174a aVar, C0174a aVar2) {
            super.entryRemoved(z, str, aVar, aVar2);
            if (z && aVar != null) {
                aVar.f9620a = null;
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.b.a f9617c = new d();

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/a$a.class */
    public static class C0174a {

        /* renamed from: a  reason: collision with root package name */
        byte[] f9620a;

        public C0174a(byte[] bArr) {
            this.f9620a = bArr;
        }
    }

    private a() {
    }

    public static a a() {
        if (e == null) {
            synchronized (a.class) {
                try {
                    if (e == null) {
                        e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    private boolean a(byte[] bArr) {
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }

    private static String b() {
        if (TextUtils.isEmpty(f9615a)) {
            File file = new File(com.bytedance.sdk.adnet.a.b(n.a()), "diskGif");
            file.mkdirs();
            f9615a = file.getAbsolutePath();
        }
        return f9615a;
    }

    public File a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(b(), str);
            if (file.exists()) {
                if (file.length() > 0) {
                    return file;
                }
            }
            return null;
        }
    }

    public String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String str2 = str;
            if (str.startsWith(Constants.HTTPS)) {
                str2 = str.replaceFirst(Constants.HTTPS, "http");
            }
            String str3 = this.f9616b.get(str2);
            if (!TextUtils.isEmpty(str3)) {
                return str3;
            }
            String a2 = i.a(str2);
            this.f9616b.put(str2, a2);
            return a2;
        }
    }

    public void a(String str, byte[] bArr) {
        synchronized (this) {
            b(str, bArr);
        }
    }

    public C0174a b(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            C0174a aVar = this.f9618d.get(str);
            if (aVar != null) {
                return aVar;
            }
            File file = new File(b(), str);
            if (file.exists()) {
                try {
                    fileInputStream2 = new FileInputStream(file);
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = null;
                }
                try {
                    ByteBuffer allocate = ByteBuffer.allocate(Long.valueOf(file.length()).intValue());
                    fileInputStream2.getChannel().read(allocate);
                    C0174a aVar2 = new C0174a(allocate.array());
                    try {
                        fileInputStream2.close();
                    } catch (IOException e2) {
                    }
                    return aVar2;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                    q.c("GifCache", "gifCache get error ", th);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    return null;
                }
            }
            return null;
        }
    }

    public void b(String str, byte[] bArr) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str) && bArr != null) {
                if (!a(bArr)) {
                    this.f9618d.put(str, new C0174a(bArr));
                }
                File file = new File(b(), str);
                if (!file.exists() || !file.isFile() || file.length() <= 0) {
                    File file2 = new File(file + ".tmp");
                    file2.delete();
                    FileOutputStream fileOutputStream = null;
                    try {
                        file2.createNewFile();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            fileOutputStream2.write(bArr);
                            fileOutputStream2.flush();
                            if (file2.exists() && file2.length() > 0) {
                                if (file.exists()) {
                                    file.delete();
                                }
                                file2.renameTo(file);
                            }
                            this.f9617c.a(file);
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e2) {
                            }
                        } catch (Throwable th) {
                            fileOutputStream = fileOutputStream2;
                            file2.delete();
                            file.delete();
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                }
                            }
                        }
                    } catch (Throwable th2) {
                    }
                }
            }
        }
    }
}
