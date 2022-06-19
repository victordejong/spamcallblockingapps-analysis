.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/view/View$OnClickListener;

.field final synthetic d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

.field final synthetic e:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->e:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->a:I

    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->b:I

    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->c:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 718
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->e:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->a:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0922

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 721
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->b:I

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0601ec

    .line 722
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a05e6

    .line 724
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12046e

    .line 725
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f060088

    .line 726
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 727
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0740

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 731
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->e:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 732
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration;-><init>(I)V

    const/4 v3, -0x1

    .line 2665
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 734
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 735
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$13;->d:Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method
