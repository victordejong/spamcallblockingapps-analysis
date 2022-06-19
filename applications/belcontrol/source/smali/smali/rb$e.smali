.class public Lrb$e;
.super Lrb$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets;

.field public c:Lt8;


# direct methods
.method public constructor <init>(Lrb;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lrb$i;-><init>(Lrb;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrb$e;->c:Lt8;

    iput-object p2, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Lrb;Lrb$e;)V
    .locals 1

    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lrb$e;-><init>(Lrb;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final g()Lt8;
    .locals 4

    iget-object v0, p0, Lrb$e;->c:Lt8;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lt8;->a(IIII)Lt8;

    move-result-object v0

    iput-object v0, p0, Lrb$e;->c:Lt8;

    :cond_0
    iget-object v0, p0, Lrb$e;->c:Lt8;

    return-object v0
.end method

.method public h(IIII)Lrb;
    .locals 2

    new-instance v0, Lrb$a;

    iget-object v1, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-static {v1}, Lrb;->p(Landroid/view/WindowInsets;)Lrb;

    move-result-object v1

    invoke-direct {v0, v1}, Lrb$a;-><init>(Lrb;)V

    invoke-virtual {p0}, Lrb$e;->g()Lt8;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lrb;->l(Lt8;IIII)Lt8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrb$a;->c(Lt8;)Lrb$a;

    invoke-virtual {p0}, Lrb$i;->f()Lt8;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lrb;->l(Lt8;IIII)Lt8;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrb$a;->b(Lt8;)Lrb$a;

    invoke-virtual {v0}, Lrb$a;->a()Lrb;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
