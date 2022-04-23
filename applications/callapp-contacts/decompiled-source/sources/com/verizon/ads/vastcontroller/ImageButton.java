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

    /* renamed from: a  reason: collision with root package name */
    Integer f35677a = null;

    /* renamed from: b  reason: collision with root package name */
    VASTParser.Button f35678b;

    /* renamed from: c  reason: collision with root package name */
    int f35679c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageButton(Context context, VASTParser.Button button, int i) {
        super(context);
        this.f35678b = button;
        this.f35679c = i;
        if (a() > 0) {
            setVisibility(4);
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.ImageButton.2
            @Override // java.lang.Runnable
            public void run() {
                final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(ImageButton.this.f35678b.staticResource.uri);
                if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200) {
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.ImageButton.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ImageButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                        }
                    });
                }
            }
        });
        setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        if (this.f35677a == null) {
            this.f35677a = Integer.valueOf(VASTVideoView.a(this.f35678b.offset, this.f35679c, -1));
        }
        return this.f35677a.intValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        d();
        VASTParser.ButtonClicks buttonClicks = this.f35678b.buttonClicks;
        if (buttonClicks != null) {
            if (!TextUtils.isEmpty(buttonClicks.clickThrough)) {
                e();
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
