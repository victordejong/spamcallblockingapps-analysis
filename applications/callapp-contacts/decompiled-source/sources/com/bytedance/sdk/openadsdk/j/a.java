package com.bytedance.sdk.openadsdk.j;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.b.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.i;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a.class */
public class a extends com.bytedance.sdk.adnet.b.a {

    /* renamed from: b  reason: collision with root package name */
    private static String f9612b;

    /* renamed from: c  reason: collision with root package name */
    private WeakHashMap<String, String> f9613c = new WeakHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.b.a f9614d = new d();

    private a() {
    }

    public static a a() {
        return new a();
    }

    private static String b() {
        if (TextUtils.isEmpty(f9612b)) {
            File file = new File(com.bytedance.sdk.adnet.a.b(n.a()), "diskImage");
            file.mkdirs();
            f9612b = file.getAbsolutePath();
        }
        return f9612b;
    }

    @Override // com.bytedance.sdk.adnet.b.a, com.bytedance.sdk.adnet.b.d.b
    public String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.f9613c.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String a2 = i.a(str);
        this.f9613c.put(str, a2);
        return a2;
    }

    @Override // com.bytedance.sdk.adnet.b.a, com.bytedance.sdk.adnet.b.d.b
    public void a(String str, Bitmap bitmap, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        if (bitmap != null) {
            super.a(str, bitmap, bArr);
            File file = new File(b(), str);
            if (!file.exists() || !file.isFile() || file.length() <= 0) {
                File file2 = new File(file + ".tmp");
                file2.delete();
                FileOutputStream fileOutputStream2 = null;
                try {
                    file2.createNewFile();
                    fileOutputStream = new FileOutputStream(file2);
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    if (file2.exists() && file2.length() > 0) {
                        file2.renameTo(file);
                    }
                    this.f9614d.a(file);
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    try {
                        q.c("DiskImageCache", "diskImageCache putBitmap error ", th);
                        file2.delete();
                        file.delete();
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e2) {
                            }
                        }
                    } catch (Throwable th4) {
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e3) {
                            }
                        }
                        throw th4;
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.b.a, com.bytedance.sdk.adnet.b.d.b
    public Bitmap b(String str) {
        Throwable th;
        FileInputStream fileInputStream;
        Bitmap b2 = super.b(str);
        Bitmap bitmap = b2;
        if (b2 == null) {
            File file = new File(b(), str);
            bitmap = b2;
            if (file.exists()) {
                FileInputStream fileInputStream2 = null;
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (IOException e) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    b2 = b2;
                }
                try {
                    Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, null);
                    if (decodeFileDescriptor != null) {
                        b2 = decodeFileDescriptor;
                        super.a(str, decodeFileDescriptor, new byte[0]);
                    }
                    fileInputStream.close();
                    bitmap = decodeFileDescriptor;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream2 = fileInputStream;
                    try {
                        q.c("DiskImageCache", "diskImageCache getBitmap error ", th);
                        bitmap = b2;
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                            bitmap = b2;
                        }
                        return bitmap;
                    } catch (Throwable th4) {
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e2) {
                            }
                        }
                        throw th4;
                    }
                }
            }
        }
        return bitmap;
    }
}
