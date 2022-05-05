package com.privacystar.core.service.analytics.apptentive;

import android.app.Application;
import com.apptentive.android.sdk.Apptentive;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\bJ\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/service/analytics/apptentive/ApptentiveService;", "", "()V", "fire", "", "label", "", "customValues", "", "register", "application", "Landroid/app/Application;", "apptentiveKey", "apptentiveSignature", "setEventInPrefs", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/apptentive/ApptentiveService.class */
public final class ApptentiveService {
    public static final ApptentiveService INSTANCE = new ApptentiveService();

    private ApptentiveService() {
    }

    private final void setEventInPrefs(String str) {
        boolean z = PreferenceUtil.getLastEventTime() <= 0;
        Timber.m28v("%s", z ? "Saving event" : "Not saving event");
        if (z) {
            long currentTimeMillis = System.currentTimeMillis();
            PreferenceUtil.putLastEventTime(currentTimeMillis);
            PreferenceUtil.putLastEventLabel(str);
            Timber.m28v("Saved event. label = %s, time = %d", str, Long.valueOf(currentTimeMillis));
        }
    }

    public final void fire(@NotNull String label) {
        Intrinsics.checkParameterIsNotNull(label, "label");
        Apptentive.engage(PSApplication.context(), label);
        Timber.m28v("Fired %s", label);
    }

    public final void fire(@NotNull String label, @NotNull Map<String, ? extends Object> customValues) {
        Intrinsics.checkParameterIsNotNull(label, "label");
        Intrinsics.checkParameterIsNotNull(customValues, "customValues");
        Apptentive.engage(PSApplication.context(), label, customValues);
        Timber.m28v("Fired [%s] with values:\n%s", label, customValues.toString());
    }

    public final void register(@NotNull Application application, @NotNull String apptentiveKey, @NotNull String apptentiveSignature) {
        Intrinsics.checkParameterIsNotNull(application, "application");
        Intrinsics.checkParameterIsNotNull(apptentiveKey, "apptentiveKey");
        Intrinsics.checkParameterIsNotNull(apptentiveSignature, "apptentiveSignature");
        Timber.m28v("registering with key: [%s], and signature: [%s]", apptentiveKey, apptentiveSignature);
        Apptentive.register(application, apptentiveKey, apptentiveSignature);
    }
}
