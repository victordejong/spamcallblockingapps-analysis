.class public final Lcom/facebook/ads/redexgen/X/DY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EsInfo"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/DX;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/DX;",
            ">;[B)V"
        }
    .end annotation

    .line 26967
    .local p4, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26968
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    .line 26969
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    .line 26970
    if-nez p3, :cond_0

    .line 26971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 26972
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/DY;->A02:Ljava/util/List;

    .line 26973
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/DY;->A03:[B

    .line 26974
    return-void

    .line 26975
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
