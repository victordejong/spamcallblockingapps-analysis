.class Landroidx/j/v;
.super Landroidx/j/ab;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/j/x;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/j/ab;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/j/v;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/j/ab;->d(Landroid/view/View;)Landroidx/j/ab;

    move-result-object p0

    check-cast p0, Landroidx/j/v;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/j/v;->a:Landroidx/j/ab$a;

    invoke-virtual {v0, p1}, Landroidx/j/ab$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/j/v;->a:Landroidx/j/ab$a;

    invoke-virtual {v0, p1}, Landroidx/j/ab$a;->b(Landroid/view/View;)V

    return-void
.end method
