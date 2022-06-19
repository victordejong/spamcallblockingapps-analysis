.class public final synthetic Lcom/google/android/gms/internal/ads/zzddn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhcf:Lcom/google/android/gms/internal/ads/zzddk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzhcf:Lcom/google/android/gms/internal/ads/zzddk;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzhcf:Lcom/google/android/gms/internal/ads/zzddk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddk;->zzath()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v0

    return-object v0
.end method
