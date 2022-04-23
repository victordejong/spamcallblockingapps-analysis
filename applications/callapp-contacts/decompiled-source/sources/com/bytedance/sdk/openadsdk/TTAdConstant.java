package com.bytedance.sdk.openadsdk;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant.class */
public class TTAdConstant {
    public static final int AD_TYPE_COMMON_VIDEO = 0;
    public static final int AD_TYPE_PLAYABLE = 2;
    public static final int AD_TYPE_PLAYABLE_VIDEO = 1;
    public static final int AD_TYPE_UNKNOWN = -1;
    public static final int FALLBACK_TYPE_DOWNLOAD = 2;
    public static final int FALLBACK_TYPE_LANDING_PAGE = 1;
    public static final int HORIZONTAL = 2;
    public static final int IMAGE_MODE_GROUP_IMG = 4;
    public static final int IMAGE_MODE_LARGE_IMG = 3;
    public static final int IMAGE_MODE_SMALL_IMG = 2;
    public static final int IMAGE_MODE_SQUARE_IMG = 33;
    public static final int IMAGE_MODE_UNKNOWN = -1;
    public static final int IMAGE_MODE_VERTICAL_IMG = 16;
    public static final int IMAGE_MODE_VIDEO = 5;
    public static final int IMAGE_MODE_VIDEO_SQUARE = 50;
    public static final int IMAGE_MODE_VIDEO_VERTICAL = 15;
    public static final int INTERACTION_TYPE_BROWSER = 2;
    public static final int INTERACTION_TYPE_DIAL = 5;
    public static final int INTERACTION_TYPE_DOWNLOAD = 4;
    public static final int INTERACTION_TYPE_LANDING_PAGE = 3;
    public static final int INTERACTION_TYPE_UNKNOWN = -1;
    public static final String MULTI_PROCESS_DATA = "multi_process_data";
    public static final String MULTI_PROCESS_MATERIALMETA = "multi_process_materialmeta";
    public static final int NETWORK_STATE_2G = 2;
    public static final int NETWORK_STATE_3G = 3;
    public static final int NETWORK_STATE_4G = 5;
    public static final int NETWORK_STATE_MOBILE = 1;
    public static final int NETWORK_STATE_WIFI = 4;
    public static final int REQUEST_AD_TYPE_EXPRESS = 0;
    public static final int REQUEST_AD_TYPE_NATIVE = 1;
    public static final String TAG = "TT_AD_SDK";
    public static final int TITLE_BAR_THEME_DARK = 1;
    public static final int TITLE_BAR_THEME_LIGHT = 0;
    public static final int TITLE_BAR_THEME_NO_TITLE_BAR = -1;
    public static final int TT_CLOSE_GDRP = 0;
    public static final int TT_OPEN_GDRP = 1;
    public static final int VERTICAL = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant$NATIVE_AD_TYPE.class */
    public @interface NATIVE_AD_TYPE {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant$NETWORK_STATE.class */
    public @interface NETWORK_STATE {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant$ORIENTATION_STATE.class */
    public @interface ORIENTATION_STATE {
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant$RitScenes.class */
    public enum RitScenes {
        CUSTOMIZE_SCENES("customize_scenes"),
        HOME_OPEN_BONUS("home_open_bonus"),
        HOME_SVIP_BONUS("home_svip_bonus"),
        HOME_GET_PROPS("home_get_props"),
        HOME_TRY_PROPS("home_try_props"),
        HOME_GET_BONUS("home_get_bonus"),
        HOME_GIFT_BONUS("home_gift_bonus"),
        GAME_START_BONUS("game_start_bonus"),
        GAME_REDUCE_WAITING("geme_reduce_waiting"),
        GAME_MORE_OPPORTUNITIES("game_more_opportunities"),
        GAME_FINISH_REWARDS("game_finish_rewards"),
        GAME_GIFT_BONUS("game_gift_bonus");
        

        /* renamed from: a  reason: collision with root package name */
        final String f8399a;

        RitScenes(String str) {
            this.f8399a = str;
        }

        public final String getScenesName() {
            return this.f8399a;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConstant$TITLE_BAR_THEME.class */
    public @interface TITLE_BAR_THEME {
    }
}
