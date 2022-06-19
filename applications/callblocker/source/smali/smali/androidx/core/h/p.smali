.class public Landroidx/core/h/p;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Landroidx/core/h/p;->a:I

    iget v1, p0, Landroidx/core/h/p;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/h/p;->a(Landroid/view/View;I)V

    .line 104
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 115
    iput v1, p0, Landroidx/core/h/p;->b:I

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput v1, p0, Landroidx/core/h/p;->a:I

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/h/p;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 64
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 77
    iput p3, p0, Landroidx/core/h/p;->b:I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput p3, p0, Landroidx/core/h/p;->a:I

    goto :goto_0
.end method
