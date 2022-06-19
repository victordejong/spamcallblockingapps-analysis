package com.google.android.gms.common.api;

import android.accounts.Account;
import android.os.Looper;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings.class */
public class GoogleApi$Settings {
    @KeepForSdk
    public static final GoogleApi$Settings DEFAULT_SETTINGS = new Builder().build();
    public final StatusExceptionMapper zaa;
    public final Looper zab;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings$Builder.class */
    public static class Builder {
        private StatusExceptionMapper zaa;
        private Looper zab;

        @KeepForSdk
        public GoogleApi$Settings build() {
            if (this.zaa == null) {
                this.zaa = new ApiExceptionMapper();
            }
            if (this.zab == null) {
                this.zab = Looper.getMainLooper();
            }
            return new GoogleApi$Settings(this.zaa, this.zab);
        }

        @KeepForSdk
        public Builder setLooper(Looper looper) {
            Preconditions.checkNotNull(looper, "Looper must not be null.");
            this.zab = looper;
            return this;
        }

        @KeepForSdk
        public Builder setMapper(StatusExceptionMapper statusExceptionMapper) {
            Preconditions.checkNotNull(statusExceptionMapper, "StatusExceptionMapper must not be null.");
            this.zaa = statusExceptionMapper;
            return this;
        }
    }

    @KeepForSdk
    private GoogleApi$Settings(StatusExceptionMapper statusExceptionMapper, Account account, Looper looper) {
        this.zaa = statusExceptionMapper;
        this.zab = looper;
    }
}
