.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizationCardViewHolder"
.end annotation


# instance fields
.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0922

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->r:Landroid/widget/TextView;

    const v0, 0x7f0a08ad

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->s:Landroid/widget/TextView;

    const v0, 0x7f0a0643

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->t:Landroid/widget/TextView;

    const v0, 0x7f0a06f7

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->u:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->r:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;)Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter$CustomizationCardViewHolder;->u:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    return-object p0
.end method
