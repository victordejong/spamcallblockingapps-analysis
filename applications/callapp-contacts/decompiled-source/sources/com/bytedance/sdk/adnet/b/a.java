package com.bytedance.sdk.adnet.b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Pair;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.o;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/a.class */
public class a implements d.b {

    /* renamed from: a  reason: collision with root package name */
    protected LruCache<String, Pair<Bitmap, byte[]>> f8193a = new LruCache<String, Pair<Bitmap, byte[]>>(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16) { // from class: com.bytedance.sdk.adnet.b.a.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public int sizeOf(String str, Pair<Bitmap, byte[]> pair) {
            Bitmap bitmap = (Bitmap) pair.first;
            int length = pair.second != null ? ((byte[]) pair.second).length : 0;
            return bitmap != null ? (bitmap.getRowBytes() * bitmap.getHeight()) + length : length;
        }
    };

    @Override // com.bytedance.sdk.adnet.b.d.b
    public String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.bytedance.sdk.adnet.b.d.b
    public void a(String str, Bitmap bitmap, byte[] bArr) {
        if (!TextUtils.isEmpty(str) && bitmap != null) {
            try {
                this.f8193a.put(str, new Pair<>(bitmap, bArr));
            } catch (Throwable th) {
                o.a(th, "DefaultImageCache put bitmap error", new Object[0]);
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.b.d.b
    public byte[] a(String str) {
        try {
            Pair<Bitmap, byte[]> pair = this.f8193a.get(str);
            byte[] bArr = pair != null ? (byte[]) pair.second : new byte[0];
            byte[] bArr2 = bArr;
            if (bArr == null) {
                bArr2 = new byte[0];
            }
            return bArr2;
        } catch (Throwable th) {
            o.a(th, "DefaultImageCache get bitmap error", new Object[0]);
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.adnet.b.d.b
    public Bitmap b(String str) {
        try {
            Pair<Bitmap, byte[]> pair = this.f8193a.get(str);
            if (pair != null) {
                return (Bitmap) pair.first;
            }
            return null;
        } catch (Throwable th) {
            o.a(th, "DefaultImageCache get bitmap error", new Object[0]);
            return null;
        }
    }
}
