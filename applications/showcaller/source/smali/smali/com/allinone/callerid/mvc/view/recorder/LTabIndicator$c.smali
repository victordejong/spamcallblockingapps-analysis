.class Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;
.super Ljava/lang/Object;
.source "LTabIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;-><init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->e(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0, p2}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->f(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;F)F

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->g(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 5
    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;II)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->d:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$i;->a(IFI)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->b(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->h(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;II)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->d:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->c(I)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->i(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$c;->d:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->d:Landroidx/viewpager/widget/ViewPager$i;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$i;->d(I)V

    :cond_0
    return-void
.end method
