.class public Lcarbon/widget/BackdropLayout;
.super Lcarbon/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/BackdropLayout$a;
    }
.end annotation


# instance fields
.field public S:Lcarbon/widget/BackdropLayout_Back;

.field public T:Lcarbon/widget/BackdropLayout_Front;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcarbon/widget/BackdropLayout$a;->a:Lcarbon/widget/BackdropLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcarbon/widget/BackdropLayout$a;->a:Lcarbon/widget/BackdropLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcarbon/widget/BackdropLayout$a;->a:Lcarbon/widget/BackdropLayout$a;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Lcarbon/widget/BackdropLayout_Back;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/widget/BackdropLayout;->S:Lcarbon/widget/BackdropLayout_Back;

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcarbon/widget/BackdropLayout_Back;

    iput-object v0, p0, Lcarbon/widget/BackdropLayout;->S:Lcarbon/widget/BackdropLayout_Back;

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    instance-of v0, p1, Lcarbon/widget/BackdropLayout_Front;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcarbon/widget/BackdropLayout;->T:Lcarbon/widget/BackdropLayout_Front;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcarbon/widget/BackdropLayout_Front;

    iput-object v0, p0, Lcarbon/widget/BackdropLayout;->T:Lcarbon/widget/BackdropLayout_Front;

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
