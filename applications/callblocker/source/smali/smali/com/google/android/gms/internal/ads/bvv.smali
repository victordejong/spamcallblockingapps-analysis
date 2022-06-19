.class public final Lcom/google/android/gms/internal/ads/bvv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bvw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Lcom/google/android/gms/internal/ads/chh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/chh;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvv;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvv;->b:Lcom/google/android/gms/internal/ads/chh;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bvw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvv;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bvy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bvy;-><init>(Lcom/google/android/gms/internal/ads/bvv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bvw;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/bvw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvv;->b:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->j:Lcom/google/android/gms/internal/ads/dyk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bvw;-><init>(Lcom/google/android/gms/internal/ads/dyk;)V

    return-object v0
.end method
