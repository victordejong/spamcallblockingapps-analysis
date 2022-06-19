package com.bumptech.glide.load.p214j.p218g;

import android.util.Log;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4368a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.j.g.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/d.class */
public class C4257d implements AbstractC4147g<C4255c> {
    @Override // com.bumptech.glide.load.AbstractC4147g
    /* renamed from: b */
    public EncodeStrategy mo22949b(C4032e c4032e) {
        return EncodeStrategy.SOURCE;
    }

    /* renamed from: c */
    public boolean mo22950a(AbstractC4083s<C4255c> abstractC4083s, File file, C4032e c4032e) {
        boolean z;
        try {
            C4368a.m22749e(abstractC4083s.get().m23036c(), file);
            z = true;
        } catch (IOException e) {
            if (Log.isLoggable("GifEncoder", 5)) {
                Log.w("GifEncoder", "Failed to encode GIF drawable data", e);
            }
            z = false;
        }
        return z;
    }
}
