package com.bytedance.sdk.adnet.p141b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.LruCache;
import android.util.Pair;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4221o;
import com.bytedance.sdk.adnet.p141b.C4166d;
/* renamed from: com.bytedance.sdk.adnet.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/b/a.class */
public class C4157a implements C4166d.AbstractC4176b {

    /* renamed from: a */
    protected LruCache<String, Pair<Bitmap, byte[]>> f15251a = new LruCache<String, Pair<Bitmap, byte[]>>(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16) { // from class: com.bytedance.sdk.adnet.b.a.1
        /* renamed from: a */
        public int sizeOf(String str, Pair<Bitmap, byte[]> pair) {
            Bitmap bitmap = (Bitmap) pair.first;
            int length = pair.second != null ? ((byte[]) pair.second).length : 0;
            return bitmap != null ? (bitmap.getRowBytes() * bitmap.getHeight()) + length : length;
        }
    };

    @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: a */
    public String mo33489a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: a */
    public void mo33488a(String str, Bitmap bitmap, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bitmap == null) {
            return;
        }
        try {
            this.f15251a.put(str, new Pair<>(bitmap, bArr));
        } catch (Throwable th) {
            C4221o.m36107a(th, "DefaultImageCache put bitmap error", new Object[0]);
        }
    }

    @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: a */
    public byte[] mo36242a(String str) {
        try {
            Pair<Bitmap, byte[]> pair = this.f15251a.get(str);
            byte[] bArr = pair != null ? (byte[]) pair.second : new byte[0];
            byte[] bArr2 = bArr;
            if (bArr == null) {
                bArr2 = new byte[0];
            }
            return bArr2;
        } catch (Throwable th) {
            C4221o.m36107a(th, "DefaultImageCache get bitmap error", new Object[0]);
            return new byte[0];
        }
    }

    @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4176b
    /* renamed from: b */
    public Bitmap mo33486b(String str) {
        try {
            Pair<Bitmap, byte[]> pair = this.f15251a.get(str);
            if (pair == null) {
                return null;
            }
            return (Bitmap) pair.first;
        } catch (Throwable th) {
            C4221o.m36107a(th, "DefaultImageCache get bitmap error", new Object[0]);
            return null;
        }
    }
}
