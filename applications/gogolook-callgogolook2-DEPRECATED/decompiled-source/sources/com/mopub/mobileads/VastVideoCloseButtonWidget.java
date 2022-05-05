package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget.class */
public class VastVideoCloseButtonWidget extends RelativeLayout {
    @NonNull

    /* renamed from: a */
    public TextView f8613a;
    @NonNull

    /* renamed from: b */
    public ImageView f8614b;
    @NonNull

    /* renamed from: c */
    public final ImageLoader f8615c;
    @NonNull

    /* renamed from: d */
    public CloseButtonDrawable f8616d = new CloseButtonDrawable();

    /* renamed from: e */
    public final int f8617e;

    /* renamed from: f */
    public final int f8618f;

    /* renamed from: g */
    public final int f8619g;

    /* renamed from: h */
    public final int f8620h;

    /* renamed from: com.mopub.mobileads.VastVideoCloseButtonWidget$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoCloseButtonWidget$a.class */
    public class C3848a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ String f8621a;

        public C3848a(String str) {
            this.f8621a = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load image.", volleyError);
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            Bitmap bitmap = imageContainer.getBitmap();
            if (bitmap != null) {
                VastVideoCloseButtonWidget.this.f8614b.setImageBitmap(bitmap);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", this.f8621a));
            }
        }
    }

    public VastVideoCloseButtonWidget(@NonNull Context context) {
        super(context);
        setId(View.generateViewId());
        this.f8617e = Dips.dipsToIntPixels(6.0f, context);
        this.f8619g = Dips.dipsToIntPixels(15.0f, context);
        this.f8620h = Dips.dipsToIntPixels(56.0f, context);
        this.f8618f = Dips.dipsToIntPixels(0.0f, context);
        this.f8615c = Networking.getImageLoader(context);
        m30468a();
        m30464b();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.f8620h);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final void m30468a() {
        this.f8614b = new ImageView(getContext());
        this.f8614b.setId(View.generateViewId());
        int i = this.f8620h;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        this.f8614b.setImageDrawable(this.f8616d);
        ImageView imageView = this.f8614b;
        int i2 = this.f8619g;
        int i3 = this.f8617e;
        imageView.setPadding(i2, i2 + i3, i3 + i2, i2);
        addView(this.f8614b, layoutParams);
    }

    /* renamed from: a */
    public void m30467a(@Nullable View.OnTouchListener onTouchListener) {
        this.f8614b.setOnTouchListener(onTouchListener);
        this.f8613a.setOnTouchListener(onTouchListener);
    }

    /* renamed from: a */
    public void m30465a(@NonNull String str) {
        this.f8615c.get(str, new C3848a(str));
    }

    /* renamed from: b */
    public final void m30464b() {
        this.f8613a = new TextView(getContext());
        this.f8613a.setSingleLine();
        this.f8613a.setEllipsize(TextUtils.TruncateAt.END);
        this.f8613a.setTextColor(-1);
        this.f8613a.setTextSize(20.0f);
        this.f8613a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f8613a.setText("");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, this.f8614b.getId());
        this.f8613a.setPadding(0, this.f8617e, 0, 0);
        layoutParams.setMargins(0, 0, this.f8618f, 0);
        addView(this.f8613a, layoutParams);
    }

    /* renamed from: b */
    public void m30463b(@Nullable String str) {
        TextView textView = this.f8613a;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
