package androidx.media2.exoplayer.external.util;

import android.util.Pair;
import androidx.annotation.RestrictTo;
import java.lang.Throwable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ErrorMessageProvider.class */
public interface ErrorMessageProvider<T extends Throwable> {
    Pair<Integer, String> getErrorMessage(T t);
}
