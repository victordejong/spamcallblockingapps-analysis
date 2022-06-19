.class final Lcom/google/android/gms/internal/ads/xh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/xf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xf;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xh;->b:Lcom/google/android/gms/internal/ads/xf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xh;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xh;->b:Lcom/google/android/gms/internal/ads/xf;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xh;->b:Lcom/google/android/gms/internal/ads/xf;

    .line 1024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xf;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xk;

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xh;->a:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/google/android/gms/internal/ads/xk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
