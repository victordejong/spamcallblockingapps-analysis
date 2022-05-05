package p081h.p093b.p099c.p103c.p106h;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.loader.content.CursorLoader;
import p081h.p093b.p099c.p103c.p107i.AbstractC5652a;
/* renamed from: h.b.c.c.h.c */
/* loaded from: classes-dex2jar.jar:h/b/c/c/h/c.class */
public class C5651c extends CursorLoader {

    /* renamed from: a */
    public final Uri f14152a;

    /* renamed from: b */
    public final String[] f14153b;

    public C5651c(Context context, Uri uri, String[] strArr) {
        super(context);
        this.f14152a = uri;
        this.f14153b = strArr == null ? AbstractC5652a.f14154a : strArr;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.CursorLoader, androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        setUri(this.f14152a.buildUpon().appendQueryParameter("contentType", "image/").build());
        setProjection(this.f14153b);
        return super.loadInBackground();
    }
}
