.class final Lcom/google/android/gms/internal/ads/acz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/acs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acs;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/acs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acz;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/acz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3
    check-cast p1, Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acz;->c:Lcom/google/android/gms/internal/ads/acs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acz;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acz;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/internal/ads/acs;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 2
    return-void
.end method
