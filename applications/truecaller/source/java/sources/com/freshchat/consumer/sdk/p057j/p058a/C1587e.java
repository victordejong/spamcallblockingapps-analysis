package com.freshchat.consumer.sdk.p057j.p058a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.freshchat.consumer.sdk.p057j.C1613ai;
/* renamed from: com.freshchat.consumer.sdk.j.a.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/e.class */
public class C1587e extends AbstractC1588f {

    /* renamed from: ka */
    public int f4306ka;

    /* renamed from: kb */
    public int f4307kb;

    public C1587e(Context context, int i) {
        super(context);
        m40405A(i);
    }

    /* renamed from: B */
    private Bitmap m40404B(int i) {
        C1613ai.m40284d("ImageResizer", "processBitmap - " + i);
        return m40403a(this.f4316kj, i, this.f4306ka, this.f4307kb);
    }

    /* renamed from: a */
    public static int m40402a(BitmapFactory.Options options, int i, int i2) {
        int i3;
        float f;
        float f2;
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        if (i4 > i2 || i5 > i) {
            if (i5 > i4) {
                f2 = i4;
                f = i2;
            } else {
                f2 = i5;
                f = i;
            }
            float f3 = i5 * i4;
            float f4 = i * i2 * 2;
            i3 = Math.round(f2 / f);
            while (f3 / (i3 * i3) > f4) {
                i3++;
            }
        } else {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static Bitmap m40403a(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = m40402a(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00b7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m40401a(java.io.FileDescriptor r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p057j.p058a.C1587e.m40401a(java.io.FileDescriptor, int, int):android.graphics.Bitmap");
    }

    /* renamed from: A */
    public void m40405A(int i) {
        m40400c(i, i);
    }

    /* renamed from: c */
    public void m40400c(int i, int i2) {
        this.f4306ka = i;
        this.f4307kb = i2;
    }

    @Override // com.freshchat.consumer.sdk.p057j.p058a.AbstractC1588f
    /* renamed from: d */
    public Bitmap mo40373d(Object obj) {
        return m40404B(Integer.parseInt(String.valueOf(obj)));
    }
}
