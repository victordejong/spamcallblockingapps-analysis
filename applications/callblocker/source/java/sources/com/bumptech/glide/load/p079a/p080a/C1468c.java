package com.bumptech.glide.load.p079a.p080a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p079a.C1482g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.a.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a/c.class */
public class C1468c implements AbstractC1475d<InputStream> {

    /* renamed from: a */
    private final Uri f4798a;

    /* renamed from: b */
    private final C1472e f4799b;

    /* renamed from: c */
    private InputStream f4800c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a/c$a.class */
    public static class C1469a implements AbstractC1471d {

        /* renamed from: b */
        private static final String[] f4801b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f4802a;

        C1469a(ContentResolver contentResolver) {
            this.f4802a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p079a.p080a.AbstractC1471d
        /* renamed from: a */
        public Cursor mo16931a(Uri uri) {
            return this.f4802a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f4801b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/a/c$b.class */
    public static class C1470b implements AbstractC1471d {

        /* renamed from: b */
        private static final String[] f4803b = {"_data"};

        /* renamed from: a */
        private final ContentResolver f4804a;

        C1470b(ContentResolver contentResolver) {
            this.f4804a = contentResolver;
        }

        @Override // com.bumptech.glide.load.p079a.p080a.AbstractC1471d
        /* renamed from: a */
        public Cursor mo16931a(Uri uri) {
            return this.f4804a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f4803b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    C1468c(Uri uri, C1472e c1472e) {
        this.f4798a = uri;
        this.f4799b = c1472e;
    }

    /* renamed from: a */
    public static C1468c m16935a(Context context, Uri uri) {
        return m16934a(context, uri, new C1469a(context.getContentResolver()));
    }

    /* renamed from: a */
    private static C1468c m16934a(Context context, Uri uri, AbstractC1471d abstractC1471d) {
        return new C1468c(uri, new C1472e(ComponentCallbacks2C1361c.m17308a(context).m17292h().m17425a(), abstractC1471d, ComponentCallbacks2C1361c.m17308a(context).m17303b(), context.getContentResolver()));
    }

    /* renamed from: b */
    public static C1468c m16933b(Context context, Uri uri) {
        return m16934a(context, uri, new C1470b(context.getContentResolver()));
    }

    /* renamed from: e */
    private InputStream m16932e() {
        C1482g m16928b = this.f4799b.m16928b(this.f4798a);
        int m16930a = m16928b != null ? this.f4799b.m16930a(this.f4798a) : -1;
        if (m16930a != -1) {
            m16928b = new C1482g(m16928b, m16930a);
        }
        return m16928b;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<InputStream> mo16813a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super InputStream> abstractC1476a) {
        try {
            this.f4800c = m16932e();
            abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super InputStream>) this.f4800c);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
            }
            abstractC1476a.mo16338a((Exception) e);
        }
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: b */
    public void mo16811b() {
        if (this.f4800c != null) {
            try {
                this.f4800c.close();
            } catch (IOException e) {
            }
        }
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
