.class public final Lcom/explorestack/iab/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/n$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field final b:Lcom/explorestack/iab/utils/n$a;

.field public c:F

.field public d:J

.field e:J

.field public final f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private g:Z

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/explorestack/iab/utils/n$a;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/n;->g:Z

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/explorestack/iab/utils/n;->c:F

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/explorestack/iab/utils/n;->d:J

    .line 26
    iput-wide v0, p0, Lcom/explorestack/iab/utils/n;->e:J

    .line 81
    new-instance v0, Lcom/explorestack/iab/utils/n$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/n$1;-><init>(Lcom/explorestack/iab/utils/n;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/n;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 89
    new-instance v1, Lcom/explorestack/iab/utils/n$2;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/utils/n$2;-><init>(Lcom/explorestack/iab/utils/n;)V

    iput-object v1, p0, Lcom/explorestack/iab/utils/n;->h:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    .line 30
    iput-object p2, p0, Lcom/explorestack/iab/utils/n;->b:Lcom/explorestack/iab/utils/n$a;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/n;->c()V

    return-void
.end method

.method private d()Z
    .locals 5

    .line 61
    iget-wide v0, p0, Lcom/explorestack/iab/utils/n;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/explorestack/iab/utils/n;->e:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/explorestack/iab/utils/n;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/n;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/n;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final c()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 70
    iget-boolean v1, p0, Lcom/explorestack/iab/utils/n;->g:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 73
    :cond_0
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/n;->g:Z

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/n;->b()V

    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/iab/utils/n;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/n;->a()V

    :cond_2
    return-void
.end method
