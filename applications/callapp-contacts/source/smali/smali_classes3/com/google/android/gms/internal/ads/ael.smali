.class final synthetic Lcom/google/android/gms/internal/ads/ael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aem;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aem;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ael;->a:Lcom/google/android/gms/internal/ads/aem;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ael;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ael;->a:Lcom/google/android/gms/internal/ads/aem;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ael;->b:Ljava/util/Map;

    .line 1132
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/abb;

    const-string v2, "pubVideoCmd"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
