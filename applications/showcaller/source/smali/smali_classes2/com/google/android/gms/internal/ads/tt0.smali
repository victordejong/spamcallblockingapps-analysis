.class public final Lcom/google/android/gms/internal/ads/tt0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pt0;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/q1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tt0;->a:Lcom/google/android/gms/ads/internal/util/q1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tt0;->a:Lcom/google/android/gms/ads/internal/util/q1;

    const-string v1, "content_vertical_opted_out"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/q1;->b0(Z)V

    return-void
.end method
