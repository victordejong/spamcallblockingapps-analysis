package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    public final Context f8428a;

    /* renamed from: b */
    public final RelativeLayout f8429b;
    @NonNull

    /* renamed from: c */
    public final BaseVideoViewControllerListener f8430c;
    @Nullable

    /* renamed from: d */
    public Long f8431d;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);
    }

    public BaseVideoViewController(Context context, @Nullable Long l, @NonNull BaseVideoViewControllerListener baseVideoViewControllerListener) {
        Preconditions.checkNotNull(baseVideoViewControllerListener);
        this.f8428a = context;
        this.f8431d = l;
        this.f8430c = baseVideoViewControllerListener;
        this.f8429b = new RelativeLayout(this.f8428a);
    }

    @NonNull
    /* renamed from: a */
    public BaseVideoViewControllerListener m30573a() {
        return this.f8430c;
    }

    /* renamed from: a */
    public void mo30393a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public abstract void mo30245a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo30244a(@NonNull Bundle bundle);

    /* renamed from: a */
    public void m30572a(String str) {
        Long l = this.f8431d;
        if (l != null) {
            BaseBroadcastReceiver.broadcastAction(this.f8428a, l.longValue(), str);
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: a */
    public void m30571a(boolean z) {
        if (z) {
            this.f8430c.onFinish();
        }
    }

    /* renamed from: b */
    public Context m30570b() {
        return this.f8428a;
    }

    /* renamed from: b */
    public void m30569b(boolean z) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Video cannot be played.");
        m30572a(IntentActions.ACTION_INTERSTITIAL_FAIL);
        if (z) {
            this.f8430c.onFinish();
        }
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo30239c();

    /* renamed from: d */
    public abstract void mo30238d();

    /* renamed from: e */
    public void mo30237e() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f8429b.addView(mo30239c(), 0, layoutParams);
        this.f8430c.onSetContentView(this.f8429b);
    }

    /* renamed from: f */
    public abstract void mo30236f();

    /* renamed from: g */
    public abstract void mo30235g();

    public ViewGroup getLayout() {
        return this.f8429b;
    }

    /* renamed from: h */
    public abstract void mo30234h();
}
