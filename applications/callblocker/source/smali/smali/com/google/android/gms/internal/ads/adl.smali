.class final Lcom/google/android/gms/internal/ads/adl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/adj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adl;->a:Lcom/google/android/gms/internal/ads/adj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 3
    if-eqz p2, :cond_1

    .line 4
    const-string/jumbo v0, "height"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adl;->a:Lcom/google/android/gms/internal/ads/adj;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adl;->a:Lcom/google/android/gms/internal/ads/adj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/adj;->a(Lcom/google/android/gms/internal/ads/adj;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adl;->a:Lcom/google/android/gms/internal/ads/adj;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/adj;->a(Lcom/google/android/gms/internal/ads/adj;I)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adl;->a:Lcom/google/android/gms/internal/ads/adj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/adj;->requestLayout()V

    .line 11
    :cond_0
    monitor-exit v1

    .line 14
    :cond_1
    :goto_0
    return-void

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string/jumbo v1, "Exception occurred while getting webview content height"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
