package com.bytedance.sdk.adnet.core;

import android.content.Context;
import com.bytedance.sdk.adnet.a;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.adnet.face.b;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/k.class */
public class k {
    public static l a(Context context) {
        return a(context, (IHttpStack) null);
    }

    public static l a(Context context, IHttpStack iHttpStack) {
        IHttpStack iHttpStack2 = iHttpStack;
        if (iHttpStack == null) {
            iHttpStack2 = new j();
        }
        return a(context, new a(iHttpStack2));
    }

    public static l a(Context context, IHttpStack iHttpStack, int i) {
        IHttpStack iHttpStack2 = iHttpStack;
        if (iHttpStack == null) {
            iHttpStack2 = new j();
        }
        l lVar = new l(new f(new File(a.b(context), "reqQueue")), new a(iHttpStack2), i);
        lVar.a();
        return lVar;
    }

    private static l a(Context context, b bVar) {
        l lVar = new l(new f(new File(a.b(context), "reqQueue")), bVar);
        lVar.a();
        return lVar;
    }
}
