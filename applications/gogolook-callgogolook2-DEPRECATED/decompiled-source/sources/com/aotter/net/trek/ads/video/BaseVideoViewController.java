package com.aotter.net.trek.ads.video;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/BaseVideoViewController.class */
public abstract class BaseVideoViewController {

    /* renamed from: a */
    public final Context f1224a;

    /* renamed from: b */
    public final RelativeLayout f1225b;

    /* renamed from: c */
    public final BaseVideoViewControllerListener f1226c;
    @Nullable

    /* renamed from: d */
    public Long f1227d;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/BaseVideoViewController$BaseVideoViewControllerListener.class */
    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);
    }

    public BaseVideoViewController(Context context, @Nullable Long l, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        this.f1224a = context;
        this.f1227d = l;
        this.f1226c = baseVideoViewControllerListener;
        this.f1225b = new RelativeLayout(this.f1224a);
    }

    /* renamed from: a */
    public void mo36524a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.f1225b.addView(mo36517b(), 0, layoutParams);
        this.f1225b.setBackgroundColor(-16777216);
        this.f1226c.onSetContentView(this.f1225b);
    }

    /* renamed from: a */
    public void m36531a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public abstract void mo36522a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo36521a(@NonNull Bundle bundle);

    /* renamed from: a */
    public void m36530a(String str) {
        if (this.f1227d == null) {
            TrekLog.m36311w("Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }

    /* renamed from: a */
    public void m36529a(boolean z) {
        TrekLog.m36317e("Video cannot be played.");
        if (z) {
            this.f1226c.onFinish();
        }
    }

    /* renamed from: b */
    public abstract VideoView mo36517b();

    /* renamed from: b */
    public void m36528b(boolean z) {
        if (z) {
            this.f1226c.onFinish();
        }
    }

    public boolean backButtonEnabled() {
        return true;
    }

    /* renamed from: c */
    public abstract void mo36515c();

    /* renamed from: d */
    public abstract void mo36513d();

    /* renamed from: e */
    public abstract void mo36511e();

    /* renamed from: f */
    public abstract void mo36509f();

    /* renamed from: g */
    public BaseVideoViewControllerListener m36527g() {
        return this.f1226c;
    }

    public ViewGroup getLayout() {
        return this.f1225b;
    }

    /* renamed from: h */
    public Context m36526h() {
        return this.f1224a;
    }
}
