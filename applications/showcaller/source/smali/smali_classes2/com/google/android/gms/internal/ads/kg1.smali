.class final synthetic Lcom/google/android/gms/internal/ads/kg1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/lg1;

.field private final e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lg1;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kg1;->d:Lcom/google/android/gms/internal/ads/lg1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kg1;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kg1;->d:Lcom/google/android/gms/internal/ads/lg1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kg1;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/lg1;->c(Ljava/util/Map;Z)V

    return-void
.end method
