.class Lcom/rey/material/widget/LTabIndicator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/LTabIndicator;->j(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/rey/material/widget/LTabIndicator;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/LTabIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    iput p2, p0, Lcom/rey/material/widget/LTabIndicator$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {p1}, Lcom/rey/material/widget/LTabIndicator;->b(Lcom/rey/material/widget/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget v0, p0, Lcom/rey/material/widget/LTabIndicator$a;->b:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {p1}, Lcom/rey/material/widget/LTabIndicator;->c(Lcom/rey/material/widget/LTabIndicator;)Lcom/rey/material/widget/LTabIndicator$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {p1}, Lcom/rey/material/widget/LTabIndicator;->c(Lcom/rey/material/widget/LTabIndicator;)Lcom/rey/material/widget/LTabIndicator$b;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/LTabIndicator$a;->b:I

    invoke-interface {p1, v0}, Lcom/rey/material/widget/LTabIndicator$b;->a(I)V

    :cond_0
    iget-object p1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {p1}, Lcom/rey/material/widget/LTabIndicator;->b(Lcom/rey/material/widget/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/widget/LTabIndicator$a;->b:I

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator$a;->c:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v1}, Lcom/rey/material/widget/LTabIndicator;->d(Lcom/rey/material/widget/LTabIndicator;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
