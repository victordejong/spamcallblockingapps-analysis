.class public final synthetic Lcom/google/android/gms/internal/ads/zzayr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzect:Lcom/google/android/gms/internal/ads/zzayo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzect:Lcom/google/android/gms/internal/ads/zzayo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayr;->zzect:Lcom/google/android/gms/internal/ads/zzayo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayo;->zzxv()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
