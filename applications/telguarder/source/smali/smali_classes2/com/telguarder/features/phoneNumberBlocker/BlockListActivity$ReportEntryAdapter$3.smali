.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getDeleteClickListener(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;I)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iput p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 358
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$300(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    iget v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    invoke-static {p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$302(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;I)I

    .line 362
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->notifyDataSetChanged()V

    .line 363
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget-object v0, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget v2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    iget-object v1, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    new-instance v2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;

    iget-object v3, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    iget-object v3, v3, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-direct {v2, p0, v3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3$1;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;Landroid/app/Activity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->removeBlockedNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    :cond_1
    :goto_0
    return-void
.end method
