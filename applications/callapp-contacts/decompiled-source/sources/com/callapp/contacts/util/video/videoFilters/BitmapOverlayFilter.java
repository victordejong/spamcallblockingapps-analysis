package com.callapp.contacts.util.video.videoFilters;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES20;
import android.util.Log;
import com.linkedin.android.litr.c.c;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/BitmapOverlayFilter.class */
public class BitmapOverlayFilter extends BaseOverlayGlFilter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f16353a = "BitmapOverlayFilter";

    /* renamed from: b  reason: collision with root package name */
    private Context f16354b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f16355c;

    /* renamed from: d  reason: collision with root package name */
    private Bitmap f16356d;
    private int e = -12346;

    public BitmapOverlayFilter(Context context, Uri uri, RectF rectF) {
        super(rectF);
        this.f16354b = context;
        this.f16355c = uri;
    }

    public BitmapOverlayFilter(Context context, Uri uri, c cVar) {
        super(cVar);
        this.f16354b = context;
        this.f16355c = uri;
    }

    public BitmapOverlayFilter(Bitmap bitmap, c cVar) {
        super(cVar);
        this.f16356d = bitmap;
    }

    private Bitmap a(Uri uri) {
        Bitmap bitmap;
        if ("file".equals(uri.getScheme()) && uri.getPath() != null) {
            bitmap = BitmapFactory.decodeFile(new File(uri.getPath()).getPath());
        } else if (Constants.VAST_TRACKER_CONTENT.equals(uri.getScheme())) {
            try {
                InputStream openInputStream = this.f16354b.getContentResolver().openInputStream(uri);
                bitmap = null;
                if (openInputStream != null) {
                    bitmap = BitmapFactory.decodeStream(openInputStream, null, null);
                }
            } catch (FileNotFoundException e) {
                Log.e(f16353a, "Unable to open overlay image Uri ".concat(String.valueOf(uri)), e);
                bitmap = null;
            }
        } else {
            Log.e(f16353a, "Uri scheme is not supported: " + uri.getScheme());
            bitmap = null;
        }
        return bitmap;
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final void a() {
        super.a();
        Bitmap bitmap = this.f16356d;
        if (bitmap != null) {
            this.e = a(bitmap);
            return;
        }
        Bitmap a2 = a(this.f16355c);
        if (a2 != null) {
            this.e = a(a2);
            a2.recycle();
        }
    }

    @Override // com.linkedin.android.litr.c.a
    public final void a(long j) {
        int i = this.e;
        if (i >= 0) {
            a(i);
        }
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final /* bridge */ /* synthetic */ void a(float[] fArr, int i) {
        super.a(fArr, i);
    }

    @Override // com.callapp.contacts.util.video.videoFilters.BaseOverlayGlFilter, com.linkedin.android.litr.c.a
    public final void b() {
        super.b();
        GLES20.glDeleteTextures(1, new int[]{this.e}, 0);
        this.e = 0;
    }
}
