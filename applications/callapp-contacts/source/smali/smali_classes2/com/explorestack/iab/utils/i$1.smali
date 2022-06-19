.class final Lcom/explorestack/iab/utils/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/i;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/i;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    const/4 v1, 0x0

    .line 1017
    iput-boolean v1, v0, Lcom/explorestack/iab/utils/i;->c:Z

    .line 173
    iget-object v0, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    iget-object v0, v0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    iget-object v0, v0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    iget-object v0, v0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/i$1;->a:Lcom/explorestack/iab/utils/i;

    .line 2017
    iget-object v1, v1, Lcom/explorestack/iab/utils/i;->d:Landroid/animation/Animator$AnimatorListener;

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 180
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void
.end method
