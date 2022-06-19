package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.AbstractC3865f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CircleBackgroundCrop.class */
public class CircleBackgroundCrop extends AbstractC3865f {

    /* renamed from: b */
    private static final byte[] f28208b = "com.callapp.contacts.CircleBackgroundCrop.1".getBytes(f14176a);

    /* renamed from: c */
    private Integer f28209c;

    /* renamed from: d */
    private ColorFilter f28210d;

    /* renamed from: e */
    private int f28211e;

    /* renamed from: f */
    private int f28212f;

    /* renamed from: g */
    private float f28213g;

    /* renamed from: h */
    private boolean f28214h;

    /* renamed from: i */
    private boolean f28215i;

    public CircleBackgroundCrop(Integer num, ColorFilter colorFilter, int i, int i2, float f, boolean z, boolean z2) {
        this.f28209c = null;
        this.f28210d = null;
        this.f28213g = BitmapDescriptorFactory.HUE_RED;
        this.f28209c = num;
        this.f28210d = colorFilter;
        this.f28211e = i;
        this.f28212f = i2;
        this.f28213g = f;
        this.f28214h = z;
        this.f28215i = z2;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3865f
    /* renamed from: a */
    public final Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        return this.f28214h ? CallAppTransformationUtils.m27111a(abstractC3712e, bitmap, i, i2, this.f28209c, this.f28210d, this.f28211e, this.f28212f, this.f28213g, this.f28215i) : CallAppTransformationUtils.m27110a(abstractC3712e, bitmap, i, i2, this.f28209c, this.f28210d, this.f28215i);
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public boolean equals(Object obj) {
        return obj instanceof CircleBackgroundCrop;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public int hashCode() {
        return -1733842476;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f28208b);
    }
}
