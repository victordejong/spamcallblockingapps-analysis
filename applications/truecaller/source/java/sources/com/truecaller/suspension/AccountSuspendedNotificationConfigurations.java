package com.truecaller.suspension;

import kotlin.Metadata;
/* JADX WARN: Init of enum IMMEDIATE can be incorrect */
/* JADX WARN: Init of enum ONE_DAY can be incorrect */
/* JADX WARN: Init of enum ONE_WEEK can be incorrect */
/* JADX WARN: Init of enum WEEKLY can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B-\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006j\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;", "", "", "daysInterval", "I", "getDaysInterval", "()I", "id", "getId", "title", "getTitle", "content", "getContent", "<init>", "(Ljava/lang/String;IIIII)V", "IMMEDIATE", "ONE_DAY", "ONE_WEEK", "WEEKLY", "account-suspension_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/AccountSuspendedNotificationConfigurations.class */
public enum AccountSuspendedNotificationConfigurations {
    IMMEDIATE(0, 0, r0, r0),
    ONE_DAY(1, 1, r0, r0),
    ONE_WEEK(2, 6, r0, r0),
    WEEKLY(3, 7, r0, r0);
    
    private final int content;
    private final int daysInterval;

    /* renamed from: id */
    private final int f15144id;
    private final int title;

    static {
        int i = C4581R.string.account_suspension_notification_is_blocked;
        int i2 = C4581R.string.account_suspension_notification_unblock;
        int i3 = C4581R.string.account_suspension_notification_disabled;
        int i4 = C4581R.string.account_suspension_notification_use;
    }

    AccountSuspendedNotificationConfigurations(int i, int i2, int i3, int i4) {
        this.f15144id = i;
        this.daysInterval = i2;
        this.title = i3;
        this.content = i4;
    }

    public final int getContent() {
        return this.content;
    }

    public final int getDaysInterval() {
        return this.daysInterval;
    }

    public final int getId() {
        return this.f15144id;
    }

    public final int getTitle() {
        return this.title;
    }
}
