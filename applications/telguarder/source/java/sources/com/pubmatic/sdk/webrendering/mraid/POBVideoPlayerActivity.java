package com.pubmatic.sdk.webrendering.mraid;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.MediaController;
import android.widget.VideoView;
import com.facebook.appevents.integrity.IntegrityManager;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.webrendering.POBUIUtil;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity.class */
public class POBVideoPlayerActivity extends Activity {
    public static final String ACTION_FINISH = "com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity.finish";
    public static final String ALLOW_ORIENTATION_KEY = "AllowOrientationChange";
    public static final String FORCE_ORIENTATION_KEY = "ForceOrientation";
    public static final String PLAYBACK_URL = "URL";

    /* renamed from: f */
    private static String f1113f = "POBVideoPlayerActivity";

    /* renamed from: a */
    private MediaController f1114a;

    /* renamed from: b */
    private VideoView f1115b;

    /* renamed from: c */
    private int f1116c;

    /* renamed from: d */
    private boolean f1117d;

    /* renamed from: e */
    private BroadcastReceiver f1118e;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$POBVideoPlayerBroadcast.class */
    protected class POBVideoPlayerBroadcast extends BroadcastReceiver {
        protected POBVideoPlayerBroadcast() {
            POBVideoPlayerActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !POBVideoPlayerActivity.ACTION_FINISH.equals(intent.getAction())) {
                return;
            }
            POBVideoPlayerActivity.this.finish();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a.class */
    public class View$OnClickListenerC2017a implements View.OnClickListener {
        View$OnClickListenerC2017a() {
            POBVideoPlayerActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBVideoPlayerActivity.this.finish();
        }
    }

    /* renamed from: com.pubmatic.sdk.webrendering.mraid.POBVideoPlayerActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$b.class */
    public class C2018b implements MediaPlayer.OnCompletionListener {
        C2018b() {
            POBVideoPlayerActivity.this = r4;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            POBVideoPlayerActivity.this.f1117d = true;
        }
    }

    /* renamed from: a */
    private View m567a(View view, int i, int i2) {
        FrameLayout frameLayout = new FrameLayout(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, 0, 0, 0);
        if (view != null) {
            frameLayout.addView(view, layoutParams);
        }
        ImageButton createCloseButton = POBUIUtil.createCloseButton(this);
        frameLayout.addView(createCloseButton);
        createCloseButton.setOnClickListener(new View$OnClickListenerC2017a());
        return frameLayout;
    }

    /* renamed from: a */
    private View m565a(String str) {
        this.f1115b = new VideoView(this);
        if (this.f1114a == null) {
            MediaController mediaController = new MediaController(this);
            this.f1114a = mediaController;
            mediaController.setMediaPlayer(this.f1115b);
        }
        this.f1115b.setMediaController(this.f1114a);
        this.f1114a.setAnchorView(this.f1115b);
        this.f1115b.setOnCompletionListener(new C2018b());
        this.f1115b.setVideoURI(Uri.parse(str));
        this.f1115b.start();
        return this.f1115b;
    }

    /* renamed from: a */
    private void m568a() {
        this.f1115b.suspend();
        this.f1115b = null;
        this.f1114a = null;
    }

    /* renamed from: b */
    private void m564b() {
        this.f1115b.pause();
        this.f1116c = this.f1115b.getCurrentPosition();
        String str = f1113f;
        PMLog.debug(str, "VideoView visibility is false. Seeked position =" + this.f1116c, new Object[0]);
    }

    /* renamed from: c */
    private void m563c() {
        if (this.f1117d) {
            PMLog.debug(f1113f, "Video Ad is completed", new Object[0]);
        } else if (!this.f1115b.isPlaying()) {
            this.f1115b.seekTo(this.f1116c);
        } else {
            String str = f1113f;
            PMLog.debug(str, "VideoView visibility is false. Seeked position =" + this.f1116c, new Object[0]);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        boolean z;
        int i;
        super.onCreate(bundle);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(PLAYBACK_URL);
        String stringExtra2 = intent.getStringExtra(FORCE_ORIENTATION_KEY);
        if (!intent.getBooleanExtra(ALLOW_ORIENTATION_KEY, true)) {
            if (stringExtra2 == null) {
                stringExtra2 = IntegrityManager.INTEGRITY_TYPE_NONE;
            }
            stringExtra2.hashCode();
            switch (stringExtra2.hashCode()) {
                case -1700437898:
                    if (stringExtra2.equals("sensor_landscape")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -31410088:
                    if (stringExtra2.equals("reverse_portrait")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 729267099:
                    if (stringExtra2.equals("portrait")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1430647483:
                    if (stringExtra2.equals("landscape")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    i = 6;
                    setRequestedOrientation(i);
                    break;
                case true:
                    i = 7;
                    setRequestedOrientation(i);
                    break;
                case true:
                    setRequestedOrientation(1);
                    break;
                case true:
                    setRequestedOrientation(0);
                    break;
            }
        }
        setContentView(m567a(m565a(stringExtra), -1, -1));
        POBVideoPlayerBroadcast pOBVideoPlayerBroadcast = new POBVideoPlayerBroadcast();
        this.f1118e = pOBVideoPlayerBroadcast;
        registerReceiver(pOBVideoPlayerBroadcast, new IntentFilter(ACTION_FINISH));
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        m568a();
        unregisterReceiver(this.f1118e);
        this.f1118e = null;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        m564b();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        m563c();
    }
}
