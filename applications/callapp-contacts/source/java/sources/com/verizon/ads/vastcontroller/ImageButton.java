package com.verizon.ads.vastcontroller;

import android.content.Context;
import android.view.View;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTParser;
import com.verizon.ads.vastcontroller.VASTVideoView;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/ImageButton.class */
public class ImageButton extends InteractiveImageView implements View.OnClickListener {

    /* renamed from: a */
    Integer f61783a = null;

    /* renamed from: b */
    VASTParser.Button f61784b;

    /* renamed from: c */
    int f61785c;

    public ImageButton(Context context, VASTParser.Button button, int i) {
        super(context);
        this.f61784b = button;
        this.f61785c = i;
        if (m5293a() > 0) {
            setVisibility(4);
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.ImageButton.2
            @Override // java.lang.Runnable
            public void run() {
                final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(ImageButton.this.f61784b.staticResource.uri);
                if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200) {
                    return;
                }
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.ImageButton.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ImageButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                    }
                });
            }
        });
        setOnClickListener(this);
    }

    /* renamed from: a */
    public final int m5293a() {
        if (this.f61783a == null) {
            this.f61783a = Integer.valueOf(VASTVideoView.m5231a(this.f61784b.offset, this.f61785c, -1));
        }
        return this.f61783a.intValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m5292d();
        VASTParser.ButtonClicks buttonClicks = this.f61784b.buttonClicks;
        if (buttonClicks != null) {
            if (!TextUtils.isEmpty(buttonClicks.clickThrough)) {
                m5291e();
                ActivityUtils.startActivityFromUrl(getContext(), buttonClicks.clickThrough);
            }
            TrackingEvent.fireUrls(buttonClicks.clickTrackingUrls, "click tracking");
        }
    }

    @Override // com.verizon.ads.vastcontroller.InteractiveImageView
    public /* bridge */ /* synthetic */ void setInteractionListener(VASTVideoView.InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
    }
}
