package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    final Context f59125a;

    /* renamed from: b */
    final BaseVideoViewControllerListener f59126b;

    /* renamed from: c */
    private final RelativeLayout f59127c;

    /* renamed from: d */
    private Long f59128d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onCompanionAdsReady(Set<VastCompanionAdConfig> set, int i);

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);

        void onVideoFinish(int i);
    }

    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f59125a = context;
        this.f59128d = l;
        this.f59126b = baseVideoViewControllerListener;
        this.f59127c = new RelativeLayout(context);
    }

    /* renamed from: a */
    public void mo6393a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f59127c.addView(mo6391b(), 0, layoutParams);
        this.f59126b.onSetContentView(this.f59127c);
    }

    /* renamed from: a */
    public void mo6392a(int i, int i2) {
    }

    /* renamed from: a */
    public final void m6552a(String str) {
        Long l = this.f59128d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f59125a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: b */
    protected abstract View mo6391b();

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public abstract void mo6390c();

    /* renamed from: d */
    public abstract void mo6389d();

    /* renamed from: e */
    public abstract void mo6388e();

    public ViewGroup getLayout() {
        return this.f59127c;
    }
}
