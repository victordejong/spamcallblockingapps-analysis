package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageSnippet.class */
public final class LiveChatMessageSnippet extends GenericJson {
    @q
    private String authorChannelId;
    @q
    private String displayMessage;
    @q
    private LiveChatFanFundingEventDetails fanFundingEventDetails;
    @q
    private Boolean hasDisplayContent;
    @q
    private String liveChatId;
    @q
    private LiveChatMessageDeletedDetails messageDeletedDetails;
    @q
    private LiveChatMessageRetractedDetails messageRetractedDetails;
    @q
    private LiveChatPollClosedDetails pollClosedDetails;
    @q
    private LiveChatPollEditedDetails pollEditedDetails;
    @q
    private LiveChatPollOpenedDetails pollOpenedDetails;
    @q
    private LiveChatPollVotedDetails pollVotedDetails;
    @q
    private l publishedAt;
    @q
    private LiveChatSuperChatDetails superChatDetails;
    @q
    private LiveChatSuperStickerDetails superStickerDetails;
    @q
    private LiveChatTextMessageDetails textMessageDetails;
    @q
    private String type;
    @q
    private LiveChatUserBannedMessageDetails userBannedDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatMessageSnippet clone() {
        return (LiveChatMessageSnippet) super.clone();
    }

    public final String getAuthorChannelId() {
        return this.authorChannelId;
    }

    public final String getDisplayMessage() {
        return this.displayMessage;
    }

    public final LiveChatFanFundingEventDetails getFanFundingEventDetails() {
        return this.fanFundingEventDetails;
    }

    public final Boolean getHasDisplayContent() {
        return this.hasDisplayContent;
    }

    public final String getLiveChatId() {
        return this.liveChatId;
    }

    public final LiveChatMessageDeletedDetails getMessageDeletedDetails() {
        return this.messageDeletedDetails;
    }

    public final LiveChatMessageRetractedDetails getMessageRetractedDetails() {
        return this.messageRetractedDetails;
    }

    public final LiveChatPollClosedDetails getPollClosedDetails() {
        return this.pollClosedDetails;
    }

    public final LiveChatPollEditedDetails getPollEditedDetails() {
        return this.pollEditedDetails;
    }

    public final LiveChatPollOpenedDetails getPollOpenedDetails() {
        return this.pollOpenedDetails;
    }

    public final LiveChatPollVotedDetails getPollVotedDetails() {
        return this.pollVotedDetails;
    }

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final LiveChatSuperChatDetails getSuperChatDetails() {
        return this.superChatDetails;
    }

    public final LiveChatSuperStickerDetails getSuperStickerDetails() {
        return this.superStickerDetails;
    }

    public final LiveChatTextMessageDetails getTextMessageDetails() {
        return this.textMessageDetails;
    }

    public final String getType() {
        return this.type;
    }

    public final LiveChatUserBannedMessageDetails getUserBannedDetails() {
        return this.userBannedDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatMessageSnippet set(String str, Object obj) {
        return (LiveChatMessageSnippet) super.set(str, obj);
    }

    public final LiveChatMessageSnippet setAuthorChannelId(String str) {
        this.authorChannelId = str;
        return this;
    }

    public final LiveChatMessageSnippet setDisplayMessage(String str) {
        this.displayMessage = str;
        return this;
    }

    public final LiveChatMessageSnippet setFanFundingEventDetails(LiveChatFanFundingEventDetails liveChatFanFundingEventDetails) {
        this.fanFundingEventDetails = liveChatFanFundingEventDetails;
        return this;
    }

    public final LiveChatMessageSnippet setHasDisplayContent(Boolean bool) {
        this.hasDisplayContent = bool;
        return this;
    }

    public final LiveChatMessageSnippet setLiveChatId(String str) {
        this.liveChatId = str;
        return this;
    }

    public final LiveChatMessageSnippet setMessageDeletedDetails(LiveChatMessageDeletedDetails liveChatMessageDeletedDetails) {
        this.messageDeletedDetails = liveChatMessageDeletedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setMessageRetractedDetails(LiveChatMessageRetractedDetails liveChatMessageRetractedDetails) {
        this.messageRetractedDetails = liveChatMessageRetractedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setPollClosedDetails(LiveChatPollClosedDetails liveChatPollClosedDetails) {
        this.pollClosedDetails = liveChatPollClosedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setPollEditedDetails(LiveChatPollEditedDetails liveChatPollEditedDetails) {
        this.pollEditedDetails = liveChatPollEditedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setPollOpenedDetails(LiveChatPollOpenedDetails liveChatPollOpenedDetails) {
        this.pollOpenedDetails = liveChatPollOpenedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setPollVotedDetails(LiveChatPollVotedDetails liveChatPollVotedDetails) {
        this.pollVotedDetails = liveChatPollVotedDetails;
        return this;
    }

    public final LiveChatMessageSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final LiveChatMessageSnippet setSuperChatDetails(LiveChatSuperChatDetails liveChatSuperChatDetails) {
        this.superChatDetails = liveChatSuperChatDetails;
        return this;
    }

    public final LiveChatMessageSnippet setSuperStickerDetails(LiveChatSuperStickerDetails liveChatSuperStickerDetails) {
        this.superStickerDetails = liveChatSuperStickerDetails;
        return this;
    }

    public final LiveChatMessageSnippet setTextMessageDetails(LiveChatTextMessageDetails liveChatTextMessageDetails) {
        this.textMessageDetails = liveChatTextMessageDetails;
        return this;
    }

    public final LiveChatMessageSnippet setType(String str) {
        this.type = str;
        return this;
    }

    public final LiveChatMessageSnippet setUserBannedDetails(LiveChatUserBannedMessageDetails liveChatUserBannedMessageDetails) {
        this.userBannedDetails = liveChatUserBannedMessageDetails;
        return this;
    }
}
