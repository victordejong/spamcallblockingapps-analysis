.class public final Lcom/google/android/gms/internal/ads/zzdxr;
.super Lcom/google/android/gms/internal/ads/zzdxd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdxd<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final zzhyi:Lcom/google/android/gms/internal/ads/zzdxd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxd<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zzhyj:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdxr;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxr;->zzhyi:Lcom/google/android/gms/internal/ads/zzdxd;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxr;->zzhyj:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzt(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->zzhyj:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    return v0
.end method

.method public final zza([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->zzhyj:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final zzazh()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->zzhyj:[Ljava/lang/Object;

    return-object v0
.end method

.method public final zzazi()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzazj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxr;->size:I

    return v0
.end method

.method public final zzazl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
