package p193e.p1512i.p1513a.p1514a.p1515b;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* renamed from: e.i.a.a.b.a */
/* loaded from: classes-dex2jar.jar:e/i/a/a/b/a.class */
public class C22901a extends NativeAd.Image {

    /* renamed from: a */
    public final Drawable f63566a;

    /* renamed from: b */
    public final Uri f63567b;

    public C22901a(Drawable drawable, Uri uri) {
        this.f63566a = drawable;
        this.f63567b = uri;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Drawable getDrawable() {
        return this.f63566a;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public double getScale() {
        return 1.0d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Uri getUri() {
        return this.f63567b;
    }
}
