.class final Lcom/google/android/gms/internal/ads/fh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/google/android/gms/internal/ads/vi0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gh0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fh0;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fh0;->e:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fh0;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/v/a;->b(Landroid/content/Context;)Lcom/google/android/gms/ads/v/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fh0;->e:Lcom/google/android/gms/internal/ads/vi0;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fh0;->e:Lcom/google/android/gms/internal/ads/vi0;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
