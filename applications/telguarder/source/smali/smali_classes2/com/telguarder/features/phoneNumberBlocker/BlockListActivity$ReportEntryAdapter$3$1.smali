.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/rateAndFeedback/ReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;Landroid/app/Activity;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object v0, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget-object v0, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;ZLjava/lang/Exception;)V

    .line 380
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->handleDeletionEnd()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 2

    .line 368
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object v0, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget v0, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 373
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-direct {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->this$2:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->handleDeletionEnd()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 363
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;->onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    return-void
.end method
