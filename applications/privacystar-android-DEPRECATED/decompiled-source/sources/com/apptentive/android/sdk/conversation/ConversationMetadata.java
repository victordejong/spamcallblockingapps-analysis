package com.apptentive.android.sdk.conversation;

import com.apptentive.android.sdk.serialization.SerializableObject;
import com.apptentive.android.sdk.util.StringUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationMetadata.class */
public class ConversationMetadata implements SerializableObject, Iterable<ConversationMetadataItem> {
    private static final byte VERSION = 1;
    private final List<ConversationMetadataItem> items;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationMetadata$Filter.class */
    public interface Filter {
        boolean accept(ConversationMetadataItem conversationMetadataItem);
    }

    public ConversationMetadata() {
        this.items = new ArrayList();
    }

    public ConversationMetadata(DataInput dataInput) throws IOException {
        byte readByte = dataInput.readByte();
        if (readByte != 1) {
            throw new IOException("Expected version 1 but was " + ((int) readByte));
        }
        byte readByte2 = dataInput.readByte();
        this.items = new ArrayList(readByte2);
        for (int i = 0; i < readByte2; i++) {
            this.items.add(new ConversationMetadataItem(dataInput));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addItem(ConversationMetadataItem conversationMetadataItem) {
        this.items.add(conversationMetadataItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationMetadataItem findItem(final Conversation conversation) {
        return findItem(new Filter() { // from class: com.apptentive.android.sdk.conversation.ConversationMetadata.2
            @Override // com.apptentive.android.sdk.conversation.ConversationMetadata.Filter
            public boolean accept(ConversationMetadataItem conversationMetadataItem) {
                return StringUtils.equal(conversationMetadataItem.getLocalConversationId(), conversation.getLocalIdentifier());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationMetadataItem findItem(Filter filter) {
        for (ConversationMetadataItem conversationMetadataItem : this.items) {
            if (filter.accept(conversationMetadataItem)) {
                return conversationMetadataItem;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConversationMetadataItem findItem(final ConversationState conversationState) {
        return findItem(new Filter() { // from class: com.apptentive.android.sdk.conversation.ConversationMetadata.1
            @Override // com.apptentive.android.sdk.conversation.ConversationMetadata.Filter
            public boolean accept(ConversationMetadataItem conversationMetadataItem) {
                return conversationState.equals(conversationMetadataItem.getConversationState());
            }
        });
    }

    public List<ConversationMetadataItem> getItems() {
        return this.items;
    }

    public boolean hasItems() {
        return this.items.size() > 0;
    }

    @Override // java.lang.Iterable
    public Iterator<ConversationMetadataItem> iterator() {
        return this.items.iterator();
    }

    public String toString() {
        return "ConversationMetadata{items=" + this.items + '}';
    }

    @Override // com.apptentive.android.sdk.serialization.SerializableObject
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(1);
        dataOutput.write(this.items.size());
        for (int i = 0; i < this.items.size(); i++) {
            this.items.get(i).writeExternal(dataOutput);
        }
    }
}
