.class public final synthetic Lcom/google/android/gms/internal/ads/zzfmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfna;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfna;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfna;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfna;->zzc()Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v0

    return-object v0
.end method
