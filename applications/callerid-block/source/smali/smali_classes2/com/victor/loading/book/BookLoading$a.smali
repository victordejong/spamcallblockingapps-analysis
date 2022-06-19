.class Lcom/victor/loading/book/BookLoading$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/victor/loading/book/BookLoading;->e(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/victor/loading/book/BookLoading;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/victor/loading/book/BookLoading$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/victor/loading/book/BookLoading$a;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/victor/loading/book/BookLoading$a;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/victor/loading/book/BookLoading$a;->a:Z

    iget-object p1, p0, Lcom/victor/loading/book/BookLoading$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method
