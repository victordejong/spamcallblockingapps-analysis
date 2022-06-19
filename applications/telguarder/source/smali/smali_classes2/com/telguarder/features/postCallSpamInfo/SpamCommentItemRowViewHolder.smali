.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpamCommentItemRowViewHolder.java"


# instance fields
.field private mItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;->mItemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentText:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentItemRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentDate:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;->mCommentDate:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
