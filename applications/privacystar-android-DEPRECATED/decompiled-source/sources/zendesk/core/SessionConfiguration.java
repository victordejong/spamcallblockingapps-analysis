package zendesk.core;

import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SessionConfiguration.class */
class SessionConfiguration {
    private Identity identity;
    private Locale locale;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/SessionConfiguration$Builder.class */
    static class Builder {
        private Identity identity;
        private Locale locale;

        Builder() {
            this.identity = new Identity() { // from class: zendesk.core.SessionConfiguration.Builder.1
            };
            this.locale = Locale.getDefault();
        }

        private Builder(SessionConfiguration sessionConfiguration) {
            this.identity = new Identity() { // from class: zendesk.core.SessionConfiguration.Builder.1
            };
            this.locale = Locale.getDefault();
            this.identity = sessionConfiguration.getIdentity();
        }

        public SessionConfiguration build() {
            return new SessionConfiguration(this);
        }

        Builder setIdentity(Identity identity) {
            this.identity = identity;
            return this;
        }

        Builder setLocale(Locale locale) {
            this.locale = locale;
            return this;
        }
    }

    private SessionConfiguration(Builder builder) {
        this.identity = builder.identity;
        this.locale = builder.locale;
    }

    Identity getIdentity() {
        return this.identity;
    }

    Locale getLocale() {
        return this.locale;
    }

    Builder newBuilder() {
        return new Builder();
    }
}
