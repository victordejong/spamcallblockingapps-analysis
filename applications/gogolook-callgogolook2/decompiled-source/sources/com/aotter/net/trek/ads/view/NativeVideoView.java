package com.aotter.net.trek.ads.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.TKAdN;
import com.aotter.net.trek.ads.impression.ImpressionInterface;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoSession;
import com.aotter.net.trek.network.ImageHelper;
import com.aotter.net.trek.util.TrekLog;
import java.io.File;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/NativeVideoView.class */
public class NativeVideoView extends RelativeLayout {
    @NonNull

    /* renamed from: a */
    public WeakReference<View> f1278a;
    @Nullable

    /* renamed from: b */
    public ViewTreeObserver.OnPreDrawListener f1279b;

    /* renamed from: d */
    public TextureVideoView f1281d;

    /* renamed from: e */
    public ImageView f1282e;

    /* renamed from: f */
    public Context f1283f;

    /* renamed from: g */
    public Activity f1284g;

    /* renamed from: j */
    public int f1287j;
    @NonNull

    /* renamed from: o */
    public NativeAd f1292o;
    @NonNull

    /* renamed from: p */
    public String f1293p;
    @NonNull

    /* renamed from: q */
    public ImpressionInterface f1294q;

    /* renamed from: r */
    public AdListener f1295r;

    /* renamed from: i */
    public final Rect f1286i = new Rect();

    /* renamed from: k */
    public boolean f1288k = false;

    /* renamed from: l */
    public int f1289l = 0;

    /* renamed from: m */
    public Gson f1290m = new Gson();
    @NonNull

    /* renamed from: n */
    public VideoSession f1291n = new VideoSession();

    /* renamed from: c */
    public View.OnClickListener f1280c = new View$OnClickListenerC1699j(this);

    /* renamed from: h */
    public View f1285h = this;

    public NativeVideoView(Context context) {
        super(context);
        this.f1283f = context;
        setWillNotDraw(false);
        m36481a();
    }

    public NativeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1283f = context;
        setWillNotDraw(false);
        m36481a();
    }

    public NativeVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1283f = context;
        setWillNotDraw(false);
        m36481a();
    }

    /* renamed from: a */
    private void m36481a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(layoutParams);
        this.f1281d = new TextureVideoView(getContext());
        this.f1281d.setLayoutParams(layoutParams);
        addView(this.f1281d);
        this.f1282e = new ImageView(getContext());
        this.f1282e.setLayoutParams(layoutParams);
        addView(this.f1282e);
        this.f1291n.setIsFullScreen(false);
        this.f1291n.setIsMute(true);
        this.f1281d.setOnClickListener(this.f1280c);
        this.f1281d.setOnPlayerStateChangeListener(new C1700k(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36480a(View view, View view2) {
        if (view2 != null && view2.getVisibility() == 0 && view.getParent() != null) {
            Rect rect = new Rect();
            view2.getHitRect(rect);
            if (!view2.getLocalVisibleRect(rect)) {
                this.f1281d.pause();
            }
            if (view2.getGlobalVisibleRect(this.f1286i)) {
                this.f1286i.height();
                this.f1286i.width();
                view2.getHeight();
                view2.getWidth();
                if (this.f1286i.height() < view2.getHeight() / 2) {
                    this.f1281d.pause();
                    this.f1287j = this.f1286i.height();
                    return;
                }
                this.f1281d.start();
                if ((this.f1286i.height() - this.f1287j > this.f1286i.height() || this.f1286i.height() - this.f1287j <= view2.getHeight() / 2) && !this.f1288k && this.f1281d.getCurrentPosition() > this.f1292o.getImpSetting().getImpRefreshMillis().longValue()) {
                    this.f1294q.recordImpression(this.f1283f, this.f1292o, null);
                    this.f1288k = true;
                }
            }
        }
    }

    /* renamed from: a */
    private void m36479a(ViewTreeObserver viewTreeObserver) {
        if (!viewTreeObserver.isAlive()) {
            TrekLog.m36311w("VideoView Visibility Tracker was unable to track views because the root view tree observer was not alive");
            return;
        }
        this.f1279b = new ViewTreeObserver$OnPreDrawListenerC1698i(this);
        viewTreeObserver.addOnPreDrawListener(this.f1279b);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View.OnClickListener onClickListener;
        if (keyEvent.getAction() == 1 && ((keyEvent.getKeyCode() == 23 || keyEvent.getKeyCode() == 66) && (onClickListener = this.f1280c) != null)) {
            onClickListener.onClick(this);
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnClickListener onClickListener;
        if (motionEvent.getAction() == 0) {
            setPressed(true);
        } else {
            if (motionEvent.getAction() == 1 && (onClickListener = this.f1280c) != null) {
                onClickListener.onClick(this);
            }
            setPressed(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        try {
            ViewGroup.LayoutParams layoutParams = this.f1281d.getLayoutParams();
            layoutParams.height = (getMeasuredWidth() / 16) * 9;
            this.f1281d.setLayoutParams(layoutParams);
            this.f1291n.setPlayerHeight(layoutParams.height);
            this.f1291n.setPlayerWidth(getMeasuredWidth());
            ViewGroup.LayoutParams layoutParams2 = this.f1282e.getLayoutParams();
            layoutParams2.height = (getMeasuredWidth() / 16) * 9;
            this.f1282e.setLayoutParams(layoutParams2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setActivity(Activity activity) {
        this.f1284g = activity;
        View decorView = this.f1284g.getWindow().getDecorView();
        this.f1278a = new WeakReference<>(decorView);
        m36479a(decorView.getViewTreeObserver());
    }

    public void setAdapter(AdListener adListener) {
        this.f1295r = adListener;
    }

    public void setVideoSrc(@NonNull NativeAd nativeAd, TKAdN tKAdN) {
        int i;
        ImageView imageView;
        this.f1292o = nativeAd;
        this.f1294q = tKAdN;
        this.f1293p = CacheService.getFilePathDiskCache(nativeAd.getSrc().getVideoId());
        if (new File(this.f1293p).exists()) {
            ViewGroup.LayoutParams layoutParams = this.f1281d.getLayoutParams();
            ViewTreeObserver viewTreeObserver = this.f1281d.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC1701l(this, layoutParams, viewTreeObserver));
            }
            this.f1281d.setVideoPath(this.f1293p);
            imageView = this.f1282e;
            i = 8;
        } else {
            imageView = this.f1282e;
            i = 0;
        }
        imageView.setVisibility(i);
        this.f1281d.setOnPreparedListener(new C1702m(this));
        this.f1281d.setOnCompletionListener(new C1703n(this));
        ImageHelper.loadImageView(this.f1292o.getAdImg_main(), this.f1282e);
    }
}
