package com.bumptech.glide.load.p081b.p082a;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p079a.p080a.C1467b;
import com.bumptech.glide.load.p079a.p080a.C1468c;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1554r;
import com.bumptech.glide.load.p083c.p084a.C1621x;
import com.bumptech.glide.p076g.C1431c;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/d.class */
public class C1504d implements AbstractC1546n<Uri, InputStream> {

    /* renamed from: a */
    private final Context f4855a;

    /* renamed from: com.bumptech.glide.load.b.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/a/d$a.class */
    public static class C1505a implements AbstractC1548o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f4856a;

        public C1505a(Context context) {
            this.f4856a = context;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, InputStream> mo16801a(C1554r c1554r) {
            return new C1504d(this.f4856a);
        }
    }

    public C1504d(Context context) {
        this.f4855a = context.getApplicationContext();
    }

    /* renamed from: a */
    private boolean m16889a(C1781h c1781h) {
        Long l = (Long) c1781h.m16324a(C1621x.f5020a);
        return l != null && l.longValue() == -1;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<InputStream> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return (!C1467b.m16940a(i, i2) || !m16889a(c1781h)) ? null : new AbstractC1546n.C1547a<>(new C1431c(uri), C1468c.m16933b(this.f4855a, uri));
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return C1467b.m16938b(uri);
    }
}
