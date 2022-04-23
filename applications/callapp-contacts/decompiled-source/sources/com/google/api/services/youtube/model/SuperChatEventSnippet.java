package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SuperChatEventSnippet.class */
public final class SuperChatEventSnippet extends GenericJson {
    @q
    @JsonString
    private BigInteger amountMicros;
    @q
    private String channelId;
    @q
    private String commentText;
    @q
    private l createdAt;
    @q
    private String currency;
    @q
    private String displayString;
    @q
    private Boolean isSuperChatForGood;
    @q
    private Boolean isSuperStickerEvent;
    @q
    private Long messageType;
    @q
    private Nonprofit nonprofit;
    @q
    private SuperStickerMetadata superStickerMetadata;
    @q
    private ChannelProfileDetails supporterDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getCreatedAt() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final SuperChatEventSnippet setCreatedAt(l lVar) {
        this.createdAt = lVar;
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
