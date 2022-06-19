.class final Lcom/explorestack/iab/utils/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/a$a;

.field final synthetic b:Lcom/explorestack/iab/utils/a;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/a;Lcom/explorestack/iab/utils/a$a;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    iput-object p2, p0, Lcom/explorestack/iab/utils/a$3;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    iget-object v1, p0, Lcom/explorestack/iab/utils/a$3;->a:Lcom/explorestack/iab/utils/a$a;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;FLcom/explorestack/iab/utils/a$a;Z)V

    .line 260
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$3;->a:Lcom/explorestack/iab/utils/a$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a$a;->c()V

    .line 261
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$3;->a:Lcom/explorestack/iab/utils/a$a;

    .line 1360
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/a$a;->a(I)V

    .line 262
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    invoke-static {v0}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    invoke-static {v0}, Lcom/explorestack/iab/utils/a;->b(Lcom/explorestack/iab/utils/a;)Z

    .line 264
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v0, 0x534

    .line 265
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 266
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    invoke-static {p1}, Lcom/explorestack/iab/utils/a;->c(Lcom/explorestack/iab/utils/a;)F

    move-result v0

    add-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;F)F

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/explorestack/iab/utils/a$3;->b:Lcom/explorestack/iab/utils/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/a;->a(Lcom/explorestack/iab/utils/a;F)F

    return-void
.end method
