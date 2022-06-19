.class public Landroidx/appcompat/widget/LinearLayoutCompat$a;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/LinearLayoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public g:F

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 1807
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1787
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1808
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 1809
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1793
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1787
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1794
    sget-object v0, Landroidx/appcompat/a$j;->LinearLayoutCompat_Layout:[I

    .line 1795
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1797
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->g:F

    .line 1798
    sget v1, Landroidx/appcompat/a$j;->LinearLayoutCompat_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1800
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1801
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1830
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1787
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->h:I

    .line 1831
    return-void
.end method
