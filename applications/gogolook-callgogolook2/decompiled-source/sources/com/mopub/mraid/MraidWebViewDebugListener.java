package com.mopub.mraid;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidWebViewDebugListener.class */
public interface MraidWebViewDebugListener {
    boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage);

    boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult);
}
