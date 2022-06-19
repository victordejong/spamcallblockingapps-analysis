.class Landroidx/j/c$10;
.super Landroidx/j/n;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/c;->a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/j/c;


# direct methods
.method constructor <init>(Landroidx/j/c;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 394
    iput-object p1, p0, Landroidx/j/c$10;->c:Landroidx/j/c;

    iput-object p2, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/j/c$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;Z)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/c$10;->a:Z

    .line 401
    return-void
.end method

.method public b(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Landroidx/j/c$10;->a:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;Z)V

    .line 408
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 409
    return-void
.end method

.method public c(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;Z)V

    .line 414
    return-void
.end method

.method public d(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;Z)V

    .line 419
    return-void
.end method
