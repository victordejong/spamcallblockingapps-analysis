package com.bumptech.glide.load.p081b;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/u.class */
public class C1564u<Data> implements AbstractC1546n<String, Data> {

    /* renamed from: a */
    private final AbstractC1546n<Uri, Data> f4934a;

    /* renamed from: com.bumptech.glide.load.b.u$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/u$a.class */
    public static final class C1565a implements AbstractC1548o<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<String, AssetFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1564u(c1554r.m16830a(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.b.u$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/u$b.class */
    public static class C1566b implements AbstractC1548o<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<String, ParcelFileDescriptor> mo16801a(C1554r c1554r) {
            return new C1564u(c1554r.m16830a(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.b.u$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/u$c.class */
    public static class C1567c implements AbstractC1548o<String, InputStream> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<String, InputStream> mo16801a(C1554r c1554r) {
            return new C1564u(c1554r.m16830a(Uri.class, InputStream.class));
        }
    }

    public C1564u(AbstractC1546n<Uri, Data> abstractC1546n) {
        this.f4934a = abstractC1546n;
    }

    /* renamed from: b */
    private static Uri m16817b(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            uri = null;
        } else if (str.charAt(0) == '/') {
            uri = m16816c(str);
        } else {
            Uri parse = Uri.parse(str);
            uri = parse;
            if (parse.getScheme() == null) {
                uri = m16816c(str);
            }
        }
        return uri;
    }

    /* renamed from: c */
    private static Uri m16816c(String str) {
        return Uri.fromFile(new File(str));
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(String str, int i, int i2, C1781h c1781h) {
        Uri m16817b = m16817b(str);
        return (m16817b == null || !this.f4934a.mo16803a(m16817b)) ? null : this.f4934a.mo16802a(m16817b, i, i2, c1781h);
    }

    /* renamed from: a */
    public boolean mo16803a(String str) {
        return true;
    }
}
