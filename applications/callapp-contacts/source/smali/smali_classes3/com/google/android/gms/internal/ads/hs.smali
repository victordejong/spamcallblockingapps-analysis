.class final Lcom/google/android/gms/internal/ads/hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;


# instance fields
.field private a:Z

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/eir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hq;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/eir;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hs;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hs;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hs;->d:Lcom/google/android/gms/internal/ads/eir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/hs;->a:Z

    return-void
.end method


# virtual methods
.method public final zzaf(Z)V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hs;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hs;->a:Z

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hs;->c:Ljava/util/Map;

    const-string v2, "event_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hs;->d:Lcom/google/android/gms/internal/ads/eir;

    check-cast p1, Lcom/google/android/gms/internal/ads/jq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs;->b:Ljava/util/Map;

    const-string v1, "openIntentAsync"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/jq;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/bt;)V
    .locals 0

    return-void
.end method
