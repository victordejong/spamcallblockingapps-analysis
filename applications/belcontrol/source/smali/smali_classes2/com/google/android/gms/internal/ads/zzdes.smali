.class public final synthetic Lcom/google/android/gms/internal/ads/zzdes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhcy:Lcom/google/android/gms/internal/ads/zzdet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdes;->zzhcy:Lcom/google/android/gms/internal/ads/zzdet;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdes;->zzhcy:Lcom/google/android/gms/internal/ads/zzdet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdet;->zzatn()Lcom/google/android/gms/internal/ads/zzdeq;

    move-result-object v0

    return-object v0
.end method
