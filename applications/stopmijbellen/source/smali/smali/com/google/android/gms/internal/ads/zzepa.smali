.class public final Lcom/google/android/gms/internal/ads/zzepa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhc;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeoz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzeoz;-><init>(Lcom/google/android/gms/internal/ads/zzbfk;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfaq;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzfap;)V

    return-void
.end method
