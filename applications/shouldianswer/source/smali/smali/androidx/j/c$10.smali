.class Landroidx/j/c$10;
.super Landroidx/j/o;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/c;->createAnimator(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;)Landroid/animation/Animator;
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
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/j/c$10;->c:Landroidx/j/c;

    iput-object p2, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/j/o;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Landroidx/j/c$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/n;)V
    .locals 1

    .line 396
    iget-object p1, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/j/y;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Landroidx/j/c$10;->a:Z

    return-void
.end method

.method public b(Landroidx/j/n;)V
    .locals 2

    .line 402
    iget-boolean v0, p0, Landroidx/j/c$10;->a:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/y;->a(Landroid/view/ViewGroup;Z)V

    .line 405
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/n;->removeListener(Landroidx/j/n$d;)Landroidx/j/n;

    return-void
.end method

.method public c(Landroidx/j/n;)V
    .locals 1

    .line 410
    iget-object p1, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/j/y;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Landroidx/j/n;)V
    .locals 1

    .line 415
    iget-object p1, p0, Landroidx/j/c$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/j/y;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
