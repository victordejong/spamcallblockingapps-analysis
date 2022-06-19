.class public final Lcom/google/android/gms/internal/ads/zzdxu;
.super Lcom/google/android/gms/internal/ads/zzdxd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdxd<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient offset:I

.field private final transient size:I

.field private final transient zzhyh:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxu;->zzhyh:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdxu;->offset:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxu;->size:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxu;->size:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzt(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxu;->zzhyh:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxu;->offset:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxu;->size:I

    return v0
.end method

.method public final zzazl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
