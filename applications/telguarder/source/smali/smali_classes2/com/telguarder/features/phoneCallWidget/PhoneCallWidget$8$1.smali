.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupCancelled(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    iput-object p1, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object p1, p1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method

.method public onLookupFailed(Ljava/lang/Exception;)V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLookupInProgress()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method

.method public onLookupNotAllowed()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method

.method public onNoResults()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method

.method public onResultsFromBackend(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method public onResultsFromCache(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method
