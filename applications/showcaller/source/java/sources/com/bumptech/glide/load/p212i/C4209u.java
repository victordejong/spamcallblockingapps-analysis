package com.bumptech.glide.load.p212i;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.u */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/u.class */
public class C4209u<Data> implements AbstractC4191n<String, Data> {

    /* renamed from: a */
    private final AbstractC4191n<Uri, Data> f13091a;

    /* renamed from: com.bumptech.glide.load.i.u$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/u$a.class */
    public static final class C4210a implements AbstractC4193o<String, AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<String, AssetFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4209u(c4199r.m23121d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.u$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/u$b.class */
    public static class C4211b implements AbstractC4193o<String, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<String, ParcelFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4209u(c4199r.m23121d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.u$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/u$c.class */
    public static class C4212c implements AbstractC4193o<String, InputStream> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<String, InputStream> mo23078b(C4199r c4199r) {
            return new C4209u(c4199r.m23121d(Uri.class, InputStream.class));
        }
    }

    public C4209u(AbstractC4191n<Uri, Data> abstractC4191n) {
        this.f13091a = abstractC4191n;
    }

    /* renamed from: e */
    private static Uri m23108e(String str) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.charAt(0) == '/') {
            uri = m23107f(str);
        } else {
            Uri parse = Uri.parse(str);
            uri = parse.getScheme() == null ? m23107f(str) : parse;
        }
        return uri;
    }

    /* renamed from: f */
    private static Uri m23107f(String str) {
        return Uri.fromFile(new File(str));
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(String str, int i, int i2, C4032e c4032e) {
        Uri m23108e = m23108e(str);
        if (m23108e == null || !this.f13091a.mo23082a(m23108e)) {
            return null;
        }
        return this.f13091a.mo23081b(m23108e, i, i2, c4032e);
    }

    /* renamed from: d */
    public boolean mo23082a(String str) {
        return true;
    }
}
