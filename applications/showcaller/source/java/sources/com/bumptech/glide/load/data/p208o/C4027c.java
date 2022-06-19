package com.bumptech.glide.load.data.p208o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.data.C4014g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.o.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/c.class */
public class C4027c implements AbstractC4007d<InputStream> {

    /* renamed from: d */
    private final Uri f12669d;

    /* renamed from: e */
    private final C4031e f12670e;

    /* renamed from: f */
    private InputStream f12671f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.data.o.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/c$a.class */
    public static class C4028a implements AbstractC4030d {

        /* renamed from: a */
        private static final String[] f12672a = {"_data"};

        /* renamed from: b */
        private final ContentResolver f12673b;

        C4028a(ContentResolver contentResolver) {
            this.f12673b = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.p208o.AbstractC4030d
        /* renamed from: a */
        public Cursor mo23462a(Uri uri) {
            return this.f12673b.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f12672a, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.data.o.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/o/c$b.class */
    public static class C4029b implements AbstractC4030d {

        /* renamed from: a */
        private static final String[] f12674a = {"_data"};

        /* renamed from: b */
        private final ContentResolver f12675b;

        C4029b(ContentResolver contentResolver) {
            this.f12675b = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.p208o.AbstractC4030d
        /* renamed from: a */
        public Cursor mo23462a(Uri uri) {
            return this.f12675b.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f12674a, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    C4027c(Uri uri, C4031e c4031e) {
        this.f12669d = uri;
        this.f12670e = c4031e;
    }

    /* renamed from: c */
    private static C4027c m23466c(Context context, Uri uri, AbstractC4030d abstractC4030d) {
        return new C4027c(uri, new C4031e(ComponentCallbacks2C3958c.m23695c(context).m23688j().m23711g(), abstractC4030d, ComponentCallbacks2C3958c.m23695c(context).m23693e(), context.getContentResolver()));
    }

    /* renamed from: f */
    public static C4027c m23465f(Context context, Uri uri) {
        return m23466c(context, uri, new C4028a(context.getContentResolver()));
    }

    /* renamed from: g */
    public static C4027c m23464g(Context context, Uri uri) {
        return m23466c(context, uri, new C4029b(context.getContentResolver()));
    }

    /* renamed from: h */
    private InputStream m23463h() {
        InputStream m23458d = this.f12670e.m23458d(this.f12669d);
        int m23461a = m23458d != null ? this.f12670e.m23461a(this.f12669d) : -1;
        C4014g c4014g = m23458d;
        if (m23461a != -1) {
            c4014g = new C4014g(m23458d, m23461a);
        }
        return c4014g;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<InputStream> mo23090a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: b */
    public void mo23089b() {
        InputStream inputStream = this.f12671f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
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
    public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super InputStream> abstractC4008a) {
        try {
            InputStream m23463h = m23463h();
            this.f12671f = m23463h;
            abstractC4008a.mo23126f(m23463h);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
            }
            abstractC4008a.mo23127c(e);
        }
    }
}
