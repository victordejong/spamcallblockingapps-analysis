.class public final Lcom/google/android/gms/internal/ads/zzbqn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfye:Lcom/google/android/gms/internal/ads/zzbql;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbql;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfye:Lcom/google/android/gms/internal/ads/zzbql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqn;->zzfye:Lcom/google/android/gms/internal/ads/zzbql;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbql;->zza(Lcom/google/android/gms/internal/ads/zzbql;)Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
