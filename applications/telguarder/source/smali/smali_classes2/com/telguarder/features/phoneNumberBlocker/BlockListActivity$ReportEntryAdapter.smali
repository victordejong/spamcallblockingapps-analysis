.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;
.super Lcom/telguarder/helpers/ui/BOAdapter;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportEntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/ui/BOAdapter<",
        "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
            ">;I)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    .line 234
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/telguarder/helpers/ui/BOAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    .line 235
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->createHeaderDisplayer()Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->setGroupHeaderDisplayer(Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;)V

    return-void
.end method

.method private acquireViewReferencesFromHolder(Landroid/view/View;Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V
    .locals 1

    const v0, 0x7f0802b9

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->firstLine:Landroid/widget/TextView;

    const v0, 0x7f0802bb

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->secondLine:Landroid/widget/TextView;

    const v0, 0x7f080152

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    const v0, 0x7f0801e4

    .line 324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    return-void
.end method

.method private createOrRetrieveViewHolder(Landroid/view/View;)Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;
    .locals 4

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;)V

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->acquireViewReferencesFromHolder(Landroid/view/View;Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V

    .line 314
    iget-object v1, v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-static {v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$500(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getDeleteClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 355
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$3;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;I)V

    return-object v0
.end method

.method private getFirstLineString(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;)Ljava/lang/String;
    .locals 2

    .line 342
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private setSecondLineTextIfNeeded(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V
    .locals 1

    .line 346
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    invoke-static {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ofBackendKeyword(Ljava/lang/String;)Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->displayableNameId()I

    move-result p1

    .line 349
    iget-object p2, p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->secondLine:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private showAllViews(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V
    .locals 2

    .line 335
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->firstLine:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->secondLine:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showOnlyFirstLine(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V
    .locals 2

    .line 328
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->firstLine:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->secondLine:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public createHeaderDisplayer()Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$1;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;)V

    return-object v0
.end method

.method protected getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)V
    .locals 5

    .line 283
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->createOrRetrieveViewHolder(Landroid/view/View;)Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;

    move-result-object p1

    .line 285
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->showOnlyFirstLine(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V

    .line 288
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    const p3, 0x7f10018c

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v2

    iget v2, v2, Lcom/telguarder/features/rateAndFeedback/ReportResult;->totalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, p3, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    if-ne p3, v2, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {v0}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->isPlaceholderEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->showOnlyFirstLine(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V

    .line 291
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    const p3, 0x7f100112

    invoke-virtual {p2, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->showAllViews(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V

    .line 294
    invoke-direct {p0, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getFirstLineString(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-direct {p0, p2, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->setSecondLineTextIfNeeded(Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;)V

    .line 296
    iget-object p2, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getDeleteClickListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-static {p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$300(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)I

    move-result p2

    const/4 v2, 0x4

    if-ne p3, p2, :cond_2

    .line 298
    iget-object p2, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object p2, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object p2, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->deleting:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object p2, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    move-object p2, v0

    .line 305
    :goto_1
    iget-object p1, p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;->firstLine:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic getItemDisplayed(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 231
    check-cast p2, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->getItemDisplayed(Landroid/view/View;Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;I)V

    return-void
.end method

.method public handleDeletionEnd()V
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->notifyDataSetChanged()V

    .line 389
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$302(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;I)I

    return-void
.end method

.method public prepareHeader(Landroid/view/View;I)V
    .locals 3

    const v0, 0x7f0802ba

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080131

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080132

    .line 259
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez p2, :cond_0

    const p2, 0x7f100037

    .line 261
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const-string p2, ""

    .line 262
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    .line 263
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    const p2, 0x7f100036

    .line 266
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f100032

    .line 267
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f080133

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 269
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockerSwitchOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 270
    new-instance p2, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$2;

    invoke-direct {p2, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter$2;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 p1, 0x0

    .line 276
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
