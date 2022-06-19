.class public final Lcom/facebook/ads/redexgen/X/aw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/aw;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 68807
    new-instance v0, Lcom/facebook/ads/redexgen/X/aw;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aw;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/aw;->A01:Lcom/facebook/ads/redexgen/X/aw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/List;

    .line 68810
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GB;)V
    .locals 1

    .line 68811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68812
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/List;

    .line 68813
    return-void
.end method


# virtual methods
.method public final A63(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 68814
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aw;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A6S(I)J
    .locals 2

    .line 68815
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 68816
    const-wide/16 v0, 0x0

    return-wide v0

    .line 68817
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6T()I
    .locals 1

    .line 68818
    const/4 v0, 0x1

    return v0
.end method

.method public final A6n(J)I
    .locals 3

    .line 68819
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
