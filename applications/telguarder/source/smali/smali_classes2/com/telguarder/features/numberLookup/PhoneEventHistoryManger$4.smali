.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

.field final synthetic val$contact:Lcom/telguarder/helpers/contact/Contact;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$contact:Lcom/telguarder/helpers/contact/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->access$100(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_0
    return-void

    .line 242
    :cond_1
    :try_start_1
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$4;)V

    invoke-virtual {v0, v1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 261
    :cond_3
    throw v1
.end method
