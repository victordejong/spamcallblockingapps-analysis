package com.bytedance.sdk.adnet.core;

import android.content.Context;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.face.AbstractC4248b;
import com.bytedance.sdk.adnet.face.IHttpStack;
import java.io.File;
/* renamed from: com.bytedance.sdk.adnet.core.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/k.class */
public class C4214k {
    /* renamed from: a */
    public static C4215l m36128a(Context context) {
        return m36127a(context, (IHttpStack) null);
    }

    /* renamed from: a */
    public static C4215l m36127a(Context context, IHttpStack iHttpStack) {
        C4212j c4212j = iHttpStack;
        if (iHttpStack == null) {
            c4212j = new C4212j();
        }
        return m36125a(context, new C4196a(c4212j));
    }

    /* renamed from: a */
    public static C4215l m36126a(Context context, IHttpStack iHttpStack, int i) {
        C4212j c4212j = iHttpStack;
        if (iHttpStack == null) {
            c4212j = new C4212j();
        }
        C4215l c4215l = new C4215l(new C4204f(new File(C4151a.m36302b(context), "reqQueue")), new C4196a(c4212j), i);
        c4215l.m36124a();
        return c4215l;
    }

    /* renamed from: a */
    private static C4215l m36125a(Context context, AbstractC4248b abstractC4248b) {
        C4215l c4215l = new C4215l(new C4204f(new File(C4151a.m36302b(context), "reqQueue")), abstractC4248b);
        c4215l.m36124a();
        return c4215l;
    }
}
