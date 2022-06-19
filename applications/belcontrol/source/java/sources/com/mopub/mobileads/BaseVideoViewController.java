package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    public final Context f4641a;

    /* renamed from: b */
    public final RelativeLayout f4642b;

    /* renamed from: c */
    public final BaseVideoViewControllerListener f4643c;

    /* renamed from: d */
    public Long f4644d;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);
    }

    public BaseVideoViewController(Context context, Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f4641a = context;
        this.f4644d = l;
        this.f4643c = baseVideoViewControllerListener;
        this.f4642b = new RelativeLayout(context);
    }

    /* renamed from: a */
    public void m3703a(String str) {
        Long l = this.f4644d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f4641a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: b */
    public BaseVideoViewControllerListener m3702b() {
        return this.f4643c;
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public Context m3701c() {
        return this.f4641a;
    }

    /* renamed from: d */
    public abstract View mo3399d();

    /* renamed from: e */
    public void mo3543e(int i, int i2, Intent intent) {
    }

    /* renamed from: f */
    public abstract void mo3398f();

    /* renamed from: g */
    public abstract void mo3397g(Configuration configuration);

    public ViewGroup getLayout() {
        return this.f4642b;
    }

    /* renamed from: h */
    public void mo3396h() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f4642b.addView(mo3399d(), 0, layoutParams);
        this.f4643c.onSetContentView(this.f4642b);
    }

    /* renamed from: i */
    public abstract void mo3395i();

    /* renamed from: j */
    public abstract void mo3394j();

    /* renamed from: k */
    public abstract void mo3393k();

    /* renamed from: l */
    public abstract void mo3392l(Bundle bundle);

    /* renamed from: m */
    public void m3700m(boolean z) {
        if (z) {
            this.f4643c.onFinish();
        }
    }

    /* renamed from: n */
    public void m3699n(boolean z) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Video cannot be played.");
        m3703a(IntentActions.ACTION_FULLSCREEN_FAIL);
        if (z) {
            this.f4643c.onFinish();
        }
    }
}
