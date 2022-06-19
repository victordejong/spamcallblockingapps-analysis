.class public Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/c$d;,
        Lf/c$c;,
        Lf/c$a;,
        Lf/c$b;
    }
.end annotation


# instance fields
.field public final a:Lf/c$a;

.field public final b:Landroidx/drawerlayout/widget/DrawerLayout;

.field public c:Lh/d;

.field public d:Z

.field public e:Z

.field public final f:I

.field public final g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/c;->d:Z

    .line 3
    iput-boolean v0, p0, Lf/c;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lf/c;->h:Z

    if-eqz p3, :cond_0

    .line 5
    new-instance p1, Lf/c$d;

    invoke-direct {p1, p3}, Lf/c$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Lf/c;->a:Lf/c$a;

    .line 6
    new-instance p1, Lf/b;

    invoke-direct {p1, p0}, Lf/b;-><init>(Lf/c;)V

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of p3, p1, Lf/c$b;

    if-eqz p3, :cond_1

    .line 8
    check-cast p1, Lf/c$b;

    invoke-interface {p1}, Lf/c$b;->e()Lf/c$a;

    move-result-object p1

    iput-object p1, p0, Lf/c;->a:Lf/c$a;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p3, Lf/c$c;

    invoke-direct {p3, p1}, Lf/c$c;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lf/c;->a:Lf/c$a;

    .line 10
    :goto_0
    iput-object p2, p0, Lf/c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 11
    iput p4, p0, Lf/c;->f:I

    .line 12
    iput p5, p0, Lf/c;->g:I

    .line 13
    new-instance p1, Lh/d;

    iget-object p2, p0, Lf/c;->a:Lf/c$a;

    invoke-interface {p2}, Lf/c$a;->e()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lh/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf/c;->c:Lh/d;

    .line 14
    iget-object p1, p0, Lf/c;->a:Lf/c$a;

    invoke-interface {p1}, Lf/c$a;->c()Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lf/c;->d:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lf/c;->e(F)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lf/c;->e(F)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lf/c;->e(F)V

    .line 2
    iget-boolean p1, p0, Lf/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lf/c;->f:I

    .line 4
    iget-object v0, p0, Lf/c;->a:Lf/c$a;

    invoke-interface {v0, p1}, Lf/c$a;->d(I)V

    :cond_0
    return-void
.end method

.method public final e(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lf/c;->c:Lh/d;

    const/4 v1, 0x1

    .line 2
    iget-boolean v2, v0, Lh/d;->i:Z

    if-eq v2, v1, :cond_1

    .line 3
    iput-boolean v1, v0, Lh/d;->i:Z

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lf/c;->c:Lh/d;

    const/4 v1, 0x0

    .line 6
    iget-boolean v2, v0, Lh/d;->i:Z

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v1, v0, Lh/d;->i:Z

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/c;->c:Lh/d;

    .line 10
    iget v1, v0, Lh/d;->j:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 11
    iput p1, v0, Lh/d;->j:F

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method
