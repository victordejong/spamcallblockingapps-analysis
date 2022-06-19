.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 3

    .line 245
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "calledPhoneNumber"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastCallType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

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

    .line 247
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$contact:Lcom/telguarder/helpers/contact/Contact;

    iget-object v0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$contact:Lcom/telguarder/helpers/contact/Contact;

    iget-object v0, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setName(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
