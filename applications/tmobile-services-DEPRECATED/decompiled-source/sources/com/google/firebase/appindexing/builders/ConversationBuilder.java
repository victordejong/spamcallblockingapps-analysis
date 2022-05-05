package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/ConversationBuilder.class */
public final class ConversationBuilder extends IndexableBuilder<ConversationBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationBuilder() {
        super("Conversation");
    }

    public final ConversationBuilder setId(@NonNull String str) {
        return put(Name.MARK, str);
    }
}
