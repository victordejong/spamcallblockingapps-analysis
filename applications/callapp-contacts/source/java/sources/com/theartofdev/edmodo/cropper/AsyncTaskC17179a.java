package com.theartofdev.edmodo.cropper;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.theartofdev.edmodo.cropper.C17183c;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.lang.ref.WeakReference;
/* renamed from: com.theartofdev.edmodo.cropper.a */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/a.class */
public final class AsyncTaskC17179a extends AsyncTask<Void, Void, C17180a> {

    /* renamed from: a */
    private final WeakReference<CropImageView> f60820a;

    /* renamed from: b */
    private final Bitmap f60821b;

    /* renamed from: c */
    private final Uri f60822c;

    /* renamed from: d */
    private final Context f60823d;

    /* renamed from: e */
    private final float[] f60824e;

    /* renamed from: f */
    private final int f60825f;

    /* renamed from: g */
    private final int f60826g;

    /* renamed from: h */
    private final int f60827h;

    /* renamed from: i */
    private final boolean f60828i;

    /* renamed from: j */
    private final int f60829j;

    /* renamed from: k */
    private final int f60830k;

    /* renamed from: l */
    private final int f60831l;

    /* renamed from: m */
    private final int f60832m;

    /* renamed from: n */
    private final boolean f60833n;

    /* renamed from: o */
    private final boolean f60834o;

    /* renamed from: p */
    private final CropImageView.EnumC17174i f60835p;

    /* renamed from: q */
    private final Uri f60836q;

    /* renamed from: r */
    private final Bitmap.CompressFormat f60837r;

    /* renamed from: s */
    private final int f60838s;

    /* renamed from: com.theartofdev.edmodo.cropper.a$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/a$a.class */
    public static final class C17180a {

        /* renamed from: a */
        public final Bitmap f60839a;

        /* renamed from: b */
        public final Uri f60840b;

        /* renamed from: c */
        final Exception f60841c;

        /* renamed from: d */
        final boolean f60842d;

        /* renamed from: e */
        final int f60843e;

        C17180a(Bitmap bitmap, int i) {
            this.f60839a = bitmap;
            this.f60840b = null;
            this.f60841c = null;
            this.f60842d = false;
            this.f60843e = i;
        }

        C17180a(Uri uri, int i) {
            this.f60839a = null;
            this.f60840b = uri;
            this.f60841c = null;
            this.f60842d = true;
            this.f60843e = i;
        }

        C17180a(Exception exc, boolean z) {
            this.f60839a = null;
            this.f60840b = null;
            this.f60841c = exc;
            this.f60842d = z;
            this.f60843e = 1;
        }
    }

    public AsyncTaskC17179a(CropImageView cropImageView, Bitmap bitmap, float[] fArr, int i, boolean z, int i2, int i3, int i4, int i5, boolean z2, boolean z3, CropImageView.EnumC17174i enumC17174i, Uri uri, Bitmap.CompressFormat compressFormat, int i6) {
        this.f60820a = new WeakReference<>(cropImageView);
        this.f60823d = cropImageView.getContext();
        this.f60821b = bitmap;
        this.f60824e = fArr;
        this.f60822c = null;
        this.f60825f = i;
        this.f60828i = z;
        this.f60829j = i2;
        this.f60830k = i3;
        this.f60831l = i4;
        this.f60832m = i5;
        this.f60833n = z2;
        this.f60834o = z3;
        this.f60835p = enumC17174i;
        this.f60836q = uri;
        this.f60837r = compressFormat;
        this.f60838s = i6;
        this.f60826g = 0;
        this.f60827h = 0;
    }

    public AsyncTaskC17179a(CropImageView cropImageView, Uri uri, float[] fArr, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, boolean z2, boolean z3, CropImageView.EnumC17174i enumC17174i, Uri uri2, Bitmap.CompressFormat compressFormat, int i8) {
        this.f60820a = new WeakReference<>(cropImageView);
        this.f60823d = cropImageView.getContext();
        this.f60822c = uri;
        this.f60824e = fArr;
        this.f60825f = i;
        this.f60828i = z;
        this.f60829j = i4;
        this.f60830k = i5;
        this.f60826g = i2;
        this.f60827h = i3;
        this.f60831l = i6;
        this.f60832m = i7;
        this.f60833n = z2;
        this.f60834o = z3;
        this.f60835p = enumC17174i;
        this.f60836q = uri2;
        this.f60837r = compressFormat;
        this.f60838s = i8;
        this.f60821b = null;
    }

    /* renamed from: a */
    private C17180a m5783a() {
        C17183c.C17184a c17184a;
        boolean z = true;
        try {
            if (isCancelled()) {
                return null;
            }
            Uri uri = this.f60822c;
            if (uri != null) {
                c17184a = C17183c.m5772a(this.f60823d, uri, this.f60824e, this.f60825f, this.f60826g, this.f60827h, this.f60828i, this.f60829j, this.f60830k, this.f60831l, this.f60832m, this.f60833n, this.f60834o);
            } else {
                Bitmap bitmap = this.f60821b;
                if (bitmap == null) {
                    return new C17180a((Bitmap) null, 1);
                }
                c17184a = C17183c.m5765a(bitmap, this.f60824e, this.f60825f, this.f60828i, this.f60829j, this.f60830k, this.f60833n, this.f60834o);
            }
            Bitmap m5769a = C17183c.m5769a(c17184a.f60861a, this.f60831l, this.f60832m, this.f60835p);
            Uri uri2 = this.f60836q;
            if (uri2 == null) {
                return new C17180a(m5769a, c17184a.f60862b);
            }
            C17183c.m5775a(this.f60823d, m5769a, uri2, this.f60837r, this.f60838s);
            if (m5769a != null) {
                m5769a.recycle();
            }
            return new C17180a(this.f60836q, c17184a.f60862b);
        } catch (Exception e) {
            if (this.f60836q == null) {
                z = false;
            }
            return new C17180a(e, z);
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ C17180a doInBackground(Void[] voidArr) {
        return m5783a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(C17180a c17180a) {
        CropImageView cropImageView;
        C17180a c17180a2 = c17180a;
        if (c17180a2 != null) {
            boolean z = false;
            if (!isCancelled() && (cropImageView = this.f60820a.get()) != null) {
                cropImageView.f60771j = null;
                cropImageView.m5801d();
                CropImageView.AbstractC17169d abstractC17169d = cropImageView.f60768g;
                if (abstractC17169d != null) {
                    abstractC17169d.mo5797a(new CropImageView.C17166a(cropImageView.f60762a, cropImageView.f60769h, c17180a2.f60839a, c17180a2.f60840b, c17180a2.f60841c, cropImageView.m5802c(), cropImageView.m5804b(), cropImageView.m5815a(), cropImageView.f60764c, c17180a2.f60843e));
                }
                z = true;
            }
            if (z || c17180a2.f60839a == null) {
                return;
            }
            c17180a2.f60839a.recycle();
        }
    }
}
