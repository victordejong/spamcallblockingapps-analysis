package com.aotter.net.trek.ads.video;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.StateListDrawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.C1657R;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.ads.video.BaseVideoViewController;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.common.util.Dips;
import com.aotter.net.trek.common.util.Drawables;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.model.VideoSession;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/NativeVideoViewController.class */
public class NativeVideoViewController extends BaseVideoViewController {

    /* renamed from: a */
    public static final float f1230a = 35.0f;

    /* renamed from: b */
    public static final float f1231b = 6.0f;

    /* renamed from: c */
    public static final float f1232c = 6.0f;

    /* renamed from: d */
    public static final float f1233d = 6.0f;

    /* renamed from: e */
    public static int f1234e;

    /* renamed from: f */
    public final VideoView f1235f;

    /* renamed from: g */
    public NativeAd f1236g;

    /* renamed from: h */
    public ImageButton f1237h;

    /* renamed from: i */
    public TextView f1238i;

    /* renamed from: j */
    public TextView f1239j;

    /* renamed from: k */
    public int f1240k;

    /* renamed from: l */
    public int f1241l;

    /* renamed from: m */
    public int f1242m;

    /* renamed from: n */
    public int f1243n;

    /* renamed from: o */
    public String f1244o;

    /* renamed from: p */
    public String f1245p;

    /* renamed from: q */
    public String f1246q;

    /* renamed from: r */
    public String f1247r;

    /* renamed from: s */
    public long f1248s;

    /* renamed from: v */
    public InstreamVideoListener f1251v;

    /* renamed from: t */
    public boolean f1249t = false;

    /* renamed from: u */
    public Gson f1250u = new Gson();
    @NonNull

    /* renamed from: w */
    public VideoSession f1252w = new VideoSession();

    public NativeVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener, InstreamVideoListener instreamVideoListener, int i) {
        super(context, null, baseVideoViewControllerListener);
        this.f1251v = instreamVideoListener;
        f1234e = i;
        this.f1252w.setIsFullScreen(true);
        this.f1252w.setStart(0);
        this.f1235f = new VideoView(context);
        this.f1235f.setOnCompletionListener(new C1678a(this));
        this.f1235f.setOnErrorListener(new C1679b(this));
        this.f1235f.setOnPreparedListener(new C1680c(this));
        if (!TextUtils.isEmpty(bundle.getString("video_url"))) {
            this.f1235f.setVideoPath(bundle.getString("video_url"));
        }
        this.f1244o = bundle.getString(BaseVideoPlayerActivity.ACTION_TEXT);
        this.f1245p = bundle.getString(BaseVideoPlayerActivity.AD_URL);
        this.f1246q = bundle.getString(BaseVideoPlayerActivity.AD_CLICK_URL);
        this.f1247r = bundle.getString(BaseVideoPlayerActivity.AD_SESSION);
        try {
            this.f1236g = (NativeAd) bundle.getSerializable(BaseVideoPlayerActivity.AD_DEV);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private void m36523a(int i) {
        this.f1252w.setEnd(i);
        String json = this.f1250u.toJson(this.f1252w);
        if (i != 0) {
            MFTCApiClient.getSharedInstance(m36526h()).sendVideoSession(json, this.f1247r);
        }
    }

    /* renamed from: j */
    private void m36504j() {
        this.f1237h = new ImageButton(m36526h());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(m36526h()));
        stateListDrawable.addState(new int[]{16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(m36526h()));
        this.f1237h.setImageDrawable(stateListDrawable);
        this.f1237h.setBackgroundDrawable(null);
        this.f1237h.setOnClickListener(new View$OnClickListenerC1684g(this));
        int i = this.f1241l;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(9);
        int i2 = this.f1240k;
        layoutParams.setMargins(i2, i2, i2, 0);
        getLayout().addView(this.f1237h, layoutParams);
    }

    /* renamed from: k */
    private void m36503k() {
        this.f1238i = new TextView(m36526h());
        TextView textView = this.f1238i;
        int i = this.f1243n;
        int i2 = this.f1242m;
        textView.setPadding(i, i2, i, i2);
        this.f1238i.setText(this.f1244o);
        this.f1238i.setTextSize(16.0f);
        this.f1238i.setTextColor(-1);
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f1238i.setBackground(ContextCompat.getDrawable(m36526h(), C1657R.C1658drawable.border));
            } else {
                this.f1238i.setBackgroundResource(C1657R.C1658drawable.border);
            }
        } catch (Exception e) {
            TrekLog.m36317e(e.toString());
        }
        this.f1238i.setOnClickListener(new View$OnClickListenerC1685h(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        int i3 = this.f1240k;
        layoutParams.setMargins(i3, 0, i3, i3);
        getLayout().addView(this.f1238i, layoutParams);
    }

    /* renamed from: l */
    private void m36502l() {
        this.f1239j = new TextView(m36526h());
        this.f1239j.setTextSize(15.0f);
        this.f1239j.setTextColor(-1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        int i = this.f1240k;
        layoutParams.setMargins(i, 0, i, 0);
        getLayout().addView(this.f1239j, layoutParams);
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: a */
    public void mo36524a() {
        super.mo36524a();
        AudioManager audioManager = (AudioManager) m36526h().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f1241l = Dips.asIntPixels(35.0f, m36526h());
        this.f1240k = Dips.asIntPixels(6.0f, m36526h());
        this.f1242m = Dips.asIntPixels(6.0f, m36526h());
        this.f1243n = Dips.asIntPixels(6.0f, m36526h());
        m36504j();
        this.f1237h.setVisibility(8);
        if (!TextUtils.isEmpty(this.f1245p) && !TextUtils.isEmpty(this.f1244o)) {
            m36503k();
        }
        m36502l();
        this.f1235f.start();
        this.f1235f.setOnPreparedListener(new C1681d(this, audioManager));
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: a */
    public void mo36522a(Configuration configuration) {
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: a */
    public void mo36521a(@NonNull Bundle bundle) {
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: b */
    public VideoView mo36517b() {
        return this.f1235f;
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: c */
    public void mo36515c() {
        m36523a(this.f1235f.getCurrentPosition() / 1000);
        InstreamVideoListener instreamVideoListener = this.f1251v;
        if (instreamVideoListener != null) {
            instreamVideoListener.onInstreamVideoClosed();
        }
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: d */
    public void mo36513d() {
        this.f1235f.start();
        InstreamVideoListener instreamVideoListener = this.f1251v;
        if (instreamVideoListener != null) {
            instreamVideoListener.onInstreamVideoStarted();
        }
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: e */
    public void mo36511e() {
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController
    /* renamed from: f */
    public void mo36509f() {
        InstreamVideoListener instreamVideoListener = this.f1251v;
        if (instreamVideoListener != null) {
            instreamVideoListener.onInstreamVideoClosed();
        }
    }
}
