package p131c.p396i.p397a.p399f.p401b;

import android.graphics.Bitmap;
import com.android.volley.toolbox.ImageLoader;
import p012b.p035f.C0786e;
import p012b.p042i.p046j.C0890a;
/* renamed from: c.i.a.f.b.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/f/b/d.class */
public class C6531d implements ImageLoader.ImageCache {

    /* renamed from: a */
    public final C0786e<String, Bitmap> f20298a;

    /* renamed from: c.i.a.f.b.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/d$a.class */
    public class C6532a extends C0786e<String, Bitmap> {
        public C6532a(C6531d dVar, int i) {
            super(i);
        }

        /* renamed from: a */
        public int mo3778b(String str, Bitmap bitmap) {
            return C0890a.m35614a(bitmap);
        }
    }

    /* renamed from: c.i.a.f.b.d$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/f/b/d$b.class */
    public static final class C6533b {

        /* renamed from: a */
        public static final C6531d f20299a = new C6531d(null);
    }

    public C6531d() {
        this.f20298a = new C6532a(this, 5242880);
    }

    public /* synthetic */ C6531d(C6532a aVar) {
        this();
    }

    /* renamed from: a */
    public static C6531d m20568a() {
        return C6533b.f20299a;
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public Bitmap getBitmap(String str) {
        return this.f20298a.get(str);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public void putBitmap(String str, Bitmap bitmap) {
        this.f20298a.put(str, bitmap);
    }
}
