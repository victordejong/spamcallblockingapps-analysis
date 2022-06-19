.class public final Lcom/google/android/gms/internal/ads/wl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eeg;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wl;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wl;->d:Z

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 0

    .line 20
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/eeh;->j:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/wl;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wl;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/wl;->d:Z

    if-ne v1, p1, :cond_1

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/wl;->d:Z

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wl;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    monitor-exit v0

    return-void

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/wl;->d:Z

    if-eqz p1, :cond_4

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wl;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wl;->a:Ljava/lang/String;

    .line 1075
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1077
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/wo;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "beginAdUnitExposure"

    .line 1078
    new-instance v3, Lcom/google/android/gms/internal/ads/wt;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/wt;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/wo$a;)V

    goto :goto_0

    :cond_3
    const-string v3, "beginAdUnitExposure"

    .line 1079
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlt()Lcom/google/android/gms/internal/ads/wo;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wl;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wl;->a:Ljava/lang/String;

    .line 1081
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1083
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/wo;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "endAdUnitExposure"

    .line 1084
    new-instance v3, Lcom/google/android/gms/internal/ads/ww;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/ww;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/wo$a;)V

    goto :goto_0

    :cond_5
    const-string v3, "endAdUnitExposure"

    .line 1085
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
