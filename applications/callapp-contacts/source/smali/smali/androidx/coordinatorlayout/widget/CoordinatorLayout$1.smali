.class final Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 3312
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 4

    .line 3316
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3384
    iget-object v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Landroidx/core/view/ac;

    invoke-static {v0, p2}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3385
    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Landroidx/core/view/ac;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4428
    iget-object v2, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v2}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v2

    .line 4141
    iget v2, v2, Landroidx/core/graphics/b;->c:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3386
    :goto_0
    iput-boolean v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 3387
    iget-boolean v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 5216
    iget-object v0, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4858
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 4859
    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4860
    invoke-static {v2}, Landroidx/core/view/v;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4861
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 5952
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v2, :cond_2

    .line 4866
    invoke-static {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/core/view/ac;)Landroidx/core/view/ac;

    move-result-object p2

    .line 6216
    iget-object v2, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v2}, Landroidx/core/view/ac$e;->b()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3391
    :cond_3
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    :cond_4
    return-object p2
.end method
