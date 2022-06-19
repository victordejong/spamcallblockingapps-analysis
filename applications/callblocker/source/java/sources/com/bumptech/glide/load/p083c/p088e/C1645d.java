package com.bumptech.glide.load.p083c.p088e;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1578c;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1434a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.c.e.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/d.class */
public class C1645d implements AbstractC1783j<C1643c> {
    @Override // com.bumptech.glide.load.AbstractC1783j
    /* renamed from: a */
    public EnumC1578c mo16317a(C1781h c1781h) {
        return EnumC1578c.SOURCE;
    }

    /* renamed from: a */
    public boolean mo16612a(AbstractC1771t<C1643c> abstractC1771t, File file, C1781h c1781h) {
        boolean z;
        try {
            C1434a.m17033a(abstractC1771t.mo16347d().m16660c(), file);
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
