package com.verizon.ads.vastcontroller;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTParser;
import com.verizon.ads.vastcontroller.VASTVideoView;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/AdChoicesButton.class */
public class AdChoicesButton extends InteractiveImageView implements View.OnClickListener {

    /* renamed from: j */
    private static final Logger f61767j = Logger.getInstance(AdChoicesButton.class);

    /* renamed from: a */
    int f61768a;

    /* renamed from: g */
    int f61774g;

    /* renamed from: h */
    VASTParser.Icon f61775h;

    /* renamed from: k */
    private boolean f61776k = false;

    /* renamed from: b */
    boolean f61769b = false;

    /* renamed from: c */
    boolean f61770c = false;

    /* renamed from: d */
    AdChoicesButtonState f61771d = AdChoicesButtonState.READY;

    /* renamed from: e */
    int f61772e = 0;

    /* renamed from: f */
    int f61773f = 0;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState.class */
    public enum AdChoicesButtonState {
        READY,
        SHOWING,
        SHOWN,
        COMPLETE
    }

    public AdChoicesButton(Context context) {
        super(context);
        setTag("adChoicesButton");
        setScaleType(ImageView.ScaleType.FIT_START);
        setVisibility(8);
    }

    /* renamed from: a */
    public final void m5297a() {
        this.f61771d = AdChoicesButtonState.COMPLETE;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.2
            @Override // java.lang.Runnable
            public void run() {
                AdChoicesButton.this.setVisibility(8);
            }
        });
    }

    /* renamed from: b */
    public final void m5295b() {
        this.f61769b = true;
        if (this.f61771d == AdChoicesButtonState.SHOWING) {
            this.f61771d = AdChoicesButtonState.SHOWN;
            if (this.f61776k) {
                return;
            }
            this.f61776k = true;
            TrackingEvent.fireUrls(this.f61775h.iconViewTrackingUrls, "icon view tracker");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m5292d();
        if (this.f61775h.iconClicks != null && !TextUtils.isEmpty(this.f61775h.iconClicks.clickThrough)) {
            m5291e();
            ActivityUtils.startActivityFromUrl(getContext(), this.f61775h.iconClicks.clickThrough);
        }
        if (this.f61775h.iconClicks != null) {
            TrackingEvent.fireUrls(this.f61775h.iconClicks.clickTrackingUrls, "icon click tracker");
        }
    }

    @Override // com.verizon.ads.vastcontroller.InteractiveImageView
    public /* bridge */ /* synthetic */ void setInteractionListener(VASTVideoView.InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
    }
}
