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

    /* renamed from: a  reason: collision with root package name */
    final Context f34046a;

    /* renamed from: b  reason: collision with root package name */
    final BaseVideoViewControllerListener f34047b;

    /* renamed from: c  reason: collision with root package name */
    private final RelativeLayout f34048c;

    /* renamed from: d  reason: collision with root package name */
    private Long f34049d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onCompanionAdsReady(Set<VastCompanionAdConfig> set, int i);

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);

        void onVideoFinish(int i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f34046a = context;
        this.f34049d = l;
        this.f34047b = baseVideoViewControllerListener;
        this.f34048c = new RelativeLayout(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f34048c.addView(b(), 0, layoutParams);
        this.f34047b.onSetContentView(this.f34048c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        Long l = this.f34049d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f34046a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    protected abstract View b();

    public boolean backButtonEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void e();

    public ViewGroup getLayout() {
        return this.f34048c;
    }
}
