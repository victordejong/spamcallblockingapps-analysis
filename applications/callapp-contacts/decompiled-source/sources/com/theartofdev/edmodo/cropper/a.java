package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.c;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/a.class */
public final class a extends AsyncTask<Void, Void, C0556a> {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<CropImageView> f35035a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f35036b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f35037c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f35038d;
    private final float[] e;
    private final int f;
    private final int g;
    private final int h;
    private final boolean i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final boolean n;
    private final boolean o;
    private final CropImageView.i p;
    private final Uri q;
    private final Bitmap.CompressFormat r;
    private final int s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.theartofdev.edmodo.cropper.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/a$a.class */
    public static final class C0556a {

        /* renamed from: a  reason: collision with root package name */
        public final Bitmap f35039a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f35040b;

        /* renamed from: c  reason: collision with root package name */
        final Exception f35041c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f35042d;
        final int e;

        C0556a(Bitmap bitmap, int i) {
            this.f35039a = bitmap;
            this.f35040b = null;
            this.f35041c = null;
            this.f35042d = false;
            this.e = i;
        }

        C0556a(Uri uri, int i) {
            this.f35039a = null;
            this.f35040b = uri;
            this.f35041c = null;
            this.f35042d = true;
            this.e = i;
        }

        C0556a(Exception exc, boolean z) {
            this.f35039a = null;
            this.f35040b = null;
            this.f35041c = exc;
            this.f35042d = z;
            this.e = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(CropImageView cropImageView, Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, int i4, int i5, boolean z2, boolean z3, CropImageView.i iVar, Uri uri, Bitmap.CompressFormat compressFormat, int i6) {
        this.f35035a = new WeakReference<>(cropImageView);
        this.f35038d = cropImageView.getContext();
        this.f35036b = bitmap;
        this.e = fArr;
        this.f35037c = null;
        this.f = i;
        this.i = z;
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n = z2;
        this.o = z3;
        this.p = iVar;
        this.q = uri;
        this.r = compressFormat;
        this.s = i6;
        this.g = 0;
        this.h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(CropImageView cropImageView, Uri uri, float[] fArr, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, boolean z2, boolean z3, CropImageView.i iVar, Uri uri2, Bitmap.CompressFormat compressFormat, int i8) {
        this.f35035a = new WeakReference<>(cropImageView);
        this.f35038d = cropImageView.getContext();
        this.f35037c = uri;
        this.e = fArr;
        this.f = i;
        this.i = z;
        this.j = i4;
        this.k = i5;
        this.g = i2;
        this.h = i3;
        this.l = i6;
        this.m = i7;
        this.n = z2;
        this.o = z3;
        this.p = iVar;
        this.q = uri2;
        this.r = compressFormat;
        this.s = i8;
        this.f35036b = null;
    }

    private C0556a a() {
        c.a aVar;
        boolean z = true;
        try {
            if (isCancelled()) {
                return null;
            }
            Uri uri = this.f35037c;
            if (uri != null) {
                aVar = c.a(this.f35038d, uri, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
            } else {
                Bitmap bitmap = this.f35036b;
                if (bitmap == null) {
                    return new C0556a((Bitmap) null, 1);
                }
                aVar = c.a(bitmap, this.e, this.f, this.i, this.j, this.k, this.n, this.o);
            }
            Bitmap a2 = c.a(aVar.f35055a, this.l, this.m, this.p);
            Uri uri2 = this.q;
            if (uri2 == null) {
                return new C0556a(a2, aVar.f35056b);
            }
            c.a(this.f35038d, a2, uri2, this.r, this.s);
            if (a2 != null) {
                a2.recycle();
            }
            return new C0556a(this.q, aVar.f35056b);
        } catch (Exception e) {
            if (this.q == null) {
                z = false;
            }
            return new C0556a(e, z);
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ C0556a doInBackground(Void[] voidArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(C0556a aVar) {
        CropImageView cropImageView;
        C0556a aVar2 = aVar;
        if (aVar2 != null) {
            boolean z = false;
            if (!isCancelled() && (cropImageView = this.f35035a.get()) != null) {
                cropImageView.j = null;
                cropImageView.d();
                CropImageView.d dVar = cropImageView.g;
                if (dVar != null) {
                    dVar.a(new CropImageView.a(cropImageView.f35025a, cropImageView.h, aVar2.f35039a, aVar2.f35040b, aVar2.f35041c, cropImageView.c(), cropImageView.b(), cropImageView.a(), cropImageView.f35027c, aVar2.e));
                }
                z = true;
            }
            if (!z && aVar2.f35039a != null) {
                aVar2.f35039a.recycle();
            }
        }
    }
}
