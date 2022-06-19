package p193e.p1451f.p1452a.p1457n.p1458n.p1459o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
/* renamed from: e.f.a.n.n.o.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/o/b.class */
public class C22289b implements AbstractC22274d<InputStream> {

    /* renamed from: a */
    public final Uri f61931a;

    /* renamed from: b */
    public final C22293d f61932b;

    /* renamed from: c */
    public InputStream f61933c;

    /* renamed from: e.f.a.n.n.o.b$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/n/o/b$a.class */
    public static class C22290a implements AbstractC22292c {

        /* renamed from: b */
        public static final String[] f61934b = {"_data"};

        /* renamed from: a */
        public final ContentResolver f61935a;

        public C22290a(ContentResolver contentResolver) {
            this.f61935a = contentResolver;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.p1459o.AbstractC22292c
        /* renamed from: a */
        public Cursor mo8350a(Uri uri) {
            return this.f61935a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f61934b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* renamed from: e.f.a.n.n.o.b$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/n/o/b$b.class */
    public static class C22291b implements AbstractC22292c {

        /* renamed from: b */
        public static final String[] f61936b = {"_data"};

        /* renamed from: a */
        public final ContentResolver f61937a;

        public C22291b(ContentResolver contentResolver) {
            this.f61937a = contentResolver;
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1458n.p1459o.AbstractC22292c
        /* renamed from: a */
        public Cursor mo8350a(Uri uri) {
            return this.f61937a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f61936b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public C22289b(Uri uri, C22293d c22293d) {
        this.f61931a = uri;
        this.f61932b = c22293d;
    }

    /* renamed from: e */
    public static C22289b m8352e(Context context, Uri uri, AbstractC22292c abstractC22292c) {
        return new C22289b(uri, new C22293d(ComponentCallbacks2C22222c.m8449b(context).f61716e.m8439e(), abstractC22292c, ComponentCallbacks2C22222c.m8449b(context).f61717f, context.getContentResolver()));
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: a */
    public Class<InputStream> mo8220a() {
        return InputStream.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: b */
    public void mo8219b() {
        InputStream inputStream = this.f61933c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: c */
    public EnumC22258a mo8218c() {
        return EnumC22258a.LOCAL;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    public void cancel() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: d */
    public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super InputStream> abstractC22275a) {
        try {
            InputStream m8351f = m8351f();
            this.f61933c = m8351f;
            abstractC22275a.mo8231e(m8351f);
        } catch (FileNotFoundException e) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            abstractC22275a.mo8230f(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r12 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a9, code lost:
        if (r12 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00b3, code lost:
        r12 = null;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0216  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream m8351f() throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1458n.p1459o.C22289b.m8351f():java.io.InputStream");
    }
}
