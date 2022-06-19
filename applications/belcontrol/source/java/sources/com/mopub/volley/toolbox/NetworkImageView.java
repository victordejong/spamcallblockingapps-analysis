package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    public String f5574a;

    /* renamed from: b */
    public int f5575b;

    /* renamed from: c */
    public Bitmap f5576c;

    /* renamed from: d */
    public int f5577d;

    /* renamed from: f */
    public Bitmap f5578f;

    /* renamed from: g */
    public ImageLoader f5579g;

    /* renamed from: h */
    public ImageLoader.ImageContainer f5580h;

    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a.class */
    public class C1244a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f5581a;

        /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a$a.class */
        public class RunnableC1245a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ImageLoader.ImageContainer f5583a;

            public RunnableC1245a(ImageLoader.ImageContainer imageContainer) {
                C1244a.this = r4;
                this.f5583a = imageContainer;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1244a.this.onResponse(this.f5583a, false);
            }
        }

        public C1244a(boolean z) {
            NetworkImageView.this = r4;
            this.f5581a = z;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f5577d != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f5577d);
            } else if (NetworkImageView.this.f5578f == null) {
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f5578f);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f5581a) {
                NetworkImageView.this.post(new RunnableC1245a(imageContainer));
            } else if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f5575b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f5575b);
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                Bitmap bitmap = networkImageView2.f5576c;
                if (bitmap == null) {
                    return;
                }
                networkImageView2.setImageBitmap(bitmap);
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

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3091d(boolean r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.NetworkImageView.m3091d(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    /* renamed from: e */
    public final void m3090e() {
        int i = this.f5575b;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f5576c;
        if (bitmap == null) {
            bitmap = null;
        }
        setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f5580h;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f5580h = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m3091d(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f5575b = 0;
        this.f5576c = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f5576c = null;
        this.f5575b = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f5577d = 0;
        this.f5578f = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.f5578f = null;
        this.f5577d = i;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        gi1.m1659a();
        this.f5574a = str;
        this.f5579g = imageLoader;
        m3091d(false);
    }
}
