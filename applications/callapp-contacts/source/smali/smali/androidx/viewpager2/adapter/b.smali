.class public final Landroidx/viewpager2/adapter/b;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/viewpager2/adapter/b;
    .locals 2

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 p0, 0x0

    .line 42
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setSaveEnabled(Z)V

    .line 43
    new-instance p0, Landroidx/viewpager2/adapter/b;

    invoke-direct {p0, v0}, Landroidx/viewpager2/adapter/b;-><init>(Landroid/widget/FrameLayout;)V

    return-object p0
.end method
