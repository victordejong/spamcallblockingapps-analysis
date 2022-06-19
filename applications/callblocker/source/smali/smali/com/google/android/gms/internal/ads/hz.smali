.class final Lcom/google/android/gms/internal/ads/hz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/hr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hz;->b:Lcom/google/android/gms/internal/ads/hr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hz;->b:Lcom/google/android/gms/internal/ads/hr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hr;->a(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hz;->a:Ljava/lang/String;

    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/act;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    return-void
.end method
