.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpamCommentProgressRowViewHolder.java"


# instance fields
.field private mOrangeProgressBar:Landroid/widget/ProgressBar;

.field private mRedProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0800d4

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mRedProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0800d3

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mOrangeProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder$1;->$SwitchMap$com$telguarder$features$postCallSpamInfo$SpamCommentProgressData$ProgressState:[I

    iget-object p1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;->mProgressState:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mOrangeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mRedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mRedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mOrangeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mOrangeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressRowViewHolder;->mRedProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
