.class public Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;
.super Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/MissedCallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MissedCallDataForNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification<",
        "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getSourceDate()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v0, v0, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method
