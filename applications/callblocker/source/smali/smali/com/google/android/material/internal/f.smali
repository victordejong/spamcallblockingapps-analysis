.class public final Lcom/google/android/material/internal/f;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/f$a;
    }
.end annotation


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/material/internal/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/material/internal/f$a;

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/f;->b:Ljava/util/ArrayList;

    .line 41
    iput-object v1, p0, Lcom/google/android/material/internal/f;->c:Lcom/google/android/material/internal/f$a;

    .line 42
    iput-object v1, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Lcom/google/android/material/internal/f$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/f$1;-><init>(Lcom/google/android/material/internal/f;)V

    iput-object v0, p0, Lcom/google/android/material/internal/f;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private a(Lcom/google/android/material/internal/f$a;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p1, Lcom/google/android/material/internal/f$a;->b:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    .line 94
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 95
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/f;->a:Landroid/animation/ValueAnimator;

    .line 114
    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 5

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 71
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    .line 72
    iget-object v0, p0, Lcom/google/android/material/internal/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/f$a;

    .line 73
    iget-object v4, v0, Lcom/google/android/material/internal/f$a;->a:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/internal/f;->c:Lcom/google/android/material/internal/f$a;

    if-ne v0, v1, :cond_2

    .line 90
    :cond_0
    :goto_2
    return-void

    .line 71
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/internal/f;->c:Lcom/google/android/material/internal/f$a;

    if-eqz v1, :cond_3

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/internal/f;->b()V

    .line 85
    :cond_3
    iput-object v0, p0, Lcom/google/android/material/internal/f;->c:Lcom/google/android/material/internal/f$a;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/f;->a(Lcom/google/android/material/internal/f$a;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a([ILandroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/material/internal/f$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/f$a;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/material/internal/f;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
