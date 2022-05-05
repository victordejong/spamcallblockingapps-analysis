package com.aotter.net.trek.ads.video;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.interfaces.InstreamVideoListener;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/BaseVideoPlayerActivity.class */
public class BaseVideoPlayerActivity extends Activity {
    public static final String ACTION_TEXT = "action_text";
    public static final String AD_CLICK_URL = "ad_ClickUrl";
    public static final String AD_DEV = "ad_dev";
    public static final String AD_SESSION = "url_Session";
    public static final String AD_URL = "ad_url";
    public static int CLOSE_BUTTON_DELAY_TIME = 0;
    public static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    public static final String VIDEO_URL = "video_url";
    public static AdListener mAdListener;
    public static InstreamVideoListener mInstreamVideoListener;

    /* renamed from: a */
    public static Intent m36532a(Context context, NativeAd nativeAd, String str, String str2, String str3, String str4, String str5) {
        Intent intent = new Intent(context, NativeVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("video_view_class_name", "nativeVideo");
        intent.putExtra("video_url", str);
        intent.putExtra(ACTION_TEXT, str2);
        intent.putExtra(AD_URL, str3);
        intent.putExtra(AD_CLICK_URL, str4);
        intent.putExtra(AD_SESSION, str5);
        intent.putExtra(AD_DEV, nativeAd);
        return intent;
    }

    public static void startNativeVideo(Context context, NativeAd nativeAd, String str, String str2, String str3, String str4, String str5, AdListener adListener) {
        Intent a = m36532a(context, nativeAd, str, str2, str3, str4, str5);
        mAdListener = adListener;
        try {
            context.startActivity(a);
        } catch (ActivityNotFoundException e) {
            TrekLog.m36319d("Activity NativeVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    public static void startNativeVideo(Context context, NativeAd nativeAd, String str, String str2, String str3, String str4, String str5, InstreamVideoListener instreamVideoListener, int i) {
        Intent a = m36532a(context, nativeAd, str, str2, str3, str4, str5);
        mInstreamVideoListener = instreamVideoListener;
        CLOSE_BUTTON_DELAY_TIME = i;
        try {
            context.startActivity(a);
        } catch (ActivityNotFoundException e) {
            TrekLog.m36319d("Activity NativeVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AudioManager audioManager = (AudioManager) getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
        }
    }
}
