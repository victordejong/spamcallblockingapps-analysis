package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import com.theartofdev.edmodo.cropper.C17183c;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.lang.ref.WeakReference;
/* renamed from: com.theartofdev.edmodo.cropper.b */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/b.class */
public final class AsyncTaskC17181b extends AsyncTask<Void, Void, C17182a> {

    /* renamed from: a */
    final Uri f60844a;

    /* renamed from: b */
    private final WeakReference<CropImageView> f60845b;

    /* renamed from: c */
    private final Context f60846c;

    /* renamed from: d */
    private final int f60847d;

    /* renamed from: e */
    private final int f60848e;

    /* renamed from: com.theartofdev.edmodo.cropper.b$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/b$a.class */
    public static final class C17182a {

        /* renamed from: a */
        public final Uri f60849a;

        /* renamed from: b */
        public final Bitmap f60850b;

        /* renamed from: c */
        public final int f60851c;

        /* renamed from: d */
        public final int f60852d;

        /* renamed from: e */
        public final Exception f60853e;

        C17182a(Uri uri, Bitmap bitmap, int i, int i2) {
            this.f60849a = uri;
            this.f60850b = bitmap;
            this.f60851c = i;
            this.f60852d = i2;
            this.f60853e = null;
        }

        C17182a(Uri uri, Exception exc) {
            this.f60849a = uri;
            this.f60850b = null;
            this.f60851c = 0;
            this.f60852d = 0;
            this.f60853e = exc;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public AsyncTaskC17181b(CropImageView cropImageView, Uri uri) {
        this.f60844a = uri;
        this.f60845b = new WeakReference<>(cropImageView);
        this.f60846c = cropImageView.getContext();
        DisplayMetrics displayMetrics = cropImageView.getResources().getDisplayMetrics();
        char c = displayMetrics.density > 1.0f ? 1.0f / displayMetrics.density : (char) 0;
        this.f60847d = (int) (displayMetrics.widthPixels * c);
        this.f60848e = (int) (displayMetrics.heightPixels * c);
    }

    /* renamed from: a */
    private C17182a m5782a() {
        try {
            if (isCancelled()) {
                return null;
            }
            C17183c.C17184a m5774a = C17183c.m5774a(this.f60846c, this.f60844a, this.f60847d, this.f60848e);
            if (isCancelled()) {
                return null;
            }
            C17183c.C17185b m5768a = C17183c.m5768a(m5774a.f60861a, this.f60846c, this.f60844a);
            return new C17182a(this.f60844a, m5768a.f60863a, m5774a.f60862b, m5768a.f60864b);
        } catch (Exception e) {
            return new C17182a(this.f60844a, e);
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ C17182a doInBackground(Void[] voidArr) {
        return m5782a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(C17182a c17182a) {
        C17182a c17182a2 = c17182a;
        if (c17182a2 != null) {
            boolean z = false;
            if (!isCancelled()) {
                CropImageView cropImageView = this.f60845b.get();
                z = false;
                if (cropImageView != null) {
                    cropImageView.f60770i = null;
                    cropImageView.m5801d();
                    if (c17182a2.f60853e == null) {
                        cropImageView.f60763b = c17182a2.f60852d;
                        cropImageView.m5810a(c17182a2.f60850b, 0, c17182a2.f60849a, c17182a2.f60851c, c17182a2.f60852d);
                    }
                    CropImageView.AbstractC17173h abstractC17173h = cropImageView.f60767f;
                    z = true;
                    if (abstractC17173h != null) {
                        abstractC17173h.mo5796a(c17182a2.f60853e);
                        z = true;
                    }
                }
            }
            if (z || c17182a2.f60850b == null) {
                return;
            }
            c17182a2.f60850b.recycle();
        }
    }
}
