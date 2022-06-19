package com.bumptech.glide.load.p212i.p213y;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.p208o.C4026b;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p212i.AbstractC4193o;
import com.bumptech.glide.load.p212i.C4199r;
import com.bumptech.glide.p222o.C4367d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.y.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/d.class */
public final class C4229d<DataT> implements AbstractC4191n<Uri, DataT> {

    /* renamed from: a */
    private final Context f13109a;

    /* renamed from: b */
    private final AbstractC4191n<File, DataT> f13110b;

    /* renamed from: c */
    private final AbstractC4191n<Uri, DataT> f13111c;

    /* renamed from: d */
    private final Class<DataT> f13112d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.i.y.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/d$a.class */
    public static abstract class AbstractC4230a<DataT> implements AbstractC4193o<Uri, DataT> {

        /* renamed from: a */
        private final Context f13113a;

        /* renamed from: b */
        private final Class<DataT> f13114b;

        AbstractC4230a(Context context, Class<DataT> cls) {
            this.f13113a = context;
            this.f13114b = cls;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public final AbstractC4191n<Uri, DataT> mo23078b(C4199r c4199r) {
            return new C4229d(this.f13113a, c4199r.m23121d(File.class, this.f13114b), c4199r.m23121d(Uri.class, this.f13114b), this.f13114b);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.y.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/d$b.class */
    public static final class C4231b extends AbstractC4230a<ParcelFileDescriptor> {
        public C4231b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.y.d$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/d$c.class */
    public static final class C4232c extends AbstractC4230a<InputStream> {
        public C4232c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.y.d$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/y/d$d.class */
    public static final class C4233d<DataT> implements AbstractC4007d<DataT> {

        /* renamed from: d */
        private static final String[] f13115d = {"_data"};

        /* renamed from: e */
        private final Context f13116e;

        /* renamed from: f */
        private final AbstractC4191n<File, DataT> f13117f;

        /* renamed from: g */
        private final AbstractC4191n<Uri, DataT> f13118g;

        /* renamed from: h */
        private final Uri f13119h;

        /* renamed from: i */
        private final int f13120i;

        /* renamed from: j */
        private final int f13121j;

        /* renamed from: k */
        private final C4032e f13122k;

        /* renamed from: l */
        private final Class<DataT> f13123l;

        /* renamed from: m */
        private volatile boolean f13124m;

        /* renamed from: n */
        private volatile AbstractC4007d<DataT> f13125n;

        C4233d(Context context, AbstractC4191n<File, DataT> abstractC4191n, AbstractC4191n<Uri, DataT> abstractC4191n2, Uri uri, int i, int i2, C4032e c4032e, Class<DataT> cls) {
            this.f13116e = context.getApplicationContext();
            this.f13117f = abstractC4191n;
            this.f13118g = abstractC4191n2;
            this.f13119h = uri;
            this.f13120i = i;
            this.f13121j = i2;
            this.f13122k = c4032e;
            this.f13123l = cls;
        }

        /* renamed from: c */
        private AbstractC4191n.C4192a<DataT> m23088c() {
            if (Environment.isExternalStorageLegacy()) {
                return this.f13117f.mo23081b(m23083h(this.f13119h), this.f13120i, this.f13121j, this.f13122k);
            }
            return this.f13118g.mo23081b(m23084g() ? MediaStore.setRequireOriginal(this.f13119h) : this.f13119h, this.f13120i, this.f13121j, this.f13122k);
        }

        /* renamed from: f */
        private AbstractC4007d<DataT> m23085f() {
            AbstractC4191n.C4192a<DataT> m23088c = m23088c();
            return m23088c != null ? m23088c.f13061c : null;
        }

        /* renamed from: g */
        private boolean m23084g() {
            return this.f13116e.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        /* renamed from: h */
        private File m23083h(Uri uri) {
            Cursor cursor = null;
            try {
                Cursor query = this.f13116e.getContentResolver().query(uri, f13115d, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to media store entry for: ");
                    sb.append(uri);
                    throw new FileNotFoundException(sb.toString());
                }
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                if (!TextUtils.isEmpty(string)) {
                    File file = new File(string);
                    query.close();
                    return file;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("File path was empty in media store for: ");
                sb2.append(uri);
                throw new FileNotFoundException(sb2.toString());
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<DataT> mo23090a() {
            return this.f13123l;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
            AbstractC4007d<DataT> abstractC4007d = this.f13125n;
            if (abstractC4007d != null) {
                abstractC4007d.mo23089b();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
            this.f13124m = true;
            AbstractC4007d<DataT> abstractC4007d = this.f13125n;
            if (abstractC4007d != null) {
                abstractC4007d.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super DataT> abstractC4008a) {
            try {
                AbstractC4007d<DataT> m23085f = m23085f();
                if (m23085f == null) {
                    abstractC4008a.mo23127c(new IllegalArgumentException("Failed to build fetcher for: " + this.f13119h));
                    return;
                }
                this.f13125n = m23085f;
                if (this.f13124m) {
                    cancel();
                } else {
                    m23085f.mo23086e(priority, abstractC4008a);
                }
            } catch (FileNotFoundException e) {
                abstractC4008a.mo23127c(e);
            }
        }
    }

    C4229d(Context context, AbstractC4191n<File, DataT> abstractC4191n, AbstractC4191n<Uri, DataT> abstractC4191n2, Class<DataT> cls) {
        this.f13109a = context.getApplicationContext();
        this.f13110b = abstractC4191n;
        this.f13111c = abstractC4191n2;
        this.f13112d = cls;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<DataT> mo23081b(Uri uri, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(uri), new C4233d(this.f13109a, this.f13110b, this.f13111c, uri, i, i2, c4032e, this.f13112d));
    }

    /* renamed from: d */
    public boolean mo23082a(Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && C4026b.m23470b(uri);
    }
}
