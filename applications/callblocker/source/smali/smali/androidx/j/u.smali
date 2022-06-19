.class Landroidx/j/u;
.super Landroidx/j/z;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/j/w;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/j/z;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 29
    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/j/u;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Landroidx/j/z;->d(Landroid/view/View;)Landroidx/j/z;

    move-result-object v0

    check-cast v0, Landroidx/j/u;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroidx/j/u;->a:Landroidx/j/z$a;

    invoke-virtual {v0, p1}, Landroidx/j/z$a;->a(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroidx/j/u;->a:Landroidx/j/z$a;

    invoke-virtual {v0, p1}, Landroidx/j/z$a;->b(Landroid/view/View;)V

    .line 43
    return-void
.end method
