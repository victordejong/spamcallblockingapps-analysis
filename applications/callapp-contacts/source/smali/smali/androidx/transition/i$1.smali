.class final Landroidx/transition/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/i;


# direct methods
.method constructor <init>(Landroidx/transition/i;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 56
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    invoke-static {v0}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iget-object v0, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iget-object v0, v0, Landroidx/transition/i;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iget-object v0, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iget-object v1, v1, Landroidx/transition/i;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iget-object v0, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/transition/i;->a:Landroid/view/ViewGroup;

    .line 61
    iget-object v0, p0, Landroidx/transition/i$1;->a:Landroidx/transition/i;

    iput-object v1, v0, Landroidx/transition/i;->b:Landroid/view/View;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
