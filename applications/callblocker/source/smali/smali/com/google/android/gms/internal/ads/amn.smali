.class public final Lcom/google/android/gms/internal/ads/amn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/amh;)V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/amn;->a:Ljava/util/List;

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amn;->a:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bmv;)Lcom/google/android/gms/internal/ads/bmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/bmu;

    sget-object v1, Lcom/google/android/gms/internal/ads/amq;->a:Lcom/google/android/gms/internal/ads/coe;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bmu;-><init>(Lcom/google/android/gms/internal/ads/bmv;Lcom/google/android/gms/internal/ads/coe;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/box;)Lcom/google/android/gms/internal/ads/bmv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/box",
            "<+",
            "Lcom/google/android/gms/internal/ads/amh;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bmv",
            "<",
            "Lcom/google/android/gms/internal/ads/amn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/bmu;

    sget-object v1, Lcom/google/android/gms/internal/ads/amr;->a:Lcom/google/android/gms/internal/ads/coe;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/bmu;-><init>(Lcom/google/android/gms/internal/ads/bmv;Lcom/google/android/gms/internal/ads/coe;)V

    return-object v0
.end method
