.class final synthetic Lcom/google/android/gms/internal/ads/oo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ro0;

.field private final b:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ro0;Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oo0;->a:Lcom/google/android/gms/internal/ads/ro0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/oo0;->b:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oo0;->a:Lcom/google/android/gms/internal/ads/ro0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oo0;->b:Lcom/google/android/gms/internal/ads/jt;

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/ro0;->a(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/jt;Ljava/util/Map;)V

    return-void
.end method
