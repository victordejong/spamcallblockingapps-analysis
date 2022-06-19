.class public final Lcom/google/android/gms/internal/ads/sx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sx;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sx;->c:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sx;->d:Z

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sx;->b:Ljava/lang/Object;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/sx;->a(Z)V

    .line 21
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sx;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sx;->d:Z

    if-ne v0, p1, :cond_1

    .line 12
    monitor-exit v1

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/sx;->d:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    monitor-exit v1

    goto :goto_0

    .line 16
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sx;->d:Z

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sx;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sx;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ta;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->A()Lcom/google/android/gms/internal/ads/ta;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sx;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sx;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ta;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
