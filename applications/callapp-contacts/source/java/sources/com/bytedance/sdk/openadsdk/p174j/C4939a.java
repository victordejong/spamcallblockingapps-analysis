package com.bytedance.sdk.openadsdk.p174j;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.p141b.C4157a;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p145b.AbstractC4346a;
import com.bytedance.sdk.openadsdk.p145b.C4351d;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.WeakHashMap;
/* renamed from: com.bytedance.sdk.openadsdk.j.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/a.class */
public class C4939a extends C4157a {

    /* renamed from: b */
    private static String f17968b;

    /* renamed from: c */
    private WeakHashMap<String, String> f17969c = new WeakHashMap<>();

    /* renamed from: d */
    private final AbstractC4346a f17970d = new C4351d();

    private C4939a() {
    }

    /* renamed from: a */
    public static C4939a m33490a() {
        return new C4939a();
    }

    /* renamed from: b */
    private static String m33487b() {
        if (TextUtils.isEmpty(f17968b)) {
            File file = new File(C4151a.m36302b(C4600n.m34815a()), "diskImage");
            file.mkdirs();
            f17968b = file.getAbsolutePath();
        }
        return f17968b;
    }

    @Override // com.bytedance.sdk.adnet.p141b.C4157a, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: a */
    public String mo33489a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = this.f17969c.get(str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String m32148a = C5465i.m32148a(str);
        this.f17969c.put(str, m32148a);
        return m32148a;
    }

    @Override // com.bytedance.sdk.adnet.p141b.C4157a, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: a */
    public void mo33488a(String str, Bitmap bitmap, byte[] bArr) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        if (bitmap == null) {
            return;
        }
        super.mo33488a(str, bitmap, bArr);
        File file = new File(m33487b(), str);
        if (file.exists() && file.isFile() && file.length() > 0) {
            return;
        }
        File file2 = new File(file + ".tmp");
        file2.delete();
        try {
            file2.createNewFile();
            fileOutputStream2 = new FileOutputStream(file2);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
            fileOutputStream2.flush();
            if (file2.exists() && file2.length() > 0) {
                file2.renameTo(file);
            }
            this.f17970d.mo35745a(file);
            try {
                fileOutputStream2.close();
            } catch (IOException e) {
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            try {
                C5478q.m32108c("DiskImageCache", "diskImageCache putBitmap error ", th);
                file2.delete();
                file.delete();
                if (fileOutputStream == null) {
                    return;
                }
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                }
            } catch (Throwable th4) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                }
                throw th4;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bytedance.sdk.adnet.p141b.C4157a, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: b */
    public Bitmap mo33486b(String str) {
        Throwable th;
        Bitmap bitmap;
        FileInputStream fileInputStream;
        Bitmap mo33486b = super.mo33486b(str);
        Bitmap bitmap2 = mo33486b;
        if (mo33486b == null) {
            File file = new File(m33487b(), str);
            bitmap2 = mo33486b;
            if (file.exists()) {
                FileInputStream fileInputStream2 = null;
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                    } catch (IOException e) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bitmap = mo33486b;
                }
                try {
                    Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, null);
                    if (decodeFileDescriptor != null) {
                        mo33486b = decodeFileDescriptor;
                        super.mo33488a(str, decodeFileDescriptor, new byte[0]);
                    }
                    fileInputStream.close();
                    bitmap2 = decodeFileDescriptor;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream2 = fileInputStream;
                    bitmap = mo33486b;
                    try {
                        C5478q.m32108c("DiskImageCache", "diskImageCache getBitmap error ", th);
                        bitmap2 = bitmap;
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                            bitmap2 = bitmap;
                        }
                        return bitmap2;
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
        return bitmap2;
    }
}
