.class public final synthetic Lcom/google/android/gms/internal/ads/zzdbw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhbh:Lcom/google/android/gms/internal/ads/zzdbx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzhbh:Lcom/google/android/gms/internal/ads/zzdbx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbw;->zzhbh:Lcom/google/android/gms/internal/ads/zzdbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbx;->zzatc()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method
