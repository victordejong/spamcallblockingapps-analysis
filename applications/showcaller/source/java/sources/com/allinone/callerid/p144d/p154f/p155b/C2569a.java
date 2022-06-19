package com.allinone.callerid.p144d.p154f.p155b;

import android.util.Log;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4368a;
import java.nio.ByteBuffer;
/* renamed from: com.allinone.callerid.d.f.b.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/b/a.class */
public class C2569a implements AbstractC4146f<ByteBuffer, C2570b> {

    /* renamed from: a */
    private final C2574f f8988a;

    public C2569a(C2574f c2574f) {
        this.f8988a = c2574f;
    }

    /* renamed from: e */
    private static boolean m27093e(C4032e c4032e) {
        return true;
    }

    /* renamed from: c */
    public AbstractC4083s<C2570b> mo22861b(ByteBuffer byteBuffer, int i, int i2, C4032e c4032e) {
        return this.f8988a.mo22861b(C4368a.m22748f(byteBuffer), i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo22862a(ByteBuffer byteBuffer, C4032e c4032e) {
        Log.d("<ytr>", "handles: BufferFileDecoder");
        return m27093e(c4032e) && this.f8988a.mo22862a(C4368a.m22748f(byteBuffer), c4032e);
    }
}
