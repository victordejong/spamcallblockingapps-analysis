.class public Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->j(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->a:I

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lg40;

    move-result-object v0

    invoke-virtual {v0}, Lg40;->e()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->b:Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;->k(Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/DotsIndicator$b;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
