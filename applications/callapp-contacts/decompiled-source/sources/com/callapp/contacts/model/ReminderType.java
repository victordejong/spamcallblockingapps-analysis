package com.callapp.contacts.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/ReminderType.class */
public enum ReminderType {
    CALL("Call Reminder"),
    BIRTHDAY("Birthday Reminder"),
    NOTES("Note"),
    URGENT_NOTES("Note"),
    BLOCKED("Blocked number"),
    BLOCKED_RULE("Blocked rule"),
    SPAM("Spam number");
    
    public final String title;

    ReminderType(String str) {
        this.title = str;
    }
}
