.class public final Lcom/google/android/gms/internal/ads/gc2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/hc2;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/s03;

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/gms/internal/ads/dm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dm;Lcom/google/android/gms/internal/ads/s03;Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gc2;->c:Lcom/google/android/gms/internal/ads/dm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gc2;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gc2;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/hc2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gc2;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/fc2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/fc2;-><init>(Lcom/google/android/gms/internal/ads/gc2;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
