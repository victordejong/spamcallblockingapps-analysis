.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 444
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Dr;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    .line 447
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 448
    const-class v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    aput-object v0, v1, v2

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 451
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<+Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    .line 454
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 455
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    goto :goto_0
.end method

.method public varargs constructor <init>([Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;)V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    .line 459
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public final A01(I)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 463
    if-ne p0, p1, :cond_0

    .line 464
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 466
    .end local p0    # "this":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_2
    check-cast p1, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    .line 468
    .local p0, "other":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    iget-object v1, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 470
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v4, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;->A00:[Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    array-length v3, v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    .line 472
    .local v0, "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 473
    .end local v0    # "entry":Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    return-void
.end method
