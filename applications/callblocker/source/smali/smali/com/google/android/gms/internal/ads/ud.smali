.class final Lcom/google/android/gms/internal/ads/ud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ud;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ud;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ud;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ud;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 7
    const-string/jumbo v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
