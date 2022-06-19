package com.bumptech.glide.load.p212i;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.p208o.C4026b;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.File;
import java.io.FileNotFoundException;
/* renamed from: com.bumptech.glide.load.i.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/k.class */
public final class C4184k implements AbstractC4191n<Uri, File> {

    /* renamed from: a */
    private final Context f13048a;

    /* renamed from: com.bumptech.glide.load.i.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/k$a.class */
    public static final class C4185a implements AbstractC4193o<Uri, File> {

        /* renamed from: a */
        private final Context f13049a;

        public C4185a(Context context) {
            this.f13049a = context;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Uri, File> mo23078b(C4199r c4199r) {
            return new C4184k(this.f13049a);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/k$b.class */
    public static class C4186b implements AbstractC4007d<File> {

        /* renamed from: d */
        private static final String[] f13050d = {"_data"};

        /* renamed from: e */
        private final Context f13051e;

        /* renamed from: f */
        private final Uri f13052f;

        C4186b(Context context, Uri uri) {
            this.f13051e = context;
            this.f13052f = uri;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<File> mo23090a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super File> abstractC4008a) {
            Cursor query = this.f13051e.getContentResolver().query(this.f13052f, f13050d, null, null, null);
            String str = null;
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
            if (!TextUtils.isEmpty(str)) {
                abstractC4008a.mo23126f(new File(str));
                return;
            }
            abstractC4008a.mo23127c(new FileNotFoundException("Failed to find file path for: " + this.f13052f));
        }
    }

    public C4184k(Context context) {
        this.f13048a = context;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<File> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(uri), new C4186b(this.f13048a, uri));
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
        return C4026b.m23470b(uri);
    }
}
