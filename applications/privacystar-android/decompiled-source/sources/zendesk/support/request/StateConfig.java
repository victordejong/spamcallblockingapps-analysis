package zendesk.support.request;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import zendesk.suas.State;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateConfig.class */
public class StateConfig implements Serializable {
    static final long MAX_ATTACHMENTS_SIZE_UNAVAILABLE = -1;
    private final StateSettings settings;
    private final String subject;
    private final List<String> tags;
    private final StateRequestTicketForm ticketForm;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateConfig$Builder.class */
    static class Builder {
        private StateSettings settings;
        private String subject;
        private List<String> tags;
        private StateRequestTicketForm ticketForm;

        private Builder(StateSettings stateSettings, List<String> list, String str, StateRequestTicketForm stateRequestTicketForm) {
            this.settings = stateSettings;
            this.tags = list;
            this.subject = str;
            this.ticketForm = stateRequestTicketForm;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateConfig build() {
            return new StateConfig(this.settings, this.tags, this.subject, this.ticketForm);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setSettings(StateSettings stateSettings) {
            this.settings = stateSettings;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setSubject(String str) {
            this.subject = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setTags(List<String> list) {
            this.tags = list;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder setTicketForm(StateRequestTicketForm stateRequestTicketForm) {
            this.ticketForm = stateRequestTicketForm;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateConfig() {
        this.settings = new StateSettings();
        this.tags = new ArrayList();
        this.subject = "";
        this.ticketForm = null;
    }

    private StateConfig(StateSettings stateSettings, List<String> list, String str, StateRequestTicketForm stateRequestTicketForm) {
        this.settings = stateSettings;
        this.tags = list;
        this.subject = str;
        this.ticketForm = stateRequestTicketForm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateConfig fromState(State state) {
        StateConfig stateConfig = (StateConfig) state.getState(StateConfig.class);
        return stateConfig != null ? stateConfig : new StateConfig();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSettings getSettings() {
        return this.settings;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSubject() {
        return this.subject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> getTags() {
        return this.tags;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateRequestTicketForm getTicketForm() {
        return this.ticketForm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Builder newBuilder() {
        return new Builder(this.settings, this.tags, this.subject, this.ticketForm);
    }

    public String toString() {
        return "Config{settings=" + this.settings + ", subject='" + this.subject + "', ticketForm=" + this.ticketForm + ", tags=" + this.tags + '}';
    }
}
