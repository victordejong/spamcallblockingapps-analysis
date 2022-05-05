package zendesk.core;

import androidx.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsProvider.class */
public interface BlipsProvider {
    void sendBlip(@NonNull UserAction userAction, @NonNull BlipsGroup blipsGroup);
}
