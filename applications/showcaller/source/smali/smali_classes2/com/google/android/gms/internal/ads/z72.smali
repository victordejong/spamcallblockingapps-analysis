.class public final Lcom/google/android/gms/internal/ads/z72;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/a82;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Lcom/google/android/gms/internal/ads/xj2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/xj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z72;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z72;->b:Lcom/google/android/gms/internal/ads/xj2;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/a82;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a82;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z72;->b:Lcom/google/android/gms/internal/ads/xj2;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/n;->d(Lcom/google/android/gms/internal/ads/xj2;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requester_type_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/a82;-><init>(Z)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/a82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z72;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/y72;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/y72;-><init>(Lcom/google/android/gms/internal/ads/z72;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
