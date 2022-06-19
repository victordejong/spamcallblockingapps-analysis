package com.bumptech.glide.load.p212i.p213y;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.data.p208o.C4026b;
import com.bumptech.glide.load.data.p208o.C4027c;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p212i.AbstractC4193o;
import com.bumptech.glide.load.p212i.C4199r;
import com.bumptech.glide.p222o.C4367d;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.y.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/b.class */
public class C4225b implements AbstractC4191n<Uri, InputStream> {

    /* renamed from: a */
    private final Context f13105a;

    /* renamed from: com.bumptech.glide.load.i.y.b$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/b$a.class */
    public static class C4226a implements AbstractC4193o<Uri, InputStream> {

        /* renamed from: a */
        private final Context f13106a;

        public C4226a(Context context) {
            this.f13106a = context;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, InputStream> mo23078b(C4199r c4199r) {
            return new C4225b(this.f13106a);
        }
    }

    public C4225b(Context context) {
        this.f13105a = context.getApplicationContext();
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<InputStream> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        if (C4026b.m23468d(i, i2)) {
            return new AbstractC4191n.C4192a<>(new C4367d(uri), C4027c.m23465f(this.f13105a, uri));
        }
        return null;
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
        return C4026b.m23471a(uri);
    }
}
