.class public Lrb$f;
.super Lrb$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public d:Lt8;


# direct methods
.method public constructor <init>(Lrb;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrb$e;-><init>(Lrb;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrb$f;->d:Lt8;

    return-void
.end method

.method public constructor <init>(Lrb;Lrb$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrb$e;-><init>(Lrb;Lrb$e;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrb$f;->d:Lt8;

    return-void
.end method


# virtual methods
.method public b()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lrb;->p(Landroid/view/WindowInsets;)Lrb;

    move-result-object v0

    return-object v0
.end method

.method public c()Lrb;
    .locals 1

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lrb;->p(Landroid/view/WindowInsets;)Lrb;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lt8;
    .locals 4

    iget-object v0, p0, Lrb$f;->d:Lt8;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lt8;->a(IIII)Lt8;

    move-result-object v0

    iput-object v0, p0, Lrb$f;->d:Lt8;

    :cond_0
    iget-object v0, p0, Lrb$f;->d:Lt8;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
