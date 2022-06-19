.class public final synthetic Lcom/google/android/gms/internal/ads/zzbcf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzenu:Lcom/google/android/gms/internal/ads/zzbcg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzenu:Lcom/google/android/gms/internal/ads/zzbcg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcf;->zzenu:Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzach()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
