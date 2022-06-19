.class public final Lcom/google/android/gms/internal/ads/zzdfa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzdey;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfyi:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeqo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdkv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzfyi:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public static zzar(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzdfa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdkv;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdfa;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdfa;-><init>(Lcom/google/android/gms/internal/ads/zzeqo;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzdey;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdey;-><init>(Lcom/google/android/gms/internal/ads/zzdkv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfa;->zzfyi:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfa;->zzb(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzdey;

    move-result-object v0

    return-object v0
.end method
