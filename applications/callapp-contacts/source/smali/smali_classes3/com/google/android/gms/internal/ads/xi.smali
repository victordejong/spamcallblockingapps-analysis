.class final synthetic Lcom/google/android/gms/internal/ads/xi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xk;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xf;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xf;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/xf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xi;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->a:Lcom/google/android/gms/internal/ads/xf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xi;->b:Ljava/util/Map;

    .line 1018
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/xf;->b:Lcom/google/android/gms/internal/ads/wh;

    .line 2005
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wh;->a:Lcom/google/android/gms/internal/ads/wf;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wf;->a(I)V

    :cond_0
    return-void
.end method
