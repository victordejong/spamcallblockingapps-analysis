package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Utils;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseVideoPlayerActivity.class */
public class BaseVideoPlayerActivity extends Activity {
    public static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    public static final String VIDEO_URL = "video_url";

    /* renamed from: a */
    public static Intent m3704a(Context context, String str) {
        Intent intent = new Intent(context, MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, "mraid");
        intent.putExtra(VIDEO_URL, str);
        return intent;
    }

    public static Intent createIntentNativeVideo(Context context, long j, VastVideoConfig vastVideoConfig) {
        Intent intent = new Intent(context, MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, "native");
        intent.putExtra(Constants.NATIVE_VIDEO_ID, j);
        intent.putExtra(Constants.NATIVE_VAST_VIDEO_CONFIG, vastVideoConfig);
        return intent;
    }

    public static void startMraid(Context context, String str) {
        try {
            context.startActivity(m3704a(context, str));
        } catch (ActivityNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    public static void startNativeVideo(Context context, long j, VastVideoConfig vastVideoConfig) {
        try {
            context.startActivity(createIntentNativeVideo(context, j, vastVideoConfig));
        } catch (ActivityNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
