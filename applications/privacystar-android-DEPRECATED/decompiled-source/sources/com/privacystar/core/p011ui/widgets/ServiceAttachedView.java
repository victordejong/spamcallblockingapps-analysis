package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.ServiceAttachedView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ServiceAttachedView.class */
public class ServiceAttachedView extends RelativeLayout {
    protected boolean attached = false;

    public ServiceAttachedView(Context context) {
        super(context);
    }

    public boolean getAttached() {
        boolean z;
        synchronized (this) {
            z = this.attached;
        }
        return z;
    }

    public int getWindowType() {
        return Build.VERSION.SDK_INT >= 23 ? 2005 : 2002;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        setAttached(true);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        setAttached(false);
        super.onDetachedFromWindow();
    }

    public void removeFromWindowManager() {
        synchronized (this) {
            if (getAttached()) {
                try {
                    ((WindowManager) getContext().getSystemService("window")).removeView(this);
                } catch (IllegalArgumentException e) {
                    Timber.m32e(e, "IllegalArgumentException when removing window: %s", e.getMessage());
                } catch (Exception e2) {
                    Timber.m32e(e2, "Exception when removing window: %s", e2.getMessage());
                }
            }
        }
    }

    public void setAttached(boolean z) {
        synchronized (this) {
            this.attached = z;
        }
    }
}
