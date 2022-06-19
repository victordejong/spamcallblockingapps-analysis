.class public final synthetic Lcom/google/android/gms/internal/ads/zzdew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhdc:Lcom/google/android/gms/internal/ads/zzdex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzhdc:Lcom/google/android/gms/internal/ads/zzdex;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzhdc:Lcom/google/android/gms/internal/ads/zzdex;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdex;->zzato()Lcom/google/android/gms/internal/ads/zzdeu;

    move-result-object v0

    return-object v0
.end method
