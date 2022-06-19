package p000;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import com.google.android.exoplayer2.util.MimeTypes;
/* renamed from: er$b */
/* loaded from: classes-dex2jar.jar:er$b.class */
public final class er$b {

    /* renamed from: a */
    public final Uri f6408a;

    /* renamed from: b */
    public final Format f6409b;

    /* renamed from: c */
    public final String f6410c;

    /* renamed from: d */
    public final String f6411d;

    /* renamed from: e */
    public final String f6412e;

    /* renamed from: f */
    public final String f6413f;

    public er$b(Uri uri, Format format, String str, String str2, String str3, String str4) {
        this.f6408a = uri;
        this.f6409b = format;
        this.f6410c = str;
        this.f6411d = str2;
        this.f6412e = str3;
        this.f6413f = str4;
    }

    /* renamed from: b */
    public static er$b m2061b(Uri uri) {
        return new er$b(uri, Format.m6477n("0", null, MimeTypes.APPLICATION_M3U8, null, null, -1, 0, 0, null), null, null, null, null);
    }

    /* renamed from: a */
    public er$b m2062a(Format format) {
        return new er$b(this.f6408a, format, this.f6410c, this.f6411d, this.f6412e, this.f6413f);
    }
}
