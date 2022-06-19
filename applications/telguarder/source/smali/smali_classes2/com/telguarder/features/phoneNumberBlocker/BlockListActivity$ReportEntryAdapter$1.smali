.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;
.super Ljava/lang/Object;
.source "BlockListActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->createHeaderDisplayer()Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer<",
        "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderDisplayed(Landroid/view/View;Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)V
    .locals 0

    .line 251
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;->this$1:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->prepareHeader(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic getHeaderDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 240
    check-cast p2, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;->getHeaderDisplayed(Landroid/view/View;Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)V

    return-void
.end method

.method public getHeaderLayoutId()I
    .locals 1

    const v0, 0x7f0b005c

    return v0
.end method

.method public isHeaderDisplayed(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public bridge synthetic isHeaderDisplayed(Ljava/lang/Object;I)Z
    .locals 0

    .line 240
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;->isHeaderDisplayed(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)Z

    move-result p1

    return p1
.end method
