.class public Lcom/telguarder/features/rateAndFeedback/ReportResult;
.super Ljava/lang/Object;
.source "ReportResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;
    }
.end annotation


# instance fields
.field public numbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private numberListTheaSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;",
            ">;)Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 52
    iget-object v5, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    iget-object v6, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    iget-object v5, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_3
    iget-object v5, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    iget-object v6, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    iget-object v5, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    if-nez v5, :cond_4

    iget-object v3, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_4
    iget-object v3, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    iget-object v5, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_0

    return v4

    :cond_6
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 43
    :cond_1
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    .line 44
    iget v1, p0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->totalCount:I

    iget v3, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->totalCount:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numberListTheaSame(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
