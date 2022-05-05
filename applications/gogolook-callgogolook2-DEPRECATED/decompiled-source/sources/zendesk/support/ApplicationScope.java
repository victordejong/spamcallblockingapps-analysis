package zendesk.support;

import androidx.annotation.NonNull;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ApplicationScope.class */
public class ApplicationScope {
    public final Locale locale;
    public final ZendeskTracker zendeskTracker;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/ApplicationScope$Builder.class */
    public static class Builder {
        public Locale locale = Locale.getDefault();
        public ZendeskTracker zendeskTracker = new AnswersTracker();

        @NonNull
        public ApplicationScope build() {
            return new ApplicationScope(this);
        }

        @NonNull
        public Builder zendeskTracker(ZendeskTracker zendeskTracker) {
            this.zendeskTracker = zendeskTracker;
            return this;
        }
    }

    public ApplicationScope(Builder builder) {
        this.locale = builder.locale;
        this.zendeskTracker = builder.zendeskTracker;
    }

    @NonNull
    public Locale getLocale() {
        return this.locale;
    }

    public ZendeskTracker getZendeskTracker() {
        return this.zendeskTracker;
    }
}
