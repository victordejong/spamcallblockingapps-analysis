.class final Lcom/google/android/gms/internal/ads/yf;
.super Lcom/google/android/gms/ads/internal/util/zza;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/yd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yf;->a:Lcom/google/android/gms/internal/ads/yd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzwp()V
    .locals 6

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/au;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yf;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 1105
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yd;->c:Landroid/content/Context;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yf;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 1106
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->d:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/au;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yf;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 1107
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yf;->a:Lcom/google/android/gms/internal/ads/yd;

    .line 1108
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/yd;->e:Lcom/google/android/gms/internal/ads/ax;

    .line 2033
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/au;->c:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 2034
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/String;

    .line 2004
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3033
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/au;->c:Landroid/content/Context;

    .line 3034
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/au;->d:Ljava/lang/String;

    .line 4032
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/au;->a:Ljava/lang/String;

    .line 4035
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/au;->b:Ljava/util/Map;

    .line 2011
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 2005
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "AfmaVersion can\'t be null or empty. Please set up afmaVersion in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2003
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context can\'t be null. Please set up context in CsiConfiguration."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
