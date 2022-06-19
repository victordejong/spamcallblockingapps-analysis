package com.bumptech.glide.load.p081b.p082a;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.p080a.C1467b;
import com.bumptech.glide.load.p079a.p080a.C1468c;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1554r;
import com.bumptech.glide.p076g.C1431c;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/c.class */
public class C1502c implements AbstractC1546n<Uri, InputStream> {

    /* renamed from: a */
    private final Context f4853a;

    /* renamed from: com.bumptech.glide.load.b.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/c$a.class */
    public static class C1503a implements AbstractC1548o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f4854a;

        public C1503a(Context context) {
            this.f4854a = context;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1502c(this.f4854a);
        }
    }

    public C1502c(Context context) {
        this.f4853a = context.getApplicationContext();
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<InputStream> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return C1467b.m16940a(i, i2) ? new AbstractC1546n.C1547a<>(new C1431c(uri), C1468c.m16935a(this.f4853a, uri)) : null;
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return C1467b.m16937c(uri);
    }
}
