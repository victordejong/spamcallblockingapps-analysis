.class final synthetic Lcom/google/android/gms/internal/ads/bel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bef;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bef;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bel;->a:Lcom/google/android/gms/internal/ads/bef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bel;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzam(Z)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bel;->a:Lcom/google/android/gms/internal/ads/bef;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bel;->b:Ljava/util/Map;

    .line 1076
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "messageType"

    const-string/jumbo v3, "validatorHtmlLoaded"

    .line 1077
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "id"

    .line 1078
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bef;->b:Lcom/google/android/gms/internal/ads/bgy;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bgy;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
