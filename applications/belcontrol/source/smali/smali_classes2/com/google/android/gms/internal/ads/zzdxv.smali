.class public final Lcom/google/android/gms/internal/ads/zzdxv;
.super Lcom/google/android/gms/internal/ads/zzdxg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient zzhxs:Lcom/google/android/gms/internal/ads/zzdxd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxh<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxh;Lcom/google/android/gms/internal/ads/zzdxd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxh<",
            "TK;*>;",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxv;->zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxv;->zzhxs:Lcom/google/android/gms/internal/ads/zzdxd;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxv;->zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazg()Lcom/google/android/gms/internal/ads/zzdya;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxv;->zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazk()Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwy;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzazg()Lcom/google/android/gms/internal/ads/zzdya;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdya<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazk()Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwy;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdya;

    return-object v0
.end method

.method public final zzazk()Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxv;->zzhxs:Lcom/google/android/gms/internal/ads/zzdxd;

    return-object v0
.end method

.method public final zzazl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
