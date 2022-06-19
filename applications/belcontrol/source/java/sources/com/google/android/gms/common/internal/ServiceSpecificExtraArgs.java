package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ServiceSpecificExtraArgs.class */
public final class ServiceSpecificExtraArgs {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ServiceSpecificExtraArgs$CastExtraArgs.class */
    public interface CastExtraArgs {
        @RecentlyNonNull
        @KeepForSdk
        public static final String LISTENER = "listener";
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs.class */
    public interface GamesExtraArgs {
        @RecentlyNonNull
        @KeepForSdk
        public static final String DESIRED_LOCALE = "com.google.android.gms.games.key.desiredLocale";
        @RecentlyNonNull
        @KeepForSdk
        public static final String GAME_PACKAGE_NAME = "com.google.android.gms.games.key.gamePackageName";
        @RecentlyNonNull
        @KeepForSdk
        public static final String SIGNIN_OPTIONS = "com.google.android.gms.games.key.signInOptions";
        @RecentlyNonNull
        @KeepForSdk
        public static final String WINDOW_TOKEN = "com.google.android.gms.games.key.popupWindowToken";
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ServiceSpecificExtraArgs$PlusExtraArgs.class */
    public interface PlusExtraArgs {
        @RecentlyNonNull
        @KeepForSdk
        public static final String PLUS_AUTH_PACKAGE = "auth_package";
    }

    private ServiceSpecificExtraArgs() {
    }
}
