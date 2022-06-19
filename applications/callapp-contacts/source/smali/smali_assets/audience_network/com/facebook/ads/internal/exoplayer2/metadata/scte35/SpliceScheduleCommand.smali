.class public final Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.super Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EH;,
        Lcom/facebook/ads/redexgen/X/EI;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 982
    invoke-static {}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/EG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EG;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 983
    invoke-direct {p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 985
    .local p0, "eventsSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 987
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/EI;->A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    .end local v3    # "i":I
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 990
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/ads/redexgen/X/EG;)V
    .locals 0

    .line 991
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/EI;",
            ">;)V"
        }
    .end annotation

    .line 992
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;>;"
    invoke-direct {p0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;-><init>()V

    .line 993
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    .line 994
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
    .locals 6

    .line 995
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 996
    .local p0, "spliceCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 997
    .local v5, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand$Event;>;"
    const/4 v3, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 998
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EI;->A03(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/EI;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    .line 999
    sget-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A01:[Ljava/lang/String;

    const-string v1, "d2FIwqylvh7iXAJnxNkaidieKhP3pOaB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "dE1dCXJBgr8GZeSYP1l3R34BwUsmGXNG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1000
    .end local v4    # "i":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "it7lS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DDMagQqfA6bdQNmcbGVHnHFBEyEyV1CV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yj1Kd0vDyL1u2mFRENQtUt5M23mLahBX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jtl9O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DzPPQsDVYOU8bWKOfUnj4CDUSnJ2WnBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jfx4iKnVrCrKgyd9K0RyokJ5bMLL728G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aEdAaZwrqc10hFo35SyTbuIH90C1HKve"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "av2CnTBgmmUyqozc6FxJU9F0Qf7BUN36"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1001
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1002
    .local p0, "eventsSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/EI;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/EI;->A06(Lcom/facebook/ads/redexgen/X/EI;Landroid/os/Parcel;)V

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    .end local p1    # "i":I
    :cond_0
    return-void
.end method
