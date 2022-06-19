.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiCardsViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

.field private final b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Landroid/view/View;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a01f5

    .line 325
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const p1, 0x7f0a03cd

    .line 326
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->c:Landroid/widget/TextView;

    const p1, 0x7f0a014c

    .line 327
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->d:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->b:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Landroid/view/View;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->c:Landroid/widget/TextView;

    return-object p0
.end method
