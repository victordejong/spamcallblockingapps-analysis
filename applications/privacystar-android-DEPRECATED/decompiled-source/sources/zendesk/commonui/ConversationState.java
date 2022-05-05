package zendesk.commonui;

import android.support.annotation.NonNull;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/ConversationState.class */
public class ConversationState {
    final List<AvatarState> avatarStates;
    final List<Cell> cells;
    final boolean enabled;
    final boolean progressBarVisible;
    final String subtitle;
    final String title;

    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/ConversationState$Builder.class */
    public static class Builder {
        private List<AvatarState> avatarStates;
        private List<Cell> cells;
        private boolean enabled;
        private boolean progressBarVisible;
        private String subtitle;
        private String title;

        public Builder(@NonNull ConversationState conversationState) {
            this.enabled = false;
            this.title = conversationState.title;
            this.subtitle = conversationState.subtitle;
            this.avatarStates = conversationState.avatarStates;
            this.cells = conversationState.cells;
            this.enabled = conversationState.enabled;
        }

        @NonNull
        public ConversationState build() {
            return new ConversationState(this.title, this.subtitle, this.avatarStates, this.cells, this.progressBarVisible, this.enabled);
        }

        public Builder withAvatarStates(@NonNull List<AvatarState> list) {
            this.avatarStates = list;
            return this;
        }

        public Builder withCells(@NonNull List<Cell> list) {
            this.cells = list;
            return this;
        }

        public Builder withEnabled(boolean z) {
            this.enabled = z;
            return this;
        }

        public Builder withProgressBarVisible(boolean z) {
            this.progressBarVisible = z;
            return this;
        }

        public Builder withSubtitle(@NonNull String str) {
            this.subtitle = str;
            return this;
        }

        public Builder withTitle(@NonNull String str) {
            this.title = str;
            return this;
        }
    }

    public ConversationState(@NonNull String str, @NonNull String str2, @NonNull List<AvatarState> list, @NonNull List<Cell> list2, boolean z, boolean z2) {
        this.title = str;
        this.subtitle = str2;
        this.avatarStates = list;
        this.progressBarVisible = z;
        this.cells = list2;
        this.enabled = z2;
    }
}
