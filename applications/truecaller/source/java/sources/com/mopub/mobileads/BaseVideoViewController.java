package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    public final Context f8780a;

    /* renamed from: b */
    public final RelativeLayout f8781b;

    /* renamed from: c */
    public final BaseVideoViewControllerListener f8782c;

    /* renamed from: d */
    public Long f8783d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onCompanionAdsReady(Set<VastCompanionAdConfig> set, int i);

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);

        void onVideoFinish(int i);
    }

    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f8780a = context;
        this.f8783d = l;
        this.f8782c = baseVideoViewControllerListener;
        this.f8781b = new RelativeLayout(context);
    }

    /* renamed from: a */
    public void m36251a(String str) {
        Long l = this.f8783d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f8780a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: b */
    public void m36250b(int i, int i2, Intent intent) {
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public void m36249c() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f8781b.addView((View) ((VastVideoViewController) this).e, 0, (ViewGroup.LayoutParams) layoutParams);
        this.f8782c.onSetContentView(this.f8781b);
    }

    /* renamed from: d */
    public abstract void m36248d();

    /* renamed from: e */
    public abstract void m36247e();

    /* renamed from: f */
    public abstract void m36246f();

    public ViewGroup getLayout() {
        return this.f8781b;
    }
}
