package com.freshchat.consumer.sdk.beans;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Tag.class */
public class Tag {
    private String tagName;
    private String taggedItemId;
    private TaggedType taggedItemType;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/Tag$TaggedType.class */
    public enum TaggedType {
        ARTICLE(0),
        CATEGORY(1),
        CHANNEL(2);
        
        private final int itemTypeIntValue;

        TaggedType(int i) {
            this.itemTypeIntValue = i;
        }

        public int asInt() {
            return this.itemTypeIntValue;
        }
    }

    public Tag(String str, String str2, TaggedType taggedType) {
        this.tagName = str;
        this.taggedItemId = str2;
        this.taggedItemType = taggedType;
    }

    public String getTagName() {
        return this.tagName;
    }

    public String getTaggedItemId() {
        return this.taggedItemId;
    }

    public TaggedType getTaggedItemType() {
        return this.taggedItemType;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public void setTaggedItemId(String str) {
        this.taggedItemId = str;
    }

    public void setTaggedItemType(TaggedType taggedType) {
        this.taggedItemType = taggedType;
    }

    public String toString() {
        return "TAG--> TaggedId: " + getTaggedItemId() + ", FilterType: " + getTaggedItemType().name() + ", TagName: " + getTagName();
    }
}
