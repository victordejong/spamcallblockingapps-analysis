.class public final Lcom/google/android/gms/internal/ads/aih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aii;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/uw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/uw;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aih;->a:Lcom/google/android/gms/internal/ads/uw;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aih;->a:Lcom/google/android/gms/internal/ads/uw;

    const-string/jumbo v0, "content_url_opted_out"

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/uw;->a(Z)V

    .line 7
    return-void
.end method
