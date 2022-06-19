.class public final Lcom/google/android/gms/internal/ads/zzdxt;
.super Lcom/google/android/gms/internal/ads/zzdxg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient size:I

.field private final transient zzhyh:[Ljava/lang/Object;

.field private final transient zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxh<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzhym:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxh;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxh<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhyh:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhym:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdxt;->size:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxt;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->size:I

    return p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxt;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhyh:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxt;->zzhyl:Lcom/google/android/gms/internal/ads/zzdxh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazg()Lcom/google/android/gms/internal/ads/zzdya;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxt;->size:I

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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwy;->zzazk()Lcom/google/android/gms/internal/ads/zzdxd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwy;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdya;

    return-object v0
.end method

.method public final zzazl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzazo()Lcom/google/android/gms/internal/ads/zzdxd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxs;-><init>(Lcom/google/android/gms/internal/ads/zzdxt;)V

    return-object v0
.end method
