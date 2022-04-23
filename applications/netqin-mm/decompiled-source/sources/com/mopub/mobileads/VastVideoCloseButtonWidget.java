package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a */
    public TextView f34271a;

    /* renamed from: b */
    public ImageView f34272b;

    /* renamed from: c */
    public final ImageLoader f34273c;

    /* renamed from: d */
    public CloseButtonDrawable f34274d = new CloseButtonDrawable();

    /* renamed from: e */
    public final int f34275e;

    /* renamed from: f */
    public final int f34276f;

    /* renamed from: g */
    public final int f34277g;

    /* renamed from: h */
    public final int f34278h;

    /* renamed from: com.mopub.mobileads.VastVideoCloseButtonWidget$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget$a.class */
    public class C8818a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ String f34279a;

        public C8818a(String str) {
            this.f34279a = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load image.", volleyError);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap = imageContainer.getBitmap();
            if (bitmap != null) {
                VastVideoCloseButtonWidget.this.f34272b.setImageBitmap(bitmap);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", this.f34279a));
            }
        }
    }

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        this.f34275e = Dips.dipsToIntPixels(6.0f, context);
        this.f34277g = Dips.dipsToIntPixels(15.0f, context);
        this.f34278h = Dips.dipsToIntPixels(56.0f, context);
        this.f34276f = Dips.dipsToIntPixels(0.0f, context);
        this.f34273c = Networking.getImageLoader(context);
        m4257a();
        m4254b();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.f34278h);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final void m4257a() {
        ImageView imageView = new ImageView(getContext());
        this.f34272b = imageView;
        imageView.setId(View.generateViewId());
        int i = this.f34278h;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        this.f34272b.setImageDrawable(this.f34274d);
        ImageView imageView2 = this.f34272b;
        int i2 = this.f34277g;
        int i3 = this.f34275e;
        imageView2.setPadding(i2, i2 + i3, i3 + i2, i2);
        addView(this.f34272b, layoutParams);
    }

    /* renamed from: a */
    public void m4255a(String str) {
        this.f34273c.get(str, new C8818a(str));
    }

    /* renamed from: b */
    public final void m4254b() {
        TextView textView = new TextView(getContext());
        this.f34271a = textView;
        textView.setSingleLine();
        this.f34271a.setEllipsize(TextUtils.TruncateAt.END);
        this.f34271a.setTextColor(-1);
        this.f34271a.setTextSize(20.0f);
        this.f34271a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f34271a.setText("");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, this.f34272b.getId());
        this.f34271a.setPadding(0, this.f34275e, 0, 0);
        layoutParams.setMargins(0, 0, this.f34276f, 0);
        addView(this.f34271a, layoutParams);
    }

    /* renamed from: b */
    public void m4253b(String str) {
        TextView textView = this.f34271a;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Deprecated
    @VisibleForTesting
    public ImageView getImageView() {
        return this.f34272b;
    }

    @Deprecated
    @VisibleForTesting
    public TextView getTextView() {
        return this.f34271a;
    }

    @Deprecated
    @VisibleForTesting
    public void setImageView(ImageView imageView) {
        this.f34272b = imageView;
    }

    public void setOnTouchListenerToContent(View.OnTouchListener onTouchListener) {
        this.f34272b.setOnTouchListener(onTouchListener);
        this.f34271a.setOnTouchListener(onTouchListener);
    }
}
