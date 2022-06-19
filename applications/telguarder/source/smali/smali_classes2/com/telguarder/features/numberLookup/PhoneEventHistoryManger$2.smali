.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->addCallHistoryListItem(Landroid/content/Context;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dateTime:J

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$phoneNumber:Ljava/lang/String;

    iput-wide p4, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$dateTime:J

    iput p6, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$100(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_0
    return-void

    .line 173
    :cond_1
    :try_start_1
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 183
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$phoneNumber:Ljava/lang/String;

    iput-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastNumber:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$type:I

    iput v2, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->lastCallType:I

    .line 185
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-wide v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$dateTime:J

    iput-wide v2, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->historyLastCallTimestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 188
    :cond_3
    throw v1
.end method
