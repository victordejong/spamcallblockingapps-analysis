package com.telguarder.features.intro;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.VideoView;
import androidx.appcompat.app.AppCompatActivity;
import com.telguarder.C2083R;
import com.telguarder.features.main.MainActivity;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/intro/IntroSplashActivity.class */
public class IntroSplashActivity extends AppCompatActivity {
    private static boolean splashLoaded = false;

    private void startNextActivity(boolean z) {
        if (isFinishing()) {
            return;
        }
        if (!PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            IntroActivity.openIntroActivity(this);
        } else {
            MainActivity.openMainActivity(this, z);
        }
        finish();
    }

    public /* synthetic */ void lambda$onResume$0$IntroSplashActivity(MediaPlayer mediaPlayer) {
        startNextActivity(false);
    }

    public /* synthetic */ boolean lambda$onResume$1$IntroSplashActivity(MediaPlayer mediaPlayer, int i, int i2) {
        startNextActivity(false);
        return true;
    }

    public /* synthetic */ void lambda$onResume$2$IntroSplashActivity(MediaPlayer mediaPlayer) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaPlayer.setPlaybackParams(mediaPlayer.getPlaybackParams().setSpeed(1.8f));
            }
            mediaPlayer.start();
        } catch (Exception e) {
            startNextActivity(false);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2083R.layout.activity_splash);
        getWindow().setFlags(512, 512);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        try {
            super.onResume();
            if (splashLoaded) {
                startNextActivity(true);
                return;
            }
            VideoView videoView = (VideoView) findViewById(C2083R.C2086id.videoView);
            if (Build.VERSION.SDK_INT >= 26) {
                videoView.setAudioFocusRequest(0);
            }
            videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + C2083R.raw.splash));
            videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.telguarder.features.intro._$$Lambda$IntroSplashActivity$AOnfOyBJpAWwTk8qIAelL1Cques
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    IntroSplashActivity.this.lambda$onResume$0$IntroSplashActivity(mediaPlayer);
                }
            });
            videoView.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.telguarder.features.intro._$$Lambda$IntroSplashActivity$Y7AzPS1EIjqHblLaSUSnhCFd9_o
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                    return IntroSplashActivity.this.lambda$onResume$1$IntroSplashActivity(mediaPlayer, i, i2);
                }
            });
            videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.telguarder.features.intro._$$Lambda$IntroSplashActivity$kM2ZIRbdOVTf3XlaygW63Hy5U_k
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer) {
                    IntroSplashActivity.this.lambda$onResume$2$IntroSplashActivity(mediaPlayer);
                }
            });
            splashLoaded = true;
        } catch (Exception e) {
            startNextActivity(false);
        }
    }
}
