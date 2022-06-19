package com.bytedance.sdk.openadsdk.p174j.p175a;

import android.text.TextUtils;
import android.util.LruCache;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p145b.AbstractC4346a;
import com.bytedance.sdk.openadsdk.p145b.C4351d;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.WeakHashMap;
/* renamed from: com.bytedance.sdk.openadsdk.j.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/a.class */
public class C4940a {

    /* renamed from: a */
    private static String f17971a;

    /* renamed from: e */
    private static volatile C4940a f17972e;

    /* renamed from: b */
    private WeakHashMap<String, String> f17973b = new WeakHashMap<>();

    /* renamed from: d */
    private final LruCache<String, C4942a> f17975d = new LruCache<String, C4942a>(5242880) { // from class: com.bytedance.sdk.openadsdk.j.a.a.1
        /* renamed from: a */
        public int sizeOf(String str, C4942a c4942a) {
            int i = 0;
            if (c4942a.f17977a != null) {
                i = 0 + c4942a.f17977a.length;
            }
            return i == 0 ? super.sizeOf(str, c4942a) : i;
        }

        /* renamed from: a */
        public void entryRemoved(boolean z, String str, C4942a c4942a, C4942a c4942a2) {
            super.entryRemoved(z, str, c4942a, c4942a2);
            if (!z || c4942a == null) {
                return;
            }
            c4942a.f17977a = null;
        }
    };

    /* renamed from: c */
    private final AbstractC4346a f17974c = new C4351d();

    /* renamed from: com.bytedance.sdk.openadsdk.j.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a/a$a.class */
    public static class C4942a {

        /* renamed from: a */
        byte[] f17977a;

        public C4942a(byte[] bArr) {
            this.f17977a = bArr;
        }
    }

    private C4940a() {
    }

    /* renamed from: a */
    public static C4940a m33485a() {
        if (f17972e == null) {
            synchronized (C4940a.class) {
                try {
                    if (f17972e == null) {
                        f17972e = new C4940a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17972e;
    }

    /* renamed from: a */
    private boolean m33481a(byte[] bArr) {
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }

    /* renamed from: b */
    private static String m33480b() {
        if (TextUtils.isEmpty(f17971a)) {
            File file = new File(C4151a.m36302b(C4600n.m34815a()), "diskGif");
            file.mkdirs();
            f17971a = file.getAbsolutePath();
        }
        return f17971a;
    }

    /* renamed from: a */
    public File m33484a(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(m33480b(), str);
            if (file.exists()) {
                if (file.length() > 0) {
                    return file;
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    public String m33483a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String str2 = str;
            if (str.startsWith(Constants.HTTPS)) {
                str2 = str.replaceFirst(Constants.HTTPS, "http");
            }
            String str3 = this.f17973b.get(str2);
            if (!TextUtils.isEmpty(str3)) {
                return str3;
            }
            String m32148a = C5465i.m32148a(str2);
            this.f17973b.put(str2, m32148a);
            return m32148a;
        }
    }

    /* renamed from: a */
    public void m33482a(String str, byte[] bArr) {
        synchronized (this) {
            m33478b(str, bArr);
        }
    }

    /* renamed from: b */
    public C4942a m33479b(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            C4942a c4942a = this.f17975d.get(str);
            if (c4942a != null) {
                return c4942a;
            }
            File file = new File(m33480b(), str);
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
                    C4942a c4942a2 = new C4942a(allocate.array());
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                    }
                    return c4942a2;
                } catch (Throwable th3) {
                    fileInputStream = fileInputStream2;
                    th = th3;
                    C5478q.m32108c("GifCache", "gifCache get error ", th);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    return null;
                }
            }
            return null;
        }
    }

    /* renamed from: b */
    public void m33478b(String str, byte[] bArr) {
        synchronized (this) {
            if (TextUtils.isEmpty(str) || bArr == null) {
                return;
            }
            if (!m33481a(bArr)) {
                this.f17975d.put(str, new C4942a(bArr));
            }
            File file = new File(m33480b(), str);
            if (file.exists() && file.isFile() && file.length() > 0) {
                return;
            }
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
                    this.f17974c.mo35745a(file);
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e) {
                    }
                } catch (Throwable th) {
                    fileOutputStream = fileOutputStream2;
                    file2.delete();
                    file.delete();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                }
            } catch (Throwable th2) {
            }
        }
    }
}
