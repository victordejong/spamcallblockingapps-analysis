package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.zendesk.util.CollectionUtils;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ContactUsSettings.class */
class ContactUsSettings {
    private static ContactUsSettings DEFAULT = new ContactUsSettings(Collections.emptyList());
    private List<String> tags;

    @VisibleForTesting
    ContactUsSettings() {
    }

    @VisibleForTesting
    ContactUsSettings(List<String> list) {
        this.tags = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ContactUsSettings defaultSettings() {
        return DEFAULT;
    }

    @NonNull
    public List<String> getTags() {
        return CollectionUtils.copyOf(this.tags);
    }
}
