package com.bumptech.glide.load.data.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.bumptech.glide.h;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c.class */
public final class c implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f7383a;

    /* renamed from: b  reason: collision with root package name */
    private final e f7384b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f7385c;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c$a.class */
    public static final class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f7386b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f7387a;

        public a(ContentResolver contentResolver) {
            this.f7387a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.a.d
        public final Cursor a(Uri uri) {
            return this.f7387a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f7386b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c$b.class */
    public static final class b implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f7388b = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f7389a;

        public b(ContentResolver contentResolver) {
            this.f7389a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.a.d
        public final Cursor a(Uri uri) {
            return this.f7389a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f7388b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    c(Uri uri, e eVar) {
        this.f7383a = uri;
        this.f7384b = eVar;
    }

    public static c a(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.a(context).f7234c.a(), dVar, com.bumptech.glide.c.a(context).f7235d, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cleanup() {
        InputStream inputStream = this.f7385c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final com.bumptech.glide.load.a getDataSource() {
        return com.bumptech.glide.load.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void loadData(h hVar, d.a<? super InputStream> aVar) {
        try {
            InputStream b2 = this.f7384b.b(this.f7383a);
            int a2 = b2 != null ? this.f7384b.a(this.f7383a) : -1;
            InputStream inputStream = b2;
            if (a2 != -1) {
                inputStream = new g(b2, a2);
            }
            this.f7385c = inputStream;
            aVar.onDataReady(inputStream);
        } catch (FileNotFoundException e) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            aVar.onLoadFailed(e);
        }
    }
}
