.class public final Lcom/facebook/ads/redexgen/X/Fn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/source/ads/AdPlaybackState$AdState;,
        Lcom/facebook/ads/redexgen/X/Fl;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/Fn;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:[J

.field public final A04:[Lcom/facebook/ads/redexgen/X/Fl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 32956
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fn;->A00()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fn;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Fn;-><init>([J)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fn;->A06:Lcom/facebook/ads/redexgen/X/Fn;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 4

    .line 32957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32958
    array-length v3, p1

    .line 32959
    .local p0, "count":I
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Fn;->A00:I

    .line 32960
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A03:[J

    .line 32961
    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/Fl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A04:[Lcom/facebook/ads/redexgen/X/Fl;

    .line 32962
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 32963
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fn;->A04:[Lcom/facebook/ads/redexgen/X/Fl;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fl;-><init>()V

    aput-object v0, v1, v2

    .line 32964
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32965
    .end local p1    # "i":I
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A01:J

    .line 32966
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A02:J

    .line 32967
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mUl0ad45"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wOnHxFom99khzfrw556TP2S7iTnXdaDI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F2b18zOkBdzPS6Rw7y0xeVy"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "72pK6LdfIPudsj2MuQDeavvJ5e506zcn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "15GKEV160LP26gLZR3RCLRKabW82Co"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "R2OsGPNc82TrpFQIYzL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mRreVGJS4QtDd4oKVCrkQCvx0ML"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uB3KfkVK117X08r1dhVcVjbfa1nPKP9i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(J)I
    .locals 9

    .line 32968
    const/4 v3, 0x0

    .line 32969
    .local p0, "index":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fn;->A03:[J

    array-length v0, v4

    if-ge v3, v0, :cond_3

    aget-wide v7, v4, v3

    const-wide/high16 v5, -0x8000000000000000L

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    const-string v1, "npAqm7bEBhy427JdaT1Ni0I7koiD7S"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "tFKaeO8lP01t1nMB1y4UInduFYw"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    aget-wide v1, v4, v3

    cmp-long v0, p1, v1

    if-gez v0, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Fn;->A04:[Lcom/facebook/ads/redexgen/X/Fl;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    const-string v1, "Q7qi9RXitykg8APizUDlkxccyVnHWt3u"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "mzuq9lDyRMMzUIbIxWm25ivrGAnK4SRi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v0, v4, v3

    .line 32970
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A02()Z

    move-result v0

    if-nez v0, :cond_3

    .line 32971
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fn;->A05:[Ljava/lang/String;

    const-string v1, "GUT9witaJOdRyBBc2tjzvJfymhz5uMqF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aget-object v0, v4, v3

    .line 32972
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A02()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 32973
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A03:[J

    array-length v0, v0

    if-ge v3, v0, :cond_4

    :goto_2
    return v3

    :cond_4
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public final A02(J)I
    .locals 7

    .line 32974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A03:[J

    array-length v0, v0

    add-int/lit8 v6, v0, -0x1

    .line 32975
    .local p0, "index":I
    :goto_0
    if-ltz v6, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fn;->A03:[J

    aget-wide v3, v5, v6

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    aget-wide v1, v5, v6

    cmp-long v0, v1, p1

    if-lez v0, :cond_1

    .line 32976
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 32977
    :cond_1
    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fn;->A04:[Lcom/facebook/ads/redexgen/X/Fl;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fl;->A02()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method
