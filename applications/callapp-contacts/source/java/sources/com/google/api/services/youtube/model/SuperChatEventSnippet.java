package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SuperChatEventSnippet.class */
public final class SuperChatEventSnippet extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger amountMicros;
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String commentText;
    @AbstractC15247q
    private C15237l createdAt;
    @AbstractC15247q
    private String currency;
    @AbstractC15247q
    private String displayString;
    @AbstractC15247q
    private Boolean isSuperChatForGood;
    @AbstractC15247q
    private Boolean isSuperStickerEvent;
    @AbstractC15247q
    private Long messageType;
    @AbstractC15247q
    private Nonprofit nonprofit;
    @AbstractC15247q
    private SuperStickerMetadata superStickerMetadata;
    @AbstractC15247q
    private ChannelProfileDetails supporterDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SuperChatEventSnippet clone() {
        return (SuperChatEventSnippet) super.clone();
    }

    public final BigInteger getAmountMicros() {
        return this.amountMicros;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getCommentText() {
        return this.commentText;
    }

    public final C15237l getCreatedAt() {
        return this.createdAt;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDisplayString() {
        return this.displayString;
    }

    public final Boolean getIsSuperChatForGood() {
        return this.isSuperChatForGood;
    }

    public final Boolean getIsSuperStickerEvent() {
        return this.isSuperStickerEvent;
    }

    public final Long getMessageType() {
        return this.messageType;
    }

    public final Nonprofit getNonprofit() {
        return this.nonprofit;
    }

    public final SuperStickerMetadata getSuperStickerMetadata() {
        return this.superStickerMetadata;
    }

    public final ChannelProfileDetails getSupporterDetails() {
        return this.supporterDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SuperChatEventSnippet set(String str, Object obj) {
        return (SuperChatEventSnippet) super.set(str, obj);
    }

    public final SuperChatEventSnippet setAmountMicros(BigInteger bigInteger) {
        this.amountMicros = bigInteger;
        return this;
    }

    public final SuperChatEventSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final SuperChatEventSnippet setCommentText(String str) {
        this.commentText = str;
        return this;
    }

    public final SuperChatEventSnippet setCreatedAt(C15237l c15237l) {
        this.createdAt = c15237l;
        return this;
    }

    public final SuperChatEventSnippet setCurrency(String str) {
        this.currency = str;
        return this;
    }

    public final SuperChatEventSnippet setDisplayString(String str) {
        this.displayString = str;
        return this;
    }

    public final SuperChatEventSnippet setIsSuperChatForGood(Boolean bool) {
        this.isSuperChatForGood = bool;
        return this;
    }

    public final SuperChatEventSnippet setIsSuperStickerEvent(Boolean bool) {
        this.isSuperStickerEvent = bool;
        return this;
    }

    public final SuperChatEventSnippet setMessageType(Long l) {
        this.messageType = l;
        return this;
    }

    public final SuperChatEventSnippet setNonprofit(Nonprofit nonprofit) {
        this.nonprofit = nonprofit;
        return this;
    }

    public final SuperChatEventSnippet setSuperStickerMetadata(SuperStickerMetadata superStickerMetadata) {
        this.superStickerMetadata = superStickerMetadata;
        return this;
    }

    public final SuperChatEventSnippet setSupporterDetails(ChannelProfileDetails channelProfileDetails) {
        this.supporterDetails = channelProfileDetails;
        return this;
    }
}
