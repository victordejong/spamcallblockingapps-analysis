.class final Landroidx/transition/Visibility$1;
.super Landroidx/transition/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/transition/Visibility;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 441
    iput-object p1, p0, Landroidx/transition/Visibility$1;->d:Landroidx/transition/Visibility;

    iput-object p2, p0, Landroidx/transition/Visibility$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/Visibility$1;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/transition/Visibility$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/transition/Transition;)V
    .locals 3

    .line 459
    iget-object v0, p0, Landroidx/transition/Visibility$1;->c:Landroid/view/View;

    sget v1, Landroidx/transition/o$a;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    iget-object v0, p0, Landroidx/transition/Visibility$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/Visibility$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/transition/ac;->b(Landroid/view/View;)V

    .line 461
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->b(Landroidx/transition/Transition$c;)Landroidx/transition/Transition;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 445
    iget-object v0, p0, Landroidx/transition/Visibility$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/Visibility$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/transition/ac;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 450
    iget-object v0, p0, Landroidx/transition/Visibility$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroidx/transition/Visibility$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/ad;->a(Landroid/view/ViewGroup;)Landroidx/transition/ac;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/Visibility$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/transition/ac;->a(Landroid/view/View;)V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Landroidx/transition/Visibility$1;->d:Landroidx/transition/Visibility;

    invoke-virtual {v0}, Landroidx/transition/Visibility;->g()V

    return-void
.end method
