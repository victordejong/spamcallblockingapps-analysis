package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.List;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ContactUsSettings.class */
public class ContactUsSettings {
    public static ContactUsSettings DEFAULT = new ContactUsSettings(Collections.emptyList());
    public List<String> tags;

    @VisibleForTesting
    public ContactUsSettings(List<String> list) {
        this.tags = list;
    }

    public static ContactUsSettings defaultSettings() {
        return DEFAULT;
    }

    @NonNull
    public List<String> getTags() {
        return C10858a.m10404a((List) this.tags);
    }
}
