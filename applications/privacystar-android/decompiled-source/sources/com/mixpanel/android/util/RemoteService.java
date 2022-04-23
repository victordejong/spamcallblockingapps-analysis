package com.mixpanel.android.util;

import android.content.Context;
import android.support.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/RemoteService.class */
public interface RemoteService {

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/RemoteService$ServiceUnavailableException.class */
    public static class ServiceUnavailableException extends Exception {
        private final int mRetryAfter;

        public ServiceUnavailableException(String str, String str2) {
            super(str);
            int i;
            try {
                i = Integer.parseInt(str2);
            } catch (NumberFormatException e) {
                i = 0;
            }
            this.mRetryAfter = i;
        }

        public int getRetryAfter() {
            return this.mRetryAfter;
        }
    }

    void checkIsMixpanelBlocked();

    boolean isOnline(Context context, OfflineMode offlineMode);

    @NonNull
    RemoteResponse performRequest(@NonNull String str, @NonNull String str2) throws ServiceUnavailableException, IOException;
}
