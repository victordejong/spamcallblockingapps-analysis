.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadInitialPhoneCallLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getCachedHistoryList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$402(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 619
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getCachedHistoryList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$502(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 620
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$602(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    .line 622
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadFinalPhoneCallLog(Landroid/content/Context;)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getMergedCallLookupResultsFromCache(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$402(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 625
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    invoke-static {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$602(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    .line 626
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->loadCallLogWitResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;I)V

    :goto_0
    return-void
.end method
