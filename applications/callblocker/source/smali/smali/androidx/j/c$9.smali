.class Landroidx/j/c$9;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Landroidx/j/c;

.field private h:Z


# direct methods
.method constructor <init>(Landroidx/j/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Landroidx/j/c$9;->g:Landroidx/j/c;

    iput-object p2, p0, Landroidx/j/c$9;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/j/c$9;->b:Landroid/graphics/Rect;

    iput p4, p0, Landroidx/j/c$9;->c:I

    iput p5, p0, Landroidx/j/c$9;->d:I

    iput p6, p0, Landroidx/j/c$9;->e:I

    iput p7, p0, Landroidx/j/c$9;->f:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/c$9;->h:Z

    .line 376
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 380
    iget-boolean v0, p0, Landroidx/j/c$9;->h:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Landroidx/j/c$9;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/j/c$9;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 382
    iget-object v0, p0, Landroidx/j/c$9;->a:Landroid/view/View;

    iget v1, p0, Landroidx/j/c$9;->c:I

    iget v2, p0, Landroidx/j/c$9;->d:I

    iget v3, p0, Landroidx/j/c$9;->e:I

    iget v4, p0, Landroidx/j/c$9;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/j/ac;->a(Landroid/view/View;IIII)V

    .line 385
    :cond_0
    return-void
.end method
