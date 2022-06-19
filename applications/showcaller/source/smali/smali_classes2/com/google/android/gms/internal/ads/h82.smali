.class public final Lcom/google/android/gms/internal/ads/h82;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/i82;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Lcom/google/android/gms/internal/ads/lq1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/lq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h82;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h82;->b:Lcom/google/android/gms/internal/ads/lq1;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/i82;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/i82;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h82;->b:Lcom/google/android/gms/internal/ads/lq1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lq1;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/h82;->b:Lcom/google/android/gms/internal/ads/lq1;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lq1;->d()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->n()Lcom/google/android/gms/ads/internal/util/a0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/util/a0;->k()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/i82;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/i82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h82;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/g82;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/g82;-><init>(Lcom/google/android/gms/internal/ads/h82;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
