package com.bumptech.glide.load.data.p118a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.data.C3680g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c.class */
public final class C3666c implements AbstractC3673d<InputStream> {

    /* renamed from: a */
    private final Uri f13803a;

    /* renamed from: b */
    private final C3670e f13804b;

    /* renamed from: c */
    private InputStream f13805c;

    /* renamed from: com.bumptech.glide.load.data.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c$a.class */
    public static final class C3667a implements AbstractC3669d {

        /* renamed from: b */
        private static final String[] f13806b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f13807a;

        public C3667a(ContentResolver contentResolver) {
            this.f13807a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.p118a.AbstractC3669d
        /* renamed from: a */
        public final Cursor mo37532a(Uri uri) {
            return this.f13807a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f13806b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* renamed from: com.bumptech.glide.load.data.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/a/c$b.class */
    public static final class C3668b implements AbstractC3669d {

        /* renamed from: b */
        private static final String[] f13808b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f13809a;

        public C3668b(ContentResolver contentResolver) {
            this.f13809a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.p118a.AbstractC3669d
        /* renamed from: a */
        public final Cursor mo37532a(Uri uri) {
            return this.f13809a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f13808b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    C3666c(Uri uri, C3670e c3670e) {
        this.f13803a = uri;
        this.f13804b = c3670e;
    }

    /* renamed from: a */
    public static C3666c m37533a(Context context, Uri uri, AbstractC3669d abstractC3669d) {
        return new C3666c(uri, new C3670e(ComponentCallbacks2C3548c.m37723a(context).f13533c.m37800a(), abstractC3669d, ComponentCallbacks2C3548c.m37723a(context).f13534d, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cleanup() {
        InputStream inputStream = this.f13805c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final EnumC3658a getDataSource() {
        return EnumC3658a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super InputStream> abstractC3674a) {
        try {
            InputStream m37530b = this.f13804b.m37530b(this.f13803a);
            int m37531a = m37530b != null ? this.f13804b.m37531a(this.f13803a) : -1;
            InputStream inputStream = m37530b;
            if (m37531a != -1) {
                inputStream = new C3680g(m37530b, m37531a);
            }
            this.f13805c = inputStream;
            abstractC3674a.onDataReady(inputStream);
        } catch (FileNotFoundException e) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            abstractC3674a.onLoadFailed(e);
        }
    }
}
