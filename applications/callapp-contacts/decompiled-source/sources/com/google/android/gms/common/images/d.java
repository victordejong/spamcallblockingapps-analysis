package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.m;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/d.class */
public final class d extends e {

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<ImageManager.a> f22826c;

    public d(ImageManager.a aVar, Uri uri) {
        super(uri, 0);
        c.a(aVar);
        this.f22826c = new WeakReference<>(aVar);
    }

    @Override // com.google.android.gms.common.images.e
    protected final void a() {
        if (this.f22826c.get() != null) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        ImageManager.a aVar = this.f22826c.get();
        ImageManager.a aVar2 = dVar.f22826c.get();
        return aVar2 != null && aVar != null && m.a(aVar2, aVar) && m.a(dVar.f22827a, this.f22827a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f22827a});
    }
}
