package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    Bitmap f60459a;

    /* renamed from: b */
    private String f60460b;

    /* renamed from: c */
    private int f60461c;

    /* renamed from: d */
    private int f60462d;

    /* renamed from: e */
    private Bitmap f60463e;

    /* renamed from: f */
    private ImageLoader f60464f;

    /* renamed from: g */
    private ImageLoader.ImageContainer f60465g;

    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$1.class */
    public final class C170241 implements ImageLoader.ImageListener {

        /* renamed from: a */
        final /* synthetic */ boolean f60466a;

        C170241(boolean z) {
            NetworkImageView.this = r4;
            this.f60466a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f60462d != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f60462d);
            } else if (NetworkImageView.this.f60463e == null) {
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f60463e);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public final void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f60466a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.mopub.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C170241.this.onResponse(imageContainer, false);
                    }
                });
            } else if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f60461c != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f60461c);
            } else if (NetworkImageView.this.f60459a == null) {
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f60459a);
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

    /* renamed from: a */
    private void m5985a() {
        int i = this.f60461c;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f60459a;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m5983a(boolean r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.NetworkImageView.m5983a(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f60465g;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f60465g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m5983a(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f60461c = 0;
        this.f60459a = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f60459a = null;
        this.f60461c = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f60462d = 0;
        this.f60463e = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.f60463e = null;
        this.f60462d = i;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        C17026a.m5978a();
        this.f60460b = str;
        this.f60464f = imageLoader;
        m5983a(false);
    }
}
