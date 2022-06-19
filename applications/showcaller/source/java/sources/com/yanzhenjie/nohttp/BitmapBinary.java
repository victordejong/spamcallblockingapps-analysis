package com.yanzhenjie.nohttp;

import android.graphics.Bitmap;
import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/BitmapBinary.class */
public class BitmapBinary extends BasicBinary {
    private Bitmap mBitmap;

    public BitmapBinary(Bitmap bitmap, String str) {
        this(bitmap, str, null);
    }

    public BitmapBinary(Bitmap bitmap, String str, String str2) {
        super(str, str2);
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap is null: " + str);
        } else if (!bitmap.isRecycled()) {
            this.mBitmap = bitmap;
        } else {
            throw new IllegalArgumentException("Bitmap is recycled: " + str + ", bitmap must be not recycled.");
        }
    }

    public static byte[] bitmap2ByteArray(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        IOUtils.closeQuietly(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    public long getBinaryLength() {
        if (this.mBitmap.isRecycled()) {
            return 0L;
        }
        return bitmap2ByteArray(this.mBitmap).length;
    }

    @Override // com.yanzhenjie.nohttp.BasicBinary
    protected InputStream getInputStream() {
        if (this.mBitmap.isRecycled()) {
            return null;
        }
        return new ByteArrayInputStream(bitmap2ByteArray(this.mBitmap));
    }
}
