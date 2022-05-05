package p459j.p460a.p474c0.p499h;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import com.flurry.sdk.C3496r;
import java.io.IOException;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.f0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/f0.class */
public class C12162f0 {

    /* renamed from: a */
    public final MediaMetadataRetriever f27310a = new MediaMetadataRetriever();

    /* renamed from: a */
    public int m6951a(int i, int i2) {
        String extractMetadata = this.f27310a.extractMetadata(i);
        return TextUtils.isEmpty(extractMetadata) ? i2 : Integer.parseInt(extractMetadata);
    }

    /* renamed from: a */
    public Bitmap m6953a() {
        return this.f27310a.getFrameAtTime();
    }

    /* renamed from: a */
    public Bitmap m6950a(long j) {
        return this.f27310a.getFrameAtTime(j);
    }

    /* renamed from: a */
    public String m6952a(int i) {
        return this.f27310a.extractMetadata(i);
    }

    /* renamed from: a */
    public void m6949a(Uri uri) throws IOException {
        AssetFileDescriptor openAssetFileDescriptor = AbstractC11516a.m9413n().mo9412a().getContentResolver().openAssetFileDescriptor(uri, C3496r.f6031a);
        if (openAssetFileDescriptor != null) {
            try {
                try {
                    this.f27310a.setDataSource(openAssetFileDescriptor.getFileDescriptor());
                    openAssetFileDescriptor.close();
                } catch (RuntimeException e) {
                    m6948b();
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                openAssetFileDescriptor.close();
                throw th;
            }
        } else {
            throw new IOException("openAssetFileDescriptor returned null for " + uri);
        }
    }

    /* renamed from: b */
    public void m6948b() {
        try {
            this.f27310a.release();
        } catch (RuntimeException e) {
            C12153d0.m6986b("MessagingApp", "MediaMetadataRetriever.release failed", e);
        }
    }
}
