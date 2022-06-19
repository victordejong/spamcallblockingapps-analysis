.class public final Lcom/facebook/ads/redexgen/X/BT;
.super Lcom/facebook/ads/redexgen/X/b1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V
    .locals 2

    .line 22700
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/BT;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    .line 22701
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22702
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/b1;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)V

    .line 22703
    iput p3, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    .line 22704
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/BT;->A01:Ljava/lang/Object;

    .line 22705
    return-void
.end method


# virtual methods
.method public final A79()I
    .locals 1

    .line 22706
    const/4 v0, 0x0

    return v0
.end method
