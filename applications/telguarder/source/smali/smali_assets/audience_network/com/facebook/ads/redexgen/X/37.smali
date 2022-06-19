.class public final Lcom/facebook/ads/redexgen/X/37;
.super Lcom/facebook/ads/redexgen/X/BT;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BT;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/37;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/37;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6888
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/GL;)V
    .locals 0

    .line 6889
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/37;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/37;)I
    .locals 7
    .param p1    # Lcom/facebook/ads/redexgen/X/37;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6890
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    const/4 v6, 0x1

    if-eq v1, v0, :cond_1

    .line 6891
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BV;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, -0x1

    goto :goto_0

    .line 6892
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/37;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/37;->A01:[Ljava/lang/String;

    const-string v1, "NPFaYjBRzIiNQirJdppAVbCW3nAN0"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const-string v1, "j"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    sub-long/2addr v2, v0

    .line 6893
    .local p0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 6894
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/37;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/37;->A00:J

    sub-long/2addr v2, v0

    .line 6895
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 6896
    const/4 v0, 0x0

    return v0

    .line 6897
    :cond_3
    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    :goto_1
    return v6

    :cond_4
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/37;J)J
    .locals 0

    .line 6898
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/37;->A00:J

    return-wide p1
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7eGwn2IYr5BHlOYbX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kNnh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nTmNv5qMshIKaSSxncu6r5GUMfaQveHR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "77AOzoGJP4chbOB1UL0xiTf22w3nJGvb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v2n06iHD25q6H3T0TrJRZBglLgz0B"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "znEUFh4fY4Pcyb9en5u3vIvWkBeGFNL8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "82BOHkDcGpIpRUiAAhflJX3370aMzJ5g"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/37;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6899
    check-cast p1, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/37;->A00(Lcom/facebook/ads/redexgen/X/37;)I

    move-result v0

    return v0
.end method
