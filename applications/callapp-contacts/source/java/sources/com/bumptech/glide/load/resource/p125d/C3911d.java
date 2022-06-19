package com.bumptech.glide.load.resource.p125d;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3825k;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3660c;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3618a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.resource.d.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/d.class */
public final class C3911d implements AbstractC3825k<C3909c> {
    /* renamed from: a */
    private static boolean m37215a(AbstractC3811u<C3909c> abstractC3811u, File file) {
        boolean z;
        try {
            C3618a.m37612a(abstractC3811u.mo37235b().m37220b(), file);
            z = true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            z = false;
        }
        return z;
    }

    @Override // com.bumptech.glide.load.AbstractC3825k
    /* renamed from: a */
    public final EnumC3660c mo37214a(C3822h c3822h) {
        return EnumC3660c.SOURCE;
    }

    @Override // com.bumptech.glide.load.AbstractC3661d
    public final /* synthetic */ boolean encode(Object obj, File file, C3822h c3822h) {
        return m37215a((AbstractC3811u) obj, file);
    }
}
