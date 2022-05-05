package zendesk.core;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsProvider.class */
public interface BlipsProvider {
    void sendBlip(@NonNull PageView pageView, @NonNull BlipsGroup blipsGroup);

    void sendBlip(@NonNull UserAction userAction, @NonNull BlipsGroup blipsGroup);
}
