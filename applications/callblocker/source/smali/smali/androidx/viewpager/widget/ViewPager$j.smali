.class Landroidx/viewpager/widget/ViewPager$j;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 4

    .prologue
    .line 3160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$c;

    .line 3161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$c;

    .line 3162
    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    iget-boolean v3, v1, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eq v2, v3, :cond_1

    .line 3163
    iget-boolean v0, v0, Landroidx/viewpager/widget/ViewPager$c;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3165
    :goto_0
    return v0

    .line 3163
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 3165
    :cond_1
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$c;->e:I

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$c;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3157
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$j;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
