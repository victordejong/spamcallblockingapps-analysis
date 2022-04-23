package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Utils;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseVideoPlayerActivity.class */
public class BaseVideoPlayerActivity extends Activity {
    public static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    public static final String VIDEO_URL = "video_url";

    /* renamed from: a */
    public static Intent m4422a(Context context, VastVideoConfig vastVideoConfig, long j, CreativeOrientation creativeOrientation) {
        Intent intent = new Intent(context, MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, FullAdType.VAST);
        intent.putExtra(VastVideoViewControllerTwo.VAST_VIDEO_CONFIG, vastVideoConfig);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        return intent;
    }

    /* renamed from: a */
    public static Intent m4421a(Context context, VastVideoConfigTwo vastVideoConfigTwo, long j, CreativeOrientation creativeOrientation) {
        Intent intent = new Intent(context, MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, "vast_new");
        intent.putExtra(VastVideoViewControllerTwo.VAST_VIDEO_CONFIG, vastVideoConfigTwo);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        return intent;
    }

    /* renamed from: a */
    public static Intent m4420a(Context context, String str) {
        Intent intent = new Intent(context, MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, AdType.MRAID);
        intent.putExtra(VIDEO_URL, str);
        return intent;
    }

    /* renamed from: b */
    public static void m4419b(Context context, VastVideoConfig vastVideoConfig, long j, CreativeOrientation creativeOrientation) {
        try {
            context.startActivity(m4422a(context, vastVideoConfig, j, creativeOrientation));
        } catch (ActivityNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempt to start with VastVideoConfig failed. Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    /* renamed from: b */
    public static void m4418b(Context context, VastVideoConfigTwo vastVideoConfigTwo, long j, CreativeOrientation creativeOrientation) {
        try {
            context.startActivity(m4421a(context, vastVideoConfigTwo, j, creativeOrientation));
        } catch (ActivityNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempt to start with VastVideoConfigTwo failed. Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
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
            context.startActivity(m4420a(context, str));
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
