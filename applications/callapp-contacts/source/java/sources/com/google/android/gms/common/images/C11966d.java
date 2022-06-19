package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.C12024c;
import com.google.android.gms.common.internal.C12041m;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.images.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/images/d.class */
public final class C11966d extends AbstractC11967e {

    /* renamed from: c */
    private final WeakReference<ImageManager.AbstractC11962a> f39471c;

    public C11966d(ImageManager.AbstractC11962a abstractC11962a, Uri uri) {
        super(uri, 0);
        C12024c.m19191a(abstractC11962a);
        this.f39471c = new WeakReference<>(abstractC11962a);
    }

    @Override // com.google.android.gms.common.images.AbstractC11967e
    /* renamed from: a */
    protected final void mo19232a() {
        if (this.f39471c.get() != null) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11966d)) {
            return false;
        }
        C11966d c11966d = (C11966d) obj;
        ImageManager.AbstractC11962a abstractC11962a = this.f39471c.get();
        ImageManager.AbstractC11962a abstractC11962a2 = c11966d.f39471c.get();
        return abstractC11962a2 != null && abstractC11962a != null && C12041m.m19168a(abstractC11962a2, abstractC11962a) && C12041m.m19168a(c11966d.f39472a, this.f39472a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f39472a});
    }
}
