.class Landroidx/j/aj$1;
.super Landroidx/j/n;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroidx/j/s;ILandroidx/j/s;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/j/aj;


# direct methods
.method constructor <init>(Landroidx/j/aj;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Landroidx/j/aj$1;->d:Landroidx/j/aj;

    iput-object p2, p0, Landroidx/j/aj$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/j/aj$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Landroidx/j/aj$1;->c:Landroid/view/View;

    sget v1, Landroidx/j/j$a;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Landroidx/j/aj$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/x;->a(Landroid/view/ViewGroup;)Landroidx/j/w;

    move-result-object v0

    iget-object v1, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/j/w;->b(Landroid/view/View;)V

    .line 458
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 459
    return-void
.end method

.method public c(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Landroidx/j/aj$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/x;->a(Landroid/view/ViewGroup;)Landroidx/j/w;

    move-result-object v0

    iget-object v1, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/j/w;->b(Landroid/view/View;)V

    .line 443
    return-void
.end method

.method public d(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Landroidx/j/aj$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/x;->a(Landroid/view/ViewGroup;)Landroidx/j/w;

    move-result-object v0

    iget-object v1, p0, Landroidx/j/aj$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/j/w;->a(Landroid/view/View;)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Landroidx/j/aj$1;->d:Landroidx/j/aj;

    invoke-virtual {v0}, Landroidx/j/aj;->l()V

    goto :goto_0
.end method
