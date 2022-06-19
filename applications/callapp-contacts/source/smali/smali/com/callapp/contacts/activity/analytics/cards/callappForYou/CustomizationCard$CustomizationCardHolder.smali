.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizationCardHolder"
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a02d4

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->e:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0740

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 346
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 347
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const v0, 0x7f0a0922

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0a08ad

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a02ce

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;->d:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
