.class public final Lcom/google/android/gms/internal/ads/zzdkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgpr<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzdlw<",
        "Lcom/google/android/gms/internal/ads/zzdgf;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdke;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zza:Lcom/google/android/gms/internal/ads/zzdke;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
