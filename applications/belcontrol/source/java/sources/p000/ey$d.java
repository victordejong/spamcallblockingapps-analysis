package p000;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.util.Log;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.common.Constants;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
/* renamed from: ey$d */
/* loaded from: classes-dex2jar.jar:ey$d.class */
public class ey$d extends AsyncTask<Void, Void, Bitmap> {

    /* renamed from: a */
    public final Bitmap f6471a;

    /* renamed from: b */
    public final Uri f6472b;

    /* renamed from: c */
    public int f6473c;

    /* renamed from: d */
    public final /* synthetic */ ey f6474d;

    public ey$d(ey eyVar) {
        this.f6474d = eyVar;
        MediaDescriptionCompat mediaDescriptionCompat = eyVar.J;
        Bitmap iconBitmap = mediaDescriptionCompat == null ? null : mediaDescriptionCompat.getIconBitmap();
        Bitmap bitmap = iconBitmap;
        if (ey.d(iconBitmap)) {
            Log.w("MediaRouteCtrlDialog", "Can't fetch the given art bitmap because it's already recycled.");
            bitmap = null;
        }
        this.f6471a = bitmap;
        MediaDescriptionCompat mediaDescriptionCompat2 = eyVar.J;
        this.f6472b = mediaDescriptionCompat2 == null ? null : mediaDescriptionCompat2.getIconUri();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x025a  */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v56, types: [java.io.InputStream] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap doInBackground(java.lang.Void... r6) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.ey$d.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
    }

    /* renamed from: b */
    public Bitmap m2021b() {
        return this.f6471a;
    }

    /* renamed from: c */
    public Uri m2020c() {
        return this.f6472b;
    }

    /* renamed from: d */
    public void onPostExecute(Bitmap bitmap) {
        ey eyVar = this.f6474d;
        eyVar.K = null;
        if (!ja.a(eyVar.L, this.f6471a) || !ja.a(this.f6474d.M, this.f6472b)) {
            ey eyVar2 = this.f6474d;
            eyVar2.L = this.f6471a;
            eyVar2.O = bitmap;
            eyVar2.M = this.f6472b;
            eyVar2.P = this.f6473c;
            eyVar2.N = true;
            eyVar2.m();
        }
    }

    /* renamed from: e */
    public final InputStream m2018e(Uri uri) {
        InputStream inputStream;
        String lowerCase = uri.getScheme().toLowerCase();
        if ("android.resource".equals(lowerCase) || Constants.VAST_TRACKER_CONTENT.equals(lowerCase) || "file".equals(lowerCase)) {
            inputStream = this.f6474d.k.getContentResolver().openInputStream(uri);
        } else {
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(uri.toString()).openConnection());
            uRLConnection.setConnectTimeout(30000);
            uRLConnection.setReadTimeout(30000);
            inputStream = uRLConnection.getInputStream();
        }
        return inputStream == null ? null : new BufferedInputStream(inputStream);
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        this.f6474d.b();
    }
}
