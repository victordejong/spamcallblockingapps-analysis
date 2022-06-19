.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic n:I

.field final synthetic o:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->o:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->f:Landroidx/recyclerview/widget/RecyclerView;

    iput p4, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->n:I

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 203
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x437a0000    # 250.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final a()V
    .locals 2

    .line 213
    invoke-super {p0}, Landroidx/recyclerview/widget/g;->a()V

    .line 214
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;)V

    const/16 v1, 0x3e8

    .line 222
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final c(I)Landroid/graphics/PointF;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4$1;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 196
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getHorizontalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
