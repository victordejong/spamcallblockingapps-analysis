package androidx.media2.exoplayer.external.drm;

import androidx.annotation.RestrictTo;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/UnsupportedDrmException.class */
public final class UnsupportedDrmException extends Exception {
    public static final int REASON_INSTANTIATION_ERROR = 2;
    public static final int REASON_UNSUPPORTED_SCHEME = 1;
    public final int reason;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/UnsupportedDrmException$Reason.class */
    public @interface Reason {
    }

    public UnsupportedDrmException(int i) {
        this.reason = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.reason = i;
    }
}
