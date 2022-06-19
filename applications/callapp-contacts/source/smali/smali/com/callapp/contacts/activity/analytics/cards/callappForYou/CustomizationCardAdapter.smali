.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 16
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;

    .line 1038
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;

    .line 1039
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getMaxData()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1046
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getMaxData()I

    move-result v0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    .line 1051
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(I)V

    .line 1052
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getMaxData()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 1053
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2032
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b5

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2033
    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->notifyDataSetChanged()V

    return-void
.end method
