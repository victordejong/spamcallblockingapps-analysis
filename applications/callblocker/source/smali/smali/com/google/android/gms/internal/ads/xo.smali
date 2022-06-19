.class public final Lcom/google/android/gms/internal/ads/xo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xo;->a:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->g:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 6
    return-void
.end method

.method private static b(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    goto :goto_0
.end method

.method private final e()V
    .locals 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->c:Z

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xo;->b(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/google/android/gms/internal/ads/yw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/yw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->c:Z

    .line 32
    :cond_2
    return-void
.end method

.method private final f()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->c:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xo;->b(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->e:Z

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->d:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xo;->e()V

    .line 12
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->b:Landroid/app/Activity;

    .line 8
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->e:Z

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xo;->f()V

    .line 15
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->d:Z

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->e:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xo;->e()V

    .line 19
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->d:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xo;->f()V

    .line 22
    return-void
.end method
