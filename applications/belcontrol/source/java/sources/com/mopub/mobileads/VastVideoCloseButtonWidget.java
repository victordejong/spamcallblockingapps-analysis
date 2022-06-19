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
import com.mopub.mobileads.base.C1128R;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a */
    public TextView f4863a;

    /* renamed from: b */
    public ImageView f4864b;

    /* renamed from: c */
    public final ImageLoader f4865c;

    /* renamed from: d */
    public boolean f4866d;

    /* renamed from: f */
    public final int f4867f;

    /* renamed from: g */
    public final int f4868g;

    /* renamed from: h */
    public final int f4869h;

    /* renamed from: j */
    public final int f4870j;

    /* renamed from: com.mopub.mobileads.VastVideoCloseButtonWidget$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget$a.class */
    public class C1107a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ String f4871a;

        public C1107a(String str) {
            VastVideoCloseButtonWidget.this = r4;
            this.f4871a = str;
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load image.", volleyError);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap = imageContainer.getBitmap();
            if (bitmap == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", this.f4871a));
                return;
            }
            VastVideoCloseButtonWidget.this.f4864b.setImageBitmap(bitmap);
            VastVideoCloseButtonWidget.this.f4866d = true;
        }
    }

    public VastVideoCloseButtonWidget(Context context) {
        super(context);
        setId(View.generateViewId());
        this.f4867f = Dips.dipsToIntPixels(6.0f, context);
        this.f4869h = Dips.dipsToIntPixels(5.0f, context);
        int dipsToIntPixels = Dips.dipsToIntPixels(50.0f, context);
        this.f4870j = dipsToIntPixels;
        this.f4868g = Dips.dipsToIntPixels(0.0f, context);
        this.f4865c = Networking.getImageLoader(context);
        m3562c();
        m3561d();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, dipsToIntPixels);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    public final void m3562c() {
        ImageView imageView = new ImageView(getContext());
        this.f4864b = imageView;
        imageView.setId(View.generateViewId());
        int i = this.f4870j;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        this.f4864b.setImageDrawable(g8.f(getContext(), C1128R.C1129drawable.ic_mopub_skip_button));
        ImageView imageView2 = this.f4864b;
        int i2 = this.f4869h;
        int i3 = this.f4867f;
        imageView2.setPadding(i2, i2 + i3, i3 + i2, i2);
        addView(this.f4864b, layoutParams);
    }

    /* renamed from: d */
    public final void m3561d() {
        TextView textView = new TextView(getContext());
        this.f4863a = textView;
        textView.setSingleLine();
        this.f4863a.setEllipsize(TextUtils.TruncateAt.END);
        this.f4863a.setTextColor(-1);
        this.f4863a.setTextSize(20.0f);
        this.f4863a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f4863a.setText("");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, this.f4864b.getId());
        this.f4863a.setPadding(0, this.f4867f, 0, 0);
        layoutParams.setMargins(0, 0, this.f4868g, 0);
        addView(this.f4863a, layoutParams);
    }

    /* renamed from: e */
    public void m3560e() {
        if (!this.f4866d) {
            this.f4864b.setImageDrawable(g8.f(getContext(), C1128R.C1129drawable.ic_mopub_close_button));
        }
    }

    /* renamed from: f */
    public void m3559f(String str) {
        this.f4865c.get(str, new C1107a(str));
    }

    /* renamed from: g */
    public void m3558g(String str) {
        TextView textView = this.f4863a;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Deprecated
    @VisibleForTesting
    public ImageView getImageView() {
        return this.f4864b;
    }

    @Deprecated
    @VisibleForTesting
    public TextView getTextView() {
        return this.f4863a;
    }

    @Deprecated
    @VisibleForTesting
    public void setImageView(ImageView imageView) {
        this.f4864b = imageView;
    }

    public void setOnTouchListenerToContent(View.OnTouchListener onTouchListener) {
        this.f4864b.setOnTouchListener(onTouchListener);
        this.f4863a.setOnTouchListener(onTouchListener);
    }
}
