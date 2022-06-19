.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpamCommentAdRowViewHolder.java"


# instance fields
.field public mBannerContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;->mBannerContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    iget-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdRowViewHolder;->mBannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;->bindAd(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
