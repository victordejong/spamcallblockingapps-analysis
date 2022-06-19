.class public final Lcom/google/android/gms/internal/ads/b62;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/c62;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Lcom/google/android/gms/internal/ads/xj2;

.field private final c:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final d:Lcom/google/android/gms/internal/ads/th0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/th0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b62;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b62;->b:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/b62;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/b62;->d:Lcom/google/android/gms/internal/ads/th0;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/c62;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/c62;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b62;->b:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->j:Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/b62;->c:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/b62;->d:Lcom/google/android/gms/internal/ads/th0;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/th0;->j()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/c62;-><init>(Lcom/google/android/gms/internal/ads/zzbdr;Lcom/google/android/gms/internal/ads/zzcgz;Z)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/c62;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b62;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/a62;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/a62;-><init>(Lcom/google/android/gms/internal/ads/b62;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
