.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpamCommentHeaderRowViewHolder.java"


# instance fields
.field private mItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;->mItemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget p1, p1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;->headerTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
