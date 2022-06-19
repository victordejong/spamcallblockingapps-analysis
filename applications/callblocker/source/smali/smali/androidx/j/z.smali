.class Landroidx/j/z;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroidx/j/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/z$a;
    }
.end annotation


# instance fields
.field protected a:Landroidx/j/z$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/j/z$a;

    invoke-direct {v0, p1, p2, p3, p0}, Landroidx/j/z$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/z;)V

    iput-object v0, p0, Landroidx/j/z;->a:Landroidx/j/z$a;

    .line 49
    return-void
.end method

.method static c(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .line 53
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    :goto_1
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static d(Landroid/view/View;)Landroidx/j/z;
    .locals 5

    .prologue
    .line 65
    invoke-static {p0}, Landroidx/j/z;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 69
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    instance-of v4, v0, Landroidx/j/z$a;

    if-eqz v4, :cond_0

    .line 71
    check-cast v0, Landroidx/j/z$a;

    iget-object v0, v0, Landroidx/j/z$a;->e:Landroidx/j/z;

    .line 76
    :goto_1
    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Landroidx/j/u;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Landroidx/j/u;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroidx/j/z;->a:Landroidx/j/z$a;

    invoke-virtual {v0, p1}, Landroidx/j/z$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroidx/j/z;->a:Landroidx/j/z$a;

    invoke-virtual {v0, p1}, Landroidx/j/z$a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method
