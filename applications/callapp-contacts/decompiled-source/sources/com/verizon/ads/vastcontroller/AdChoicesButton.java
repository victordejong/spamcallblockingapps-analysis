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
    private static final Logger j = Logger.getInstance(AdChoicesButton.class);

    /* renamed from: a  reason: collision with root package name */
    int f35667a;
    int g;
    VASTParser.Icon h;
    private boolean k = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f35668b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f35669c = false;

    /* renamed from: d  reason: collision with root package name */
    AdChoicesButtonState f35670d = AdChoicesButtonState.READY;
    int e = 0;
    int f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState.class */
    public enum AdChoicesButtonState {
        READY,
        SHOWING,
        SHOWN,
        COMPLETE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdChoicesButton(Context context) {
        super(context);
        setTag("adChoicesButton");
        setScaleType(ImageView.ScaleType.FIT_START);
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f35670d = AdChoicesButtonState.COMPLETE;
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.2
            @Override // java.lang.Runnable
            public void run() {
                AdChoicesButton.this.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        this.f35668b = true;
        if (this.f35670d == AdChoicesButtonState.SHOWING) {
            this.f35670d = AdChoicesButtonState.SHOWN;
            if (!this.k) {
                this.k = true;
                TrackingEvent.fireUrls(this.h.iconViewTrackingUrls, "icon view tracker");
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d();
        if (this.h.iconClicks != null && !TextUtils.isEmpty(this.h.iconClicks.clickThrough)) {
            e();
            ActivityUtils.startActivityFromUrl(getContext(), this.h.iconClicks.clickThrough);
        }
        if (this.h.iconClicks != null) {
            TrackingEvent.fireUrls(this.h.iconClicks.clickTrackingUrls, "icon click tracker");
        }
    }

    @Override // com.verizon.ads.vastcontroller.InteractiveImageView
    public /* bridge */ /* synthetic */ void setInteractionListener(VASTVideoView.InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
    }
}
