.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;

.field final synthetic val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 131
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 132
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setPhoneNumberForDisplaying(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setCalledPhoneNumber(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-wide v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setDateTimeInMillis(J)V

    .line 144
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setCounter(I)V

    .line 145
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setType(I)V

    .line 146
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setSpamType(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setLastSpamComment(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setLastSpamDate(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$2;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setSecurityLevel(Ljava/lang/String;)V

    return-void
.end method
