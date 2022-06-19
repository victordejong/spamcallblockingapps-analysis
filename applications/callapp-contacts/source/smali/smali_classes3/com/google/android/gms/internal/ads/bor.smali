.class final Lcom/google/android/gms/internal/ads/bor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/auf;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/wo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/wo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bor;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bor;->b:Lcom/google/android/gms/internal/ads/wo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 4

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/coz;->d:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bor;->b:Lcom/google/android/gms/internal/ads/wo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bor;->a:Landroid/content/Context;

    .line 1065
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->af:Lcom/google/android/gms/internal/ads/af;

    .line 1066
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 1067
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/wo;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1071
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wo;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bor;->b:Lcom/google/android/gms/internal/ads/wo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bor;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coz;->d:Ljava/lang/String;

    const-string v2, "_aq"

    const/4 v3, 0x0

    .line 1182
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    return-void
.end method
