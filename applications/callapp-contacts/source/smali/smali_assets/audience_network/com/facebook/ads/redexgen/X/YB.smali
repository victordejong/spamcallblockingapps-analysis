.class public final Lcom/facebook/ads/redexgen/X/YB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9x;
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/YH;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/ID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/9x;

.field public final A03:Lcom/facebook/ads/redexgen/X/bi;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YB;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9x;Lcom/facebook/ads/redexgen/X/I0;)V
    .locals 1

    .line 59058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/9x;

    .line 59060
    new-instance v0, Lcom/facebook/ads/redexgen/X/bi;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/I0;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    .line 59061
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/YB;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 59062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v1

    .line 59063
    .local p0, "rendererClockPositionUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/bi;->A03(J)V

    .line 59064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v1

    .line 59065
    .local v1, "playbackParameters":Lcom/facebook/ads/redexgen/X/AL;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/bi;->ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 59067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/9x;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/9x;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    .line 59068
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/YB;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x67t
        0x7et
        0x66t
        0x7bt
        0x62t
        0x7et
        0x77t
        0x32t
        0x60t
        0x77t
        0x7ct
        0x76t
        0x77t
        0x60t
        0x77t
        0x60t
        0x32t
        0x7ft
        0x77t
        0x76t
        0x7bt
        0x73t
        0x32t
        0x71t
        0x7et
        0x7dt
        0x71t
        0x79t
        0x61t
        0x32t
        0x77t
        0x7ct
        0x73t
        0x70t
        0x7et
        0x77t
        0x76t
        0x3ct
    .end array-data
.end method

.method private A03()Z
    .locals 1

    .line 59069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    if-eqz v0, :cond_1

    .line 59070
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A7z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    .line 59071
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A89()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YH;->A7c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 59072
    :goto_0
    return v0

    .line 59073
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 59074
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YB;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59075
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YB;->A01()V

    .line 59076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v0

    return-wide v0

    .line 59077
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A73()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A05()V
    .locals 1

    .line 59078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A01()V

    .line 59079
    return-void
.end method

.method public final A06()V
    .locals 1

    .line 59080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A02()V

    .line 59081
    return-void
.end method

.method public final A07(J)V
    .locals 1

    .line 59082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bi;->A03(J)V

    .line 59083
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/YH;)V
    .locals 1

    .line 59084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    if-ne p1, v0, :cond_0

    .line 59085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    .line 59086
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    .line 59087
    :cond_0
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/YH;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 59088
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/YH;->A6k()Lcom/facebook/ads/redexgen/X/ID;

    move-result-object v1

    .line 59089
    .local p0, "rendererMediaClock":Lcom/facebook/ads/redexgen/X/ID;
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eq v1, v0, :cond_0

    .line 59090
    if-nez v0, :cond_1

    .line 59091
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    .line 59092
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YB;->A00:Lcom/facebook/ads/redexgen/X/YH;

    .line 59093
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/ID;->ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 59094
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YB;->A01()V

    .line 59095
    :cond_0
    return-void

    .line 59096
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A0;->A02(Ljava/lang/RuntimeException;)Lcom/facebook/ads/redexgen/X/A0;

    move-result-object v0

    throw v0
.end method

.method public final A70()Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 59097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eqz v0, :cond_0

    .line 59098
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    .line 59099
    :goto_0
    return-object v0

    .line 59100
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A70()Lcom/facebook/ads/redexgen/X/AL;

    move-result-object v0

    goto :goto_0
.end method

.method public final A73()J
    .locals 2

    .line 59101
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YB;->A03()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ID;->A73()J

    move-result-wide v0

    return-wide v0

    .line 59103
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bi;->A73()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;
    .locals 1

    .line 59104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A01:Lcom/facebook/ads/redexgen/X/ID;

    if-eqz v0, :cond_0

    .line 59105
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/ID;->ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    move-result-object p1

    .line 59106
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A03:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bi;->ADq(Lcom/facebook/ads/redexgen/X/AL;)Lcom/facebook/ads/redexgen/X/AL;

    .line 59107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YB;->A02:Lcom/facebook/ads/redexgen/X/9x;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/9x;->AB7(Lcom/facebook/ads/redexgen/X/AL;)V

    .line 59108
    return-object p1
.end method
