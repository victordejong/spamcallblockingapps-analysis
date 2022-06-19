.class Landroidx/core/view/ac$g;
.super Landroidx/core/view/ac$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V
    .locals 0

    .line 711
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ac$f;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Landroidx/core/view/ac$g;->c:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/ac;Landroidx/core/view/ac$g;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ac$f;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$f;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Landroidx/core/view/ac$g;->c:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 720
    iget-object v0, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method c()Landroidx/core/view/ac;
    .locals 1

    .line 732
    iget-object v0, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object v0

    return-object v0
.end method

.method d()Landroidx/core/view/ac;
    .locals 1

    .line 726
    iget-object v0, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object v0

    return-object v0
.end method

.method final h()Landroidx/core/graphics/b;
    .locals 4

    .line 738
    iget-object v0, p0, Landroidx/core/view/ac$g;->c:Landroidx/core/graphics/b;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    .line 740
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    .line 741
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    .line 742
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/ac$g;->b:Landroid/view/WindowInsets;

    .line 743
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 739
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/ac$g;->c:Landroidx/core/graphics/b;

    .line 745
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ac$g;->c:Landroidx/core/graphics/b;

    return-object v0
.end method
