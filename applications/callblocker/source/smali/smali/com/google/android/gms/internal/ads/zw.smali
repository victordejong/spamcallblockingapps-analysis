.class public final Lcom/google/android/gms/internal/ads/zw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/aad;

.field private final c:Landroid/view/ViewGroup;

.field private d:Lcom/google/android/gms/internal/ads/zq;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/zq;)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zw;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zw;->c:Landroid/view/ViewGroup;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/act;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zw;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/zq;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zq;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    return-object v0
.end method

.method public final a(IIII)V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zq;->a(IIII)V

    .line 13
    :cond_0
    return-void
.end method

.method public final a(IIIIIZLcom/google/android/gms/internal/ads/aae;)V
    .locals 7

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    if-eqz v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aad;->e()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpr2"

    aput-object v4, v2, v3

    .line 19
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j;->a(Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/m;[Ljava/lang/String;)Z

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    .line 21
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/aad;->i()Lcom/google/android/gms/internal/ads/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/p;->a()Lcom/google/android/gms/internal/ads/o;

    move-result-object v5

    move v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aad;IZLcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/aae;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zq;->a(IIII)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/aad;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aad;->a(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zq;->i()V

    .line 31
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zq;->n()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->d:Lcom/google/android/gms/internal/ads/zq;

    .line 37
    :cond_0
    return-void
.end method
