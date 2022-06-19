.class public abstract Lyi1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(IIF)V
.end method

.method public abstract c(I)V
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 4

    iget p3, p0, Lyi1;->a:I

    if-eq p1, p3, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    if-ge p3, p1, :cond_2

    :cond_1
    invoke-virtual {p0, p3}, Lyi1;->c(I)V

    iput p1, p0, Lyi1;->a:I

    move p3, p1

    :cond_2
    iget v0, p0, Lyi1;->a:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {p0, p3}, Lyi1;->c(I)V

    iget v0, p0, Lyi1;->b:I

    iput v0, p0, Lyi1;->a:I

    :cond_3
    const/4 v0, -0x1

    iget v2, p0, Lyi1;->a:I

    if-ne v2, p1, :cond_4

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lyi1;->a()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v0, p0, Lyi1;->a:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lyi1;->a:I

    if-le v2, p1, :cond_5

    sub-int/2addr v2, v1

    move v0, p3

    move p3, v2

    :cond_5
    :goto_0
    invoke-virtual {p0, p3, v0, p2}, Lyi1;->b(IIF)V

    iput p1, p0, Lyi1;->b:I

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    iput p1, p0, Lyi1;->a:I

    return-void
.end method
