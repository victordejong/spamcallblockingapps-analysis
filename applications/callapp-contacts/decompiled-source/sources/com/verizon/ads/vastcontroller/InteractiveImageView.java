package com.verizon.ads.vastcontroller;

import android.content.Context;
import androidx.appcompat.widget.AppCompatImageView;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.VASTVideoView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/InteractiveImageView.class */
public abstract class InteractiveImageView extends AppCompatImageView {
    protected VASTVideoView.InteractionListener i;

    /* JADX INFO: Access modifiers changed from: protected */
    public InteractiveImageView(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.InteractiveImageView.1
            @Override // java.lang.Runnable
            public void run() {
                if (InteractiveImageView.this.i != null) {
                    InteractiveImageView.this.i.onClicked();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.InteractiveImageView.2
            @Override // java.lang.Runnable
            public void run() {
                if (InteractiveImageView.this.i != null) {
                    InteractiveImageView.this.i.onAdLeftApplication();
                }
            }
        });
    }

    public void setInteractionListener(VASTVideoView.InteractionListener interactionListener) {
        this.i = interactionListener;
    }
}
