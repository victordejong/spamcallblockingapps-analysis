.class public final synthetic Lcom/google/android/gms/internal/ads/zzddw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhck:Lcom/google/android/gms/internal/ads/zzddx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddw;->zzhck:Lcom/google/android/gms/internal/ads/zzddx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddw;->zzhck:Lcom/google/android/gms/internal/ads/zzddx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddx;->zzatj()Lcom/google/android/gms/internal/ads/zzddu;

    move-result-object v0

    return-object v0
.end method
