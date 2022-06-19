.class final Lcom/viewpagerindicator/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    check-cast p1, Lcom/viewpagerindicator/TabPageIndicator$b;

    .line 58
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1280
    iget p1, p1, Lcom/viewpagerindicator/TabPageIndicator$b;->a:I

    .line 60
    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/TabPageIndicator;->a(Lcom/viewpagerindicator/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->b(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$1;->a:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->b(Lcom/viewpagerindicator/TabPageIndicator;)Lcom/viewpagerindicator/TabPageIndicator$a;

    :cond_0
    return-void
.end method
