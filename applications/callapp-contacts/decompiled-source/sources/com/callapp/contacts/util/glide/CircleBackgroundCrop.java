package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.resource.bitmap.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CircleBackgroundCrop.class */
public class CircleBackgroundCrop extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f16190b = "com.callapp.contacts.CircleBackgroundCrop.1".getBytes(f7619a);

    /* renamed from: c  reason: collision with root package name */
    private Integer f16191c;

    /* renamed from: d  reason: collision with root package name */
    private ColorFilter f16192d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private boolean i;

    public CircleBackgroundCrop(Integer num, ColorFilter colorFilter, int i, int i2, float f, boolean z, boolean z2) {
        this.f16191c = null;
        this.f16192d = null;
        this.g = BitmapDescriptorFactory.HUE_RED;
        this.f16191c = num;
        this.f16192d = colorFilter;
        this.e = i;
        this.f = i2;
        this.g = f;
        this.h = z;
        this.i = z2;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    public final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
        return this.h ? CallAppTransformationUtils.a(eVar, bitmap, i, i2, this.f16191c, this.f16192d, this.e, this.f, this.g, this.i) : CallAppTransformationUtils.a(eVar, bitmap, i, i2, this.f16191c, this.f16192d, this.i);
    }

    @Override // com.bumptech.glide.load.f
    public boolean equals(Object obj) {
        return obj instanceof CircleBackgroundCrop;
    }

    @Override // com.bumptech.glide.load.f
    public int hashCode() {
        return -1733842476;
    }

    @Override // com.bumptech.glide.load.f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f16190b);
    }
}
