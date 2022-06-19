.class Landroidx/appcompat/widget/SearchView$f;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1760
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1761
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView$f;->e:I

    .line 1762
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->b:Landroid/graphics/Rect;

    .line 1763
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->d:Landroid/graphics/Rect;

    .line 1764
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->c:Landroid/graphics/Rect;

    .line 1765
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1766
    iput-object p3, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroid/view/View;

    .line 1767
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 1770
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1771
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1772
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->d:Landroid/graphics/Rect;

    iget v1, p0, Landroidx/appcompat/widget/SearchView$f;->e:I

    neg-int v1, v1

    iget v2, p0, Landroidx/appcompat/widget/SearchView$f;->e:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1773
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1774
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    .line 1779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    .line 1784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v1, v2

    move v3, v0

    .line 1805
    :goto_0
    if-eqz v3, :cond_1

    .line 1806
    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1810
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroid/view/View;

    .line 1811
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 1810
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1817
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1819
    :cond_1
    return v0

    .line 1786
    :pswitch_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$f;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1787
    iput-boolean v2, p0, Landroidx/appcompat/widget/SearchView$f;->f:Z

    move v1, v2

    move v3, v2

    .line 1788
    goto :goto_0

    .line 1793
    :pswitch_1
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView$f;->f:Z

    .line 1794
    if-eqz v3, :cond_2

    .line 1795
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$f;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 1796
    goto :goto_0

    .line 1801
    :pswitch_2
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView$f;->f:Z

    .line 1802
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView$f;->f:Z

    :cond_2
    move v1, v2

    goto :goto_0

    .line 1814
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$f;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
