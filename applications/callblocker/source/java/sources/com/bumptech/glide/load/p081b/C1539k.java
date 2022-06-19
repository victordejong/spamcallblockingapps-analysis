package com.bumptech.glide.load.p081b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p079a.p080a.C1467b;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.File;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.b.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/k.class */
public final class C1539k implements AbstractC1546n<Uri, File> {

    /* renamed from: a */
    private final Context f4892a;

    /* renamed from: com.bumptech.glide.load.b.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/k$a.class */
    public static final class C1540a implements AbstractC1548o<Uri, File> {

        /* renamed from: a */
        private final Context f4893a;

        public C1540a(Context context) {
            this.f4893a = context;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Uri, File> mo16801a(C1554r c1554r) {
            return new C1539k(this.f4893a);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/k$b.class */
    public static class C1541b implements AbstractC1475d<File> {

        /* renamed from: a */
        private static final String[] f4894a = {"_data"};

        /* renamed from: b */
        private final Context f4895b;

        /* renamed from: c */
        private final Uri f4896c;

        C1541b(Context context, Uri uri) {
            this.f4895b = context;
            this.f4896c = uri;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<File> mo16813a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super File> abstractC1476a) {
            String str = null;
            Cursor query = this.f4895b.getContentResolver().query(this.f4896c, f4894a, null, null, null);
            if (query != null) {
                str = null;
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(str)) {
                abstractC1476a.mo16338a((Exception) new FileNotFoundException("Failed to find file path for: " + this.f4896c));
            } else {
                abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super File>) new File(str));
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: c */
        public void mo16810c() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: d */
        public EnumC1464a mo16809d() {
            return EnumC1464a.LOCAL;
        }
    }

    public C1539k(Context context) {
        this.f4892a = context;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<File> mo16802a(Uri uri, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(uri), new C1541b(this.f4892a, uri));
    }

    /* renamed from: a */
    public boolean mo16803a(Uri uri) {
        return C1467b.m16939a(uri);
    }
}
