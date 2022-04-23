package com.bumptech.glide.load.resource.d;

import android.util.Log;
import com.bumptech.glide.g.a;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.k;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/d.class */
public final class d implements k<c> {
    private static boolean a(u<c> uVar, File file) {
        boolean z;
        try {
            a.a(uVar.b().b(), file);
            z = true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            z = false;
        }
        return z;
    }

    @Override // com.bumptech.glide.load.k
    public final c a(h hVar) {
        return c.SOURCE;
    }

    @Override // com.bumptech.glide.load.d
    public final /* synthetic */ boolean encode(Object obj, File file, h hVar) {
        return a((u) obj, file);
    }
}
