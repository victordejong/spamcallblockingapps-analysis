.class final synthetic Lcom/google/android/gms/internal/ads/bcc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dtr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/act;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcc;->a:Lcom/google/android/gms/internal/ads/act;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dtt;)V
    .locals 4

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bcc;->a:Lcom/google/android/gms/internal/ads/act;

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-string/jumbo v3, "isVisible"

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/dtt;->j:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string/jumbo v0, "onAdVisibilityChanged"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    return-void

    .line 3
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
