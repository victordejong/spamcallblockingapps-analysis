.class final synthetic Lcom/google/android/gms/internal/ads/bu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/eu;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eu;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu;->b:Lcom/google/android/gms/internal/ads/eu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bu;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu;->b:Lcom/google/android/gms/internal/ads/eu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/eu;->E6(Ljava/util/Map;)V

    return-void
.end method
