.class Landroidx/core/view/ac$f;
.super Landroidx/core/view/ac$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field final b:Landroid/view/WindowInsets;

.field private c:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V
    .locals 0

    .line 670
    invoke-direct {p0, p1}, Landroidx/core/view/ac$e;-><init>(Landroidx/core/view/ac;)V

    const/4 p1, 0x0

    .line 667
    iput-object p1, p0, Landroidx/core/view/ac$f;->c:Landroidx/core/graphics/b;

    .line 671
    iput-object p2, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/ac;Landroidx/core/view/ac$f;)V
    .locals 1

    .line 675
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/ac$f;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/view/ac;
    .locals 2

    .line 699
    new-instance v0, Landroidx/core/view/ac$a;

    iget-object v1, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/ac$a;-><init>(Landroidx/core/view/ac;)V

    .line 700
    invoke-virtual {p0}, Landroidx/core/view/ac$f;->g()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/ac;->a(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ac$a;->a(Landroidx/core/graphics/b;)Landroidx/core/view/ac$a;

    .line 701
    invoke-virtual {p0}, Landroidx/core/view/ac$f;->h()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/ac;->a(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;

    move-result-object p1

    .line 1970
    iget-object p2, v0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    invoke-virtual {p2, p1}, Landroidx/core/view/ac$b;->b(Landroidx/core/graphics/b;)V

    .line 1996
    iget-object p1, v0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    invoke-virtual {p1}, Landroidx/core/view/ac$b;->a()Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method

.method a()Z
    .locals 1

    .line 680
    iget-object v0, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method final g()Landroidx/core/graphics/b;
    .locals 4

    .line 686
    iget-object v0, p0, Landroidx/core/view/ac$f;->c:Landroidx/core/graphics/b;

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    .line 688
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    .line 689
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    .line 690
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    .line 691
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 687
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/ac$f;->c:Landroidx/core/graphics/b;

    .line 693
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ac$f;->c:Landroidx/core/graphics/b;

    return-object v0
.end method
