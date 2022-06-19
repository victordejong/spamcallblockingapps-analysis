.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 3

    .line 206
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "calledPhoneNumber"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastCallType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-wide v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->historyLastCallTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dateTimeInMillis"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setCounter(I)V

    .line 218
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setSpamType(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setLastSpamComment(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setLastSpamDate(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$3;->val$event:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setSecurityLevel(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
