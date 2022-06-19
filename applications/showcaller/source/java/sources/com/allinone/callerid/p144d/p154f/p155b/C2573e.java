package com.allinone.callerid.p144d.p154f.p155b;

import android.util.Log;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.p214j.p219h.AbstractC4272e;
import java.io.IOException;
import pl.droidsonroids.gif.C9692c;
/* renamed from: com.allinone.callerid.d.f.b.e */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/f/b/e.class */
public class C2573e implements AbstractC4272e<C2570b, C9692c> {
    @Override // com.bumptech.glide.load.p214j.p219h.AbstractC4272e
    /* renamed from: a */
    public AbstractC4083s<C9692c> mo22989a(AbstractC4083s<C2570b> abstractC4083s, C4032e c4032e) {
        Log.d("<ytr>", "transcode: GifDrawableTranscoder");
        try {
            return new C2572d(new C9692c(abstractC4083s.get().m27092a()));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
