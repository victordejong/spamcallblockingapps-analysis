.class public final synthetic Lcom/google/android/gms/internal/ads/zzdfr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhdt:Lcom/google/android/gms/internal/ads/zzdfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfr;->zzhdt:Lcom/google/android/gms/internal/ads/zzdfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->zzhdt:Lcom/google/android/gms/internal/ads/zzdfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfo;->zzatr()Lcom/google/android/gms/internal/ads/zzdfp;

    move-result-object v0

    return-object v0
.end method
