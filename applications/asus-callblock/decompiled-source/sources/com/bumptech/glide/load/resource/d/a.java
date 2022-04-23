package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.resource.c.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final k<b> f3652a;

    /* renamed from: b  reason: collision with root package name */
    public final k<Bitmap> f3653b;

    public a(k<Bitmap> kVar, k<b> kVar2) {
        if (kVar != null && kVar2 != null) {
            throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
        } else if (kVar == null && kVar2 == null) {
            throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
        } else {
            this.f3653b = kVar;
            this.f3652a = kVar2;
        }
    }
}
