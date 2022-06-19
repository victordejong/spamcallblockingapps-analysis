.class public Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;


# direct methods
.method public constructor <init>(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p3

    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {v0}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->e(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    const v0, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p2

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_1

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p2

    mul-int p1, p1, p3

    add-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p2

    add-int/2addr p2, p3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->f(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    mul-int p1, p1, p3

    add-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p2}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->d(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)I

    move-result p2

    :goto_1
    int-to-float p2, p2

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p3

    invoke-virtual {p3}, Lzc;->n()Lad;

    move-result-object p3

    invoke-virtual {p3}, Lad;->a()F

    move-result p3

    cmpl-float p3, p3, p1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p3}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p3

    invoke-virtual {p3}, Lzc;->n()Lad;

    move-result-object p3

    invoke-virtual {p3, p1}, Lad;->e(F)Lad;

    :cond_2
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lzc;->n()Lad;

    move-result-object p1

    invoke-virtual {p1}, Lad;->a()F

    move-result p1

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lzc;->n()Lad;

    move-result-object p1

    invoke-virtual {p1, p2}, Lad;->e(F)Lad;

    :cond_3
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lxc;->f()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->g(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lzc;->j()V

    :cond_4
    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lxc;->f()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator$c;->a:Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;

    invoke-static {p1}, Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;->h(Lcom/tbuonomo/viewpagerdotsindicator/WormDotsIndicator;)Lzc;

    move-result-object p1

    invoke-virtual {p1}, Lzc;->j()V

    :cond_5
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
