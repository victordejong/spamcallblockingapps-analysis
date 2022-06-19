package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/IdentifiedJSONContact.class */
public class IdentifiedJSONContact extends JSONContact {
    private int comType;
    private boolean disableNotification;
    private boolean favorite;
    private long firstSeen;
    private String groupName;
    private long lastNotificationShowed;
    private int recognizedPersonOrigin;
    private int seenCount;
    private String senderName;
    private long when;

    public int getComType() {
        return this.comType;
    }

    public long getFirstSeen() {
        return this.firstSeen;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public long getLastNotificationShowed() {
        return this.lastNotificationShowed;
    }

    public int getRecognizedPersonOrigin() {
        return this.recognizedPersonOrigin;
    }

    public int getSeenCount() {
        return this.seenCount;
    }

    public String getSenderName() {
        return this.senderName;
    }

    public long getWhen() {
        return this.when;
    }

    public boolean isDisableNotification() {
        return this.disableNotification;
    }

    public boolean isFavorite() {
        return this.favorite;
    }

    public void setComType(int i) {
        this.comType = i;
    }

    public void setDisableNotification(boolean z) {
        this.disableNotification = z;
    }

    public void setFavorite(boolean z) {
        this.favorite = z;
    }

    public void setFirstSeen(long j) {
        this.firstSeen = j;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public void setLastNotificationShowed(long j) {
        this.lastNotificationShowed = j;
    }

    public void setRecognizedPersonOrigin(int i) {
        this.recognizedPersonOrigin = i;
    }

    public void setSeenCount(int i) {
        this.seenCount = i;
    }

    public void setSenderName(String str) {
        this.senderName = str;
    }

    public void setWhen(long j) {
        this.when = j;
    }
}
