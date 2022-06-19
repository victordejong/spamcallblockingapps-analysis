.class final Lcom/google/android/gms/internal/ads/boq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgr;

.field private final b:Lcom/google/android/gms/internal/ads/mn;

.field private final c:Z

.field private d:Lcom/google/android/gms/internal/ads/aqh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/mn;Z)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->d:Lcom/google/android/gms/internal/ads/aqh;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boq;->a:Lcom/google/android/gms/internal/ads/cgr;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/boq;->b:Lcom/google/android/gms/internal/ads/mn;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/boq;->c:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/aqh;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boq;->d:Lcom/google/android/gms/internal/ads/aqh;

    .line 21
    return-void
.end method

.method public final a(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/boq;->c:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->b:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/mn;->c(Lcom/google/android/gms/dynamic/a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxy;

    const-string/jumbo v1, "Adapter failed to show."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->b:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/mn;->b(Lcom/google/android/gms/dynamic/a;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxy;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbxy;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->d:Lcom/google/android/gms/internal/ads/aqh;

    if-nez v0, :cond_3

    .line 19
    :cond_2
    :goto_1
    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->a:Lcom/google/android/gms/internal/ads/cgr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->d:Lcom/google/android/gms/internal/ads/aqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqh;->a()V

    goto :goto_1
.end method
