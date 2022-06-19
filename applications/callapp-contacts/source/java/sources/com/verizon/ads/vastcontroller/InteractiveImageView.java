package com.verizon.ads.vastcontroller;

import android.content.Context;
import androidx.appcompat.widget.AppCompatImageView;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTVideoView;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/InteractiveImageView.class */
public abstract class InteractiveImageView extends AppCompatImageView {

    /* renamed from: i */
    protected VASTVideoView.InteractionListener f61790i;

    public InteractiveImageView(Context context) {
        super(context);
    }

    /* renamed from: d */
    public final void m5292d() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.InteractiveImageView.1
            @Override // java.lang.Runnable
            public void run() {
                if (InteractiveImageView.this.f61790i != null) {
                    InteractiveImageView.this.f61790i.onClicked();
                }
            }
        });
    }

    /* renamed from: e */
    public final void m5291e() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.InteractiveImageView.2
            @Override // java.lang.Runnable
            public void run() {
                if (InteractiveImageView.this.f61790i != null) {
                    InteractiveImageView.this.f61790i.onAdLeftApplication();
                }
            }
        });
    }

    public void setInteractionListener(VASTVideoView.InteractionListener interactionListener) {
        this.f61790i = interactionListener;
    }
}
