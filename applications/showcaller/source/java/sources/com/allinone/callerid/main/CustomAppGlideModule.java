package com.allinone.callerid.main;

import android.content.Context;
import com.allinone.callerid.p144d.p154f.p155b.C2569a;
import com.allinone.callerid.p144d.p154f.p155b.C2570b;
import com.allinone.callerid.p144d.p154f.p155b.C2573e;
import com.allinone.callerid.p144d.p154f.p155b.C2574f;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.p220m.AbstractC4326a;
import java.io.InputStream;
import java.nio.ByteBuffer;
import pl.droidsonroids.gif.C9692c;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/CustomAppGlideModule.class */
public class CustomAppGlideModule extends AbstractC4326a {
    /* renamed from: d */
    private void m26151d(ComponentCallbacks2C3958c componentCallbacks2C3958c, Registry registry) {
        C2574f c2574f = new C2574f(componentCallbacks2C3958c, componentCallbacks2C3958c.m23690h().getDir("glide_temp", 0));
        registry.m23703o(InputStream.class, C2570b.class, c2574f);
        registry.m23703o(ByteBuffer.class, C2570b.class, new C2569a(c2574f));
        registry.m23699s(C2570b.class, C9692c.class, new C2573e());
    }

    @Override // com.bumptech.glide.p220m.AbstractC4328c
    /* renamed from: a */
    public void mo22850a(Context context, ComponentCallbacks2C3958c componentCallbacks2C3958c, Registry registry) {
        m26151d(componentCallbacks2C3958c, registry);
    }
}
