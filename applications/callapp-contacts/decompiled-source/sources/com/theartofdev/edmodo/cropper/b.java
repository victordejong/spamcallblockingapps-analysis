package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/b.class */
public final class b extends AsyncTask<Void, Void, a> {

    /* renamed from: a  reason: collision with root package name */
    final Uri f35043a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<CropImageView> f35044b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f35045c;

    /* renamed from: d  reason: collision with root package name */
    private final int f35046d;
    private final int e;

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f35047a;

        /* renamed from: b  reason: collision with root package name */
        public final Bitmap f35048b;

        /* renamed from: c  reason: collision with root package name */
        public final int f35049c;

        /* renamed from: d  reason: collision with root package name */
        public final int f35050d;
        public final Exception e;

        a(Uri uri, Bitmap bitmap, int i, int i2) {
            this.f35047a = uri;
            this.f35048b = bitmap;
            this.f35049c = i;
            this.f35050d = i2;
            this.e = null;
        }

        a(Uri uri, Exception exc) {
            this.f35047a = uri;
            this.f35048b = null;
            this.f35049c = 0;
            this.f35050d = 0;
            this.e = exc;
        }
    }

    public b(CropImageView cropImageView, Uri uri) {
        this.f35043a = uri;
        this.f35044b = new WeakReference<>(cropImageView);
        this.f35045c = cropImageView.getContext();
        DisplayMetrics displayMetrics = cropImageView.getResources().getDisplayMetrics();
        double d2 = displayMetrics.density > 1.0f ? 1.0f / displayMetrics.density : 1.0d;
        this.f35046d = (int) (displayMetrics.widthPixels * d2);
        this.e = (int) (displayMetrics.heightPixels * d2);
    }

    private a a() {
        try {
            if (isCancelled()) {
                return null;
            }
            c.a a2 = c.a(this.f35045c, this.f35043a, this.f35046d, this.e);
            if (isCancelled()) {
                return null;
            }
            c.b a3 = c.a(a2.f35055a, this.f35045c, this.f35043a);
            return new a(this.f35043a, a3.f35057a, a2.f35056b, a3.f35058b);
        } catch (Exception e) {
            return new a(this.f35043a, e);
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ a doInBackground(Void[] voidArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(a aVar) {
        a aVar2 = aVar;
        if (aVar2 != null) {
            boolean z = false;
            if (!isCancelled()) {
                CropImageView cropImageView = this.f35044b.get();
                z = false;
                if (cropImageView != null) {
                    cropImageView.i = null;
                    cropImageView.d();
                    if (aVar2.e == null) {
                        cropImageView.f35026b = aVar2.f35050d;
                        cropImageView.a(aVar2.f35048b, 0, aVar2.f35047a, aVar2.f35049c, aVar2.f35050d);
                    }
                    CropImageView.h hVar = cropImageView.f;
                    z = true;
                    if (hVar != null) {
                        hVar.a(aVar2.e);
                        z = true;
                    }
                }
            }
            if (!z && aVar2.f35048b != null) {
                aVar2.f35048b.recycle();
            }
        }
    }
}
