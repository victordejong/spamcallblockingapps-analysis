.class final synthetic Lcom/google/android/gms/internal/ads/adm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adn;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adn;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adm;->a:Lcom/google/android/gms/internal/ads/adn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adm;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adm;->a:Lcom/google/android/gms/internal/ads/adn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adm;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/util/Map;)V

    return-void
.end method
