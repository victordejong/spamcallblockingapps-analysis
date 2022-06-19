.class public final Lcom/google/android/gms/internal/ads/byf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bxz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bxz<",
        "Lcom/google/android/gms/internal/ads/azi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bai;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/byf;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/bai;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/byg;)Ljava/lang/Object;
    .locals 4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/byh;

    sget-object v1, Lcom/google/android/gms/internal/ads/byi;->a:Lcom/google/android/gms/internal/ads/bap;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/byh;-><init>(Lcom/google/android/gms/internal/ads/byf;Lcom/google/android/gms/internal/ads/bap;)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/byf;->b:Lcom/google/android/gms/internal/ads/bai;

    new-instance v2, Lcom/google/android/gms/internal/ads/aof;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bai;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/azj;)Lcom/google/android/gms/internal/ads/azk;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/byk;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/byk;-><init>(Lcom/google/android/gms/internal/ads/byf;Lcom/google/android/gms/internal/ads/azk;)V

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/byg;->a(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/azk;->h()Lcom/google/android/gms/internal/ads/azi;

    move-result-object p1

    return-object p1
.end method
