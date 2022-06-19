package com.callapp.contacts.util.video.videoFilters;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES20;
import android.util.Log;
import com.linkedin.android.litr.p461c.C16628c;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter.class */
public class BitmapOverlayFilter extends BaseOverlayGlFilter {

    /* renamed from: a */
    private static final String f28492a = "BitmapOverlayFilter";

    /* renamed from: b */
    private Context f28493b;

    /* renamed from: c */
    private Uri f28494c;

    /* renamed from: d */
    private Bitmap f28495d;

    /* renamed from: e */
    private int f28496e = -12346;

    public BitmapOverlayFilter(Context context, Uri uri, RectF rectF) {
        super(rectF);
        this.f28493b = context;
        this.f28494c = uri;
    }

    public BitmapOverlayFilter(Context context, Uri uri, C16628c c16628c) {
        super(c16628c);
        this.f28493b = context;
        this.f28494c = uri;
    }

    public BitmapOverlayFilter(Bitmap bitmap, C16628c c16628c) {
        super(c16628c);
        this.f28495d = bitmap;
    }

    /* renamed from: a */
    private Bitmap m26882a(Uri uri) {
        Bitmap bitmap;
        if ("file".equals(uri.getScheme()) && uri.getPath() != null) {
            bitmap = BitmapFactory.decodeFile(new File(uri.getPath()).getPath());
        } else if (Constants.VAST_TRACKER_CONTENT.equals(uri.getScheme())) {
            try {
                InputStream openInputStream = this.f28493b.getContentResolver().openInputStream(uri);
                bitmap = null;
                if (openInputStream != null) {
                    bitmap = BitmapFactory.decodeStream(openInputStream, null, null);
                }
            } catch (FileNotFoundException e) {
                Log.e(f28492a, "Unable to open overlay image Uri ".concat(String.valueOf(uri)), e);
                bitmap = null;
            }
        } else {
            Log.e(f28492a, "Uri scheme is not supported: " + uri.getScheme());
            bitmap = null;
        }
        return bitmap;
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6874a() {
        super.mo6874a();
        Bitmap bitmap = this.f28495d;
        if (bitmap != null) {
            this.f28496e = m26883a(bitmap);
            return;
        }
        Bitmap m26882a = m26882a(this.f28494c);
        if (m26882a == null) {
            return;
        }
        this.f28496e = m26883a(m26882a);
        m26882a.recycle();
    }

    @Override // com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final void mo6872a(long j) {
        int i = this.f28496e;
        if (i >= 0) {
            m26884a(i);
        }
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo6871a(float[] fArr, int i) {
        super.mo6871a(fArr, i);
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.p461c.AbstractC16622a
    /* renamed from: b */
    public final void mo6870b() {
        super.mo6870b();
        GLES20.glDeleteTextures(1, new int[]{this.f28496e}, 0);
        this.f28496e = 0;
    }
}
