package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    Bitmap f34866a;

    /* renamed from: b  reason: collision with root package name */
    private String f34867b;

    /* renamed from: c  reason: collision with root package name */
    private int f34868c;

    /* renamed from: d  reason: collision with root package name */
    private int f34869d;
    private Bitmap e;
    private ImageLoader f;
    private ImageLoader.ImageContainer g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$1.class */
    public final class AnonymousClass1 implements ImageLoader.ImageListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f34870a;

        AnonymousClass1(boolean z) {
            this.f34870a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f34869d != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f34869d);
            } else if (NetworkImageView.this.e != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.e);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public final void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f34870a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.mopub.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
            } else if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f34868c != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f34868c);
            } else if (NetworkImageView.this.f34866a != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f34866a);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a() {
        int i = this.f34868c;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f34866a;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.NetworkImageView.a(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.g;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f34868c = 0;
        this.f34866a = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f34866a = null;
        this.f34868c = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f34869d = 0;
        this.e = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.e = null;
        this.f34869d = i;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        a.a();
        this.f34867b = str;
        this.f = imageLoader;
        a(false);
    }
}
